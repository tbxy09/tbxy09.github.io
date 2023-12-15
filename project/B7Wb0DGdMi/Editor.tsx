import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Controlled as ControlledEditor } from 'react-codemirror2';
import 'codemirror/lib/codemirror.css';
import 'codemirror/theme/material.css';

interface EditorProps {
  filePath: string;
}

const Editor: React.FC<EditorProps> = ({ filePath }) => {
  const [content, setContent] = useState('');
  const [cache, setCache] = useState<{ [key: string]: string }>({});

  useEffect(() => {
    const fetchFileContent = async () => {
      // Check if the content is in the cache
      if (cache[filePath]) {
        setContent(cache[filePath]);
        return;
      }

      try {
        const response = await axios.get(`http://localhost:8000/repo/owner/repo/${filePath}`); // Replace with your API endpoint
        const fetchedContent = atob(response.data.content); // Assuming the file content is base64 encoded
        setContent(fetchedContent);

        // Update the cache with the new content
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
  );
}

export default Editor;