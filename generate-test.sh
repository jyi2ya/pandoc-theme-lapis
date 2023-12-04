perl convert.pl typora-theme-lapis/lapis.css > lapis.css 
pandoc  --standalone --self-contained --toc  test/styles.md  -t html5  --css lapis.css -o output.html
