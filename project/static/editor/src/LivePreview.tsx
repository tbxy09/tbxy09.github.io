import React, { useState } from 'react';
import './LivePreview.css'; // Importing CSS for styling

const LivePreview = ({ htmlContent }) => {
    const [content, setContent] = useState(htmlContent);

    return (
        <div className="live-preview" dangerouslySetInnerHTML={{ __html: content }} />
    );
};

export default LivePreview;
