# pandoc-theme-lapis

from [https://github.com/YiNNx/typora-theme-lapis](https://github.com/YiNNx/typora-theme-lapis)

## requirements

* pandoc
* wkhtmltopdf

## usage

```sh
pandoc \
    --standalone --self-contained --toc \
    main.md \
    -t html5 \
    --css lapis.css -o output.html
```

or

```sh
pandoc \
    --standalone --self-contained --toc \
    main.md \
    --pdf-engine wkhtmltopdf -t html5 \
    --css lapis.css -o output.pdf
```
