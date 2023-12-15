import React, { useState, useEffect } from 'react';
import axios from 'axios';

interface FileExplorerProps {
  onSelectFile: (filePath: string) => void;
}

const FileExplorer: React.FC<FileExplorerProps> = ({ onSelectFile }) => {
  const [files, setFiles] = useState<string[]>([]);

  useEffect(() => {
    const fetchFiles = async () => {
      try {
        const response = await axios.get('http://localhost:8000/repo/owner/repo'); // Replace with your actual API endpoint
        setFiles(response.data); // Assuming the response data is an array of file names
      } catch (error) {
        console.error('Error fetching repository data:', error);
      }
    };

    fetchFiles();
  }, []);

  return (
    <div className="file-explorer">
      {files.map(file => (
        <p key={file} onClick={() => onSelectFile(file)}>{file}</p>
      ))}
    </div>
  );
}

export default FileExplorer;