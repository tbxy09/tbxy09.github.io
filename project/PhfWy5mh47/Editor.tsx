import React, { useEffect, useRef } from 'react';
import { EditorState } from '@codemirror/state';
import { EditorView, basicSetup } from '@codemirror/view';
import { javascript } from '@codemirror/lang-javascript';

interface EditorProps {
  filePath: string;
  content: string;
  onContentChange: (content: string) => void;
}

const Editor: React.FC<EditorProps> = ({ filePath, content, onContentChange }) => {
  const editorRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (!editorRef.current) return;

    const startState = EditorState.create({
      doc: content,
      extensions: [
        basicSetup,
        javascript(),
        EditorView.updateListener.of(update => {
          if (update.docChanged) {
            onContentChange(update.state.doc.toString());
          }
        })
      ]
    });

    const view = new EditorView({
      state: startState,
      parent: editorRef.current
    });

    return () => {
      view.destroy();
    };
  }, [content, onContentChange]);

  return <div ref={editorRef} />;
};

export default Editor;
