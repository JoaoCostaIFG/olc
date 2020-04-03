# olc (Os Lusíadas Camões)

Read _Os Lusíadas_ by Luís Vaz de Camões from your terminal.  
This is a command line tool to read the original epic by Luís de Camões in your
terminal. The format and original implementation were taken from
[bontibon/kjv](https://github.com/bontibon/kjv).

## Usage

```
usage: ./olc [flags] [reference...]

  -l      list books
  -W      no line wrap
  -h      show help

  Reference types:
    <Book>
      Individual book
    <Book>:<Chapter>
      Individual chapter of a book
    <Book>:<Chapter>:<Verse>[,<Verse>]...
      Individual verse(s) of a specific chapter of a book
    <Book>:<Chapter>-<Chapter>
      Range of chapters in a book
    <Book>:<Chapter>:<Verse>-<Verse>
      Range of verses in a book chapter
    <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
      Range of chapters and verses in a book

    /<Search>
      All verses that match a pattern
    <Book>/<Search>
      All verses in a book that match a pattern
    <Book>:<Chapter>/<Search>
      All verses in a chapter of a book that match a pattern
```

## Build

**olc** can be built by cloning the repository and then running make:

```bash
git clone https://github.com/JoaoCostaIFG/olc.git
cd olc
make
```

You can also run `make install` if you wish to add this program to your PATH.

## The book

The text was originally taken from [_Project Gutenberg_](https://www.gutenberg.org/)
and I formatted it.  
You can find other formats of this book [**here**](https://www.gutenberg.org/ebooks/3333).

## License

Both the original script and the text are in the public domain.
