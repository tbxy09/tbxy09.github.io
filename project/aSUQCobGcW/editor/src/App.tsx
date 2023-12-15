import React, { useState, useEffect, useRef } from 'react';
import FileExplorer from './FileExplorer';
import Editor from './Editor';
import Preview from './Preview';
import html2canvas from 'html2canvas';
import './index.css';

function App() {
  const [selectedFile, setSelectedFile] = useState<string | null>(null);
  const [code, setCode] = useState(''); // Code from the editor
  const [screenshotURL, setScreenshotURL] = useState(''); // URL for the screenshot
  const previewRef = useRef(null);

  useEffect(() => {
    // Fetch the screenshot URL from the backend
    // Placeholder URL fetching logic
    setScreenshotURL('http://localhost:8000/screenshot_url');
  }, []);

  const handleCopyAsImage = () => {
    html2canvas(previewRef.current).then((canvas) => {
      const img = canvas.toDataURL('image/png');
      const link = document.createElement('a');
      link.download = 'preview.png';
      link.href = img;
      link.click();
    });
  };

  return (
    <div className="App flex">
      <FileExplorer onSelectFile={setSelectedFile} />
      <div className='editor-preview-container' ref={previewRef}>
        {selectedFile && <Editor filePath={selectedFile} setCode={setCode} />}
        <Preview code={code} />
        <img src={screenshotURL} alt='Screenshot' />
        <button onClick={handleCopyAsImage}>Copy as Image</button>
      </div>
    </div>
  );
}

export default App;