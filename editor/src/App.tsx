import { useState, useEffect, useRef } from 'react';
import axios from 'axios';
import FileExplorer from './FileExplorer';
import domToImage from 'dom-to-image';
// import Editor from './Editor';
import Preview from './Preview';
// import html2canvas from 'html2canvas';
import './index.css';

function App() {
  const [selectedFile, setSelectedFile] = useState<string | null>(null);
  const [code, setCode] = useState(''); // Code from the editor
  const [screenshotURL, setScreenshotURL] = useState(''); // URL for the screenshot
  const previewRef = useRef(null);

  useEffect(() => {
    // Fetch the screenshot URL using a POST request
    const fetchScreenshot = async () => {
      try {
        const response = await axios.post('https://curly-funicular-7vv6xr4ggqvfvgv-8000.app.github.dev/screenshot', null, { params: { url: 'https://www.webwalkerapp.com/' } });
        setScreenshotURL(response.data.url);
      } catch (error) {
        console.error('Error fetching screenshot:', error);
      }
    };

    fetchScreenshot();
  }, []);


  const handleCopyAsImage = () => {
    // Create a container for the side-by-side layout
    const captureContainer = document.createElement('div');
    captureContainer.style.display = 'flex';
    captureContainer.style.alignItems = 'center';
    captureContainer.style.justifyContent = 'space-around';

    // Create and style the HTML content element
    const htmlContent = document.createElement('div');
    htmlContent.innerHTML = "<html><body><h1>Hello World</h1></body></html>"
    htmlContent.style.width = '50%';
    htmlContent.style.height = '100%';
    // setbackgroundcolor
    htmlContent.style.backgroundColor = 'white';

    // Create and style the image element
    const imageElement = document.createElement('div');
    imageElement.className = 'screenshot-image';
    imageElement.style.width = '50%';
    imageElement.appendChild(document.createElement('img'));
    imageElement.firstChild.src = screenshotURL; // Your screenshot URL here
    // imageElement.src = screenshotURL; // Your screenshot URL here
    // imageElement.style.width = '50%';
    imageElement.firstChild.onload = () => {
      // Use dom-to-image to capture the container
      domToImage.toBlob(captureContainer)
        .then((blob) => {
          navigator.clipboard.write([new ClipboardItem({'image/png': blob})])
            .then(() => console.log('Image copied to clipboard!'))
            .catch((e) => console.error('Error copying image to clipboard:', e));
          // Clean up
          document.body.removeChild(captureContainer);
        })
        .catch((error) => {
          console.error('Something went wrong with rendering the image', error);
          document.body.removeChild(captureContainer);
        });
    };
    // Append the HTML content and image to the container
    captureContainer.appendChild(htmlContent);
    captureContainer.appendChild(imageElement);

    // Append the container to the body (could be off-screen or hidden with styles)
    document.body.appendChild(captureContainer);
  };

  return (
    <div className="App flex">
      <FileExplorer onSelectFile={setSelectedFile} />
      <div className='editor-preview-container' ref={previewRef}>
        {/* {selectedFile && <Editor filePath={selectedFile} setCode={setCode} />} */}
        <Preview code={"<html><body><h1>Hello World</h1></body></html>"} />
        <img src={screenshotURL} alt='Screenshot' />
      </div>
      <button onClick={handleCopyAsImage}>Copy as Image</button>
    </div>
  );
}

export default App;