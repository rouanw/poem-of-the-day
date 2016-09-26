# Poem of the day

Fetches the current poem of the day from the [Poetry Foundation](https://www.poetryfoundation.org/) RSS feed.

## Dependencies

This script has been written for *nix systems.

- `rsstail`
- `html2text`
- `sed` and `wc` (but you probably have those already)

## Usage

Fetch and display poem of the day:

```sh
sh poemoftheday.sh
```

Only show a short snippet from the start of the poem:

```sh
sh poemoftheday.sh -s
```

Show a short snippet from a random point in the poem (may include author information and links):

```sh
sh poemoftheday.sh -s -r
```