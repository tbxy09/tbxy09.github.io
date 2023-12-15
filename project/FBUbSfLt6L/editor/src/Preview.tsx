import React from 'react';

const Preview = ({ code }) => {
  return (
    <iframe
      title="preview"
      style={{
        width: '100%',
        height: '100%',
        border: 'none'
      }}
      srcDoc={code}
    />
  );
};

export default Preview;