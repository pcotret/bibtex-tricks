The goal was to get a minimal working example with a few BibTeX/LateX tricks.

## Make an author bold, another underlined, etc.

Stackoverflow gave several solutions.

[This solution](https://www.sethajacobson.com/notes/2021/3/1/to-bold-and-italicize-specific-author-names-in-a-latex-generated-citation) seems to be the most simple even if it implies to modify the BST file. In this example, the reference BST is the [plain BST](http://ftp.cs.stanford.edu/pub/tex/bibtex/plain.bst).

## Different BibTeX keys

- [Creating multiple bibliographies in the same document - Overleaf, Online LaTeX Editor](https://www.overleaf.com/learn/latex/Questions/Creating_multiple_bibliographies_in_the_same_document)

- [Multibib package](https://ctan.gutenberg-asso.fr/macros/latex/contrib/multibib/multibib.pdf)

## Displaying a footer with git related informations

Mainly from  https://ritm.knu.ua/general/tracking-git-commits-info-in-latex-docs/

```bash
# inside <repo>
cp /usr/share/texlive/texmf-dist/doc/latex/gitinfo2/post-xxx-sample.txt .git/hooks/post-checkout
cp .git/hooks/post-checkout .git/hooks/post-commit
cp .git/hooks/post-checkout .git/hooks/post-merge
chmod +x .git/hooks/post-commit
chmod +x .git/hooks/post-merge
```
Just commit something to hook the trigger and it will create a `.git/gitHeadInfo.gin` file. Here is a LateX example to use it:
```tex
\documentclass{article}
\usepackage[mark]{gitinfo2}
\begin{document}
This document was compiled from a Git repository.
\end{document}
```

If you don't have the sample txt file, you will find it in the sources: https://ctan.org/pkg/gitinfo2.

### Making these hooks available for future repositories

Copy the hooks in: `/usr/share/git-core/templates/hooks`.