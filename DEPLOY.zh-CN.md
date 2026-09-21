# Neural Network JupyterLite 部署说明

项目已预置 `content/Neural Network.ipynb`，运行时使用浏览器内的
`Python (Pyodide)`，不需要服务器端 Python。

## 直接访问地址

部署完成后，把下面路径追加到站点域名：

```text
/lab/index.html?path=Neural%20Network.ipynb
```

例如站点地址为 `https://example.net`，则 Notebook 直达地址是：

```text
https://example.net/lab/index.html?path=Neural%20Network.ipynb
```

## GitHub Pages

1. 将源码包解压后推送到 GitHub 仓库的 `main` 分支。
2. 在仓库 `Settings > Pages` 中把 Source 设为 `GitHub Actions`。
3. 打开 `Actions`，运行 `Deploy JupyterLite to GitHub Pages`；以后每次推送会自动部署。
4. 工作流结束后，在 Pages 页面复制公开 HTTPS 地址，并追加上面的直达路径。

## Vercel

1. 将源码包推送到 Git 仓库。
2. 在 Vercel 导入该仓库；项目中的 `vercel.json` 已配置构建命令和 `dist` 输出目录。
3. 部署完成后，给 Vercel 域名追加上面的直达路径。

## Netlify

可选择以下任一种方式：

- 导入源码仓库；`netlify.toml` 已配置构建命令、发布目录和响应头。
- 解压静态包，将解压后的整个目录拖入 Netlify Drop。

## 本地重新构建

在源码目录运行：

```powershell
.\build.ps1
```

构建输出位于 `dist/`。本地预览命令：

```powershell
py -m http.server 8000 --directory dist
```

然后打开：

```text
http://localhost:8000/lab/index.html?path=Neural%20Network.ipynb
```
