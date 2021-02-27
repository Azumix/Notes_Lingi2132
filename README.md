# LINGI2132 - Languages and Translators

Notes for LINGI2132 - Languages & Translators course given at UCLouvain by Nicolas Laurent.

Course lectures can be found [on Youtube](https://www.youtube.com/channel/UCFmXbkS1GpMEikDZjhKRkKQ).

Link to the main framework used (at the moment) in the course: [Autumn](https://github.com/norswap/autumn).

The directory has the following structures :

```Python
project
│   README.md
│
└───Notes
│   │   compile.sh #bash script to compile the Tex files (Unix & Co.)
│   │   compile.bat #shell script to compile the Tex files (Windows)
│   │   LINGI2132_notes.pdf #End pdf file
│   │   main.tex   #main Tex file
│   │
│   └─── chapters #Contains all "big" course chapters
│   │       01_Introduction.tex
│   │       02_Compilation_Pipeline.tex
│   │       ...
│   │
│   └─── img #Contains all images organized by chapter
│   │       chap1/
│   │       chap2/
│   │       ...
│   │       generic/ #Generic images UCLouvain logo, etc.
│   │
│   └─── generic #Generic file for Tex projets
│   │       common_package.tex #Packages import
│   │       example.tex #example with citation
│   │       references.bib #references
│   │       title.tex #title page
```

In order to compile the project you must pass two parameters to the script :

- The name of the main Tex file without extension e.g : main
- The course label e.g LINGI2132

Which lead to the followings commands:

## Unix Based Systems

```bash
./compile.sh main LINGI2132
```

## Windows Systems

```shell
.\compile.bat main LINGI2132
```
