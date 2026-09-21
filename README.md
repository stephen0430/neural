# Neural Network Lab - JupyterLite

This directory contains a browser-only JupyterLite site with `Neural Network.ipynb` preloaded.

## Build

```powershell
py -m venv .venv
.\.venv\Scripts\python -m pip install -r requirements-build.txt
.\.venv\Scripts\jupyter lite build --contents content --output-dir dist
```

Serve `dist` over HTTP for local testing:

```powershell
py -m http.server 8000 --directory dist
```

Open `http://localhost:8000/lab/index.html?path=Neural%20Network.ipynb`.

## Deploy

- GitHub Pages: push this source directory to a GitHub repository, enable Pages with
  `GitHub Actions` as the source, and run the included workflow.
- Vercel: import this source directory; `vercel.json` builds and publishes `dist`.
- Netlify: import this source directory; `netlify.toml` builds and publishes `dist`.
- Static upload: upload the contents of the prebuilt static ZIP to any HTTPS host.

Append `/lab/index.html?path=Neural%20Network.ipynb` to the deployed site URL to
open the notebook directly.
