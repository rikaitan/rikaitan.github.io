# rikaitan-wiki

A website for [Rikaitan](https://rikaitan.github.io).

The source code of the website `rikaitan-wiki` is licensed as [GPL-3.0](./LICENSE-GPL-3.0).

The content (markdown `.md` files contained in `./docs/`) for the website `rikaitan-wiki` is licensed as [CC-BY-4.0](./LICENSE-CC-BY-4.0).

The source code of the `rikaitan-pdf-reader` function on the site is licensed as [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0.txt).

## How to run

Run `bash setup_venv.sh` to install the pinned Zensical release into `.venv`
and start a local preview.
Arguments are passed to `zensical serve`.
For example `bash setup_venv.sh --dev-addr 127.0.0.1:8001`.
The default preview address is `http://127.0.0.1:8000`.

To build the static site after setup:

```bash
.venv/bin/zensical build --clean
```

The output is written to `site/`.
The existing `mkdocs.yml` is supported by Zensical and uses the classic theme
to preserve the current layout and CSS.
