import React, { useState, useEffect } from 'react';
import { Controlled as CodeMirror } from 'react-codemirror2';
import axios from 'axios';
import 'codemirror/lib/codemirror.css';
import 'codemirror/theme/material.css';

function App() {
  const [owner, setOwner] = useState('');
  const [repo, setRepo] = useState('');
  const [repoData, setRepoData] = useState([]);
  const [fileContent, setFileContent] = useState('');
  const [currentPath, setCurrentPath] = useState('');

  const fetchRepoData = () => {
    axios.get(`http://localhost:8000/repo/${owner}/${repo}`)
      .then(response => setRepoData(response.data))
      .catch(error => console.error(error));
  };

  const loadFile = (path) => {
    setCurrentPath(path);
    axios.get(`http://localhost:8000/repo/${owner}/${repo}/${path}`)
      .then(response => setFileContent(atob(response.data.content)))
      .catch(error => console.error(error));
  };

  return (
    <div className="App p-4">
      <div className="mb-4">
        <input className="border p-2 mr-2" type="text" placeholder="Owner" onChange={e => setOwner(e.target.value)} />
        <input className="border p-2 mr-2" type="text" placeholder="Repository" onChange={e => setRepo(e.target.value)} />
        <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" onClick={fetchRepoData}>
          Load Repository
        </button>
      </div>
      <div className="flex">
        <div className="sidebar w-1/4 p-4 border-r">
          {repoData.map((item, index) => (
            <p key={index} className="cursor-pointer" onClick={() => loadFile(item.path)}>{item.name}</p>
          ))}
        </div>
        <div className="editor w-3/4 p-4">
          <CodeMirror
            value={fileContent}
            options={{ mode: 'xml', theme: 'material', lineNumbers: true }}
            onBeforeChange={(editor, data, value) => { setFileContent(value); }}
          />
        </div>
      </div>
    </div>
  );
}

export default App;
