Convert markdown to PDF using [MDPDF](https://github.com/BlueHatbRit/mdpdf).

```
npm install mdpdf -g

mdpdf src/cv.md "AntonLebedev-CV.pdf" --style src/assets/css/styles.css --gh-style

mdpdf src/minimal-cv.md "AntonLebedev-CV-brief.pdf" --style src/assets/css/minimal.css --gh-style --border-top=10 --border-bottom=10
```
