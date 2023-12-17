import React, { useState, useEffect, useRef, Dispatch, SetStateAction } from 'react';
import { useCodeMirror } from '@uiw/react-codemirror';
import { javascript } from '@codemirror/lang-javascript';
import axios from 'axios';
import Preview from './Preview';

// interface EditorProps {
//   filePath: string;
// }
interface EditorProps {
  filePath: string;
  setCode: Dispatch<SetStateAction<string>>;
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

  const { state, setState, container, setContainer } = useCodeMirror({
    value: content,
    extensions: [javascript()],
    onChange: (value) => {
      setContent(value);
    }
  });
  const ref = (instance: HTMLDivElement | null) => {
    setContainer(instance || undefined);
  };

  return (
    <div className='editor-container'>
      <div ref={ref} />
      <Preview code={content} />
    </div>
  );
}

export default Editor;