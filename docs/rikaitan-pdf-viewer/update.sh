# get latest github tag minus the "v" on front
pdfjs_version=$(curl "https://api.github.com/repos/mozilla/pdf.js/releases/latest" | jq -r '.tag_name' | sed 's/^v//')

wget "https://github.com/mozilla/pdf.js/releases/download/v$pdfjs_version/pdfjs-$pdfjs_version-dist.zip"
unzip -o "pdfjs-$pdfjs_version-dist.zip" "web/*" -d "."
unzip -o "pdfjs-$pdfjs_version-dist.zip" "build/*" -d "."
mv "./web/viewer.html" "./web/index.html"

cp "rikaitan-pdf-viewer.pdf" "./web/rikaitan-pdf-viewer.pdf"
sed -i -e 's/"compressed.tracemonkey-pldi-09.pdf"/"rikaitan-pdf-viewer.pdf"/g' ./web/viewer.mjs
rm ./web/compressed.tracemonkey-pldi-09.pdf

rm "pdfjs-$pdfjs_version-dist.zip"
