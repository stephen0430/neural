$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath ".venv")) {
    py -m venv .venv
}

& .\.venv\Scripts\python.exe -m pip install -r requirements-build.txt
& .\.venv\Scripts\jupyter.exe lite build --contents content --output-dir dist

Write-Host "Built dist/."
Write-Host "Direct notebook URL: /lab/index.html?path=Neural%20Network.ipynb"
