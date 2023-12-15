import React, { useState } from 'react';
import FileExplorer from './FileExplorer';
import Editor from './Editor';
import './index.css';

function App() {
  const [selectedFile, setSelectedFile] = useState<string | null>(null);

  return (
    <div className="App flex">
      <FileExplorer onSelectFile={setSelectedFile} />
      {selectedFile && <Editor filePath={selectedFile} />}
    </div>
  );
}

export default App;