# VocabWise's Blog

This is the blog of VocabWise. We are documenting our learning process when building our product.

## How to Use This Repository

1. Install the dependencies, if you haven't install uv, please install uv.

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

2. Install the dependencies

```bash
uv sync
```

3. Run the server locally  to preview the blog.

```bash
uv run zsh localpreview.sh
```

4. Release the blog.

```bash
uv run zsh autopush.sh -m "your commit message"
```

## Must Read before Starting Contributing the First Blog
- Every time you push the blog, you should new a branch, and then push the branch to the remote repository.
- If you just want to preview the draft and don't want to release the blog, you can put your draft in the `docs/blog/Posts/drafts` folder.
- If you want to release the blog, you should move your draft to the `docs/blog/Posts/published` folder.
- *Important*: For name the file, you should follow the format `XXXX-{short-title}.md`, for example, `0000-example.md`. please use lower case and `-` to separate the words, for example, `0000-example.md` is correct, but `0000 Example.md` is incorrect. `0000-example_test.md` is also correct, but `0000-example test.md` and `0000-example-test` are incorrect.
- *Important*: For the slug, you should follow the format like `abc-bac-xxx-xyz`, please use lower case and `-` to separate the words, for example, `ee-french` is correct, but `ee french` and `EE-French` are incorrect.

## Other Tricks
1. If you want to cite a source, you should following the instructions:
    - Add bibtex file in the `docs/assets/references.bib` folder.
    - Add the reference in the markdown file.

2.If you want to add new author or update the author information, you should modify the `docs/blog/.authors.yml` file.