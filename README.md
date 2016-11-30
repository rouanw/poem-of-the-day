# Poem of the day

Fetches the current poem of the day from the [Poetry Foundation](https://www.poetryfoundation.org/) RSS feed.

## Installation

```sh
brew install rouanw/poem-of-the-day/poem-of-the-day
```

You'll need to have [Homebrew](http://brew.sh/) installed.

## Dependencies

This script has been written for *nix systems.

- `rsstail`
- `html2text`
- `sed` and `wc` (but you probably have those already)

## Usage

Fetch and display poem of the day:

```sh
poemoftheday
```

![Example poem output](http://rouanw.github.io/images/poems/poem.png)

Only show a short snippet from the start of the poem:

```sh
poemoftheday -s
```

![Example poem snippet output](http://rouanw.github.io/images/poems/snippet.png)

Show a short snippet from a random point in the poem (may include author information and links):

```sh
poemoftheday -s -r
```

![Example random poem snippet output](http://rouanw.github.io/images/poems/random_snippet.png)
