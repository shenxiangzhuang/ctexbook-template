# ctexbook-template
Chinese Latex Book Template


## VsCode

Build with latexmk(xelatex):

```json
{
    "latex-workshop.latex.tools": [
        {
            "name": "xelatexmk",
            "command": "latexmk",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-xelatex",
                "-outdir=%OUTDIR%",
                "%DOC%"
            ],
            "env": {}
        },
    ]
}
```
