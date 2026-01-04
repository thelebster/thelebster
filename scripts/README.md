# PDF Build Scripts

Generate CV PDFs using [mdpdf](https://github.com/BlueHatbRit/mdpdf) via Docker.

## Usage

```bash
# Show available commands
make help

# Build Docker image
make build

# Generate full CV PDF
make full

# Generate brief CV PDF
make brief

# Generate both PDFs
make all

# Remove Docker image
make clean
```

Output files are saved to `dist/` directory.

## Automated Builds

PDFs are also built automatically via GitHub Actions on push to master and deployed to GitHub Pages:

- [AntonLebedev-CV.pdf](https://thelebster.github.io/thelebster/AntonLebedev-CV.pdf)
- [AntonLebedev-CV-brief.pdf](https://thelebster.github.io/thelebster/AntonLebedev-CV-brief.pdf)
