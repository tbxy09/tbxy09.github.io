import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Controlled as ControlledEditor } from 'react-codemirror2';
import 'codemirror/lib/codemirror.css';
import 'codemirror/theme/material.css';
import Preview from './Preview';

interface EditorProps {
  filePath: string;
}

const Editor: React.FC<EditorProps> = ({ filePath }) => {
  const [content, setContent] = useState('');
  const [cache, setCache] = useState<{ [key: string]: string }>({});

  useEffect(() => {
    const fetchFileContent = async () => {
      if (cache[filePath]) {
        setContent(cache[filePath]);
        return;
      }

      try {
        const response = await axios.get(`http://localhost:8000/repo/owner/repo/${filePath}`);
        const fetchedContent = atob(response.data.content);
        setContent(fetchedContent);
        setCache(prev => ({ ...prev, [filePath]: fetchedContent }));
      } catch (error) {
        console.error('Error fetching file content:', error);
      }
    };

    if (filePath) {
      fetchFileContent();
    }
  }, [filePath, cache]);

  return (
    <div className='editor-container'>
      <ControlledEditor
        value={content}
        options={{
          mode: 'javascript',
          lineNumbers: true,
          theme: 'material'
        }}
        onBeforeChange={(editor, data, value) => {
          setContent(value);
        }}
      />
      <Preview code={content} />
    </div>
  );
}

export default Editor;