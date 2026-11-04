# YapYap for Homebrew

The [Homebrew](https://brew.sh) tap for [YapYap](https://yapyap.guita.org/),
an unofficial desktop client for WhatsApp Web. YapYap is not affiliated with
WhatsApp or Meta.

## Install

```sh
brew tap vascoguita/yapyap
brew trust vascoguita/yapyap
brew install --cask yapyap
```

Homebrew loads casks from a third-party tap only once you trust it. For the
beta, which gets each beta and each release, install `yapyap@beta` instead.

Only one of the two can be installed at a time. Both install the universal
build (Apple silicon and Intel), signed and notarized, from
[YapYap's GitHub releases](https://github.com/vascoguita/yapyap/releases).

## Updates

YapYap updates itself, so Homebrew leaves it alone during `brew upgrade`.
To update through Homebrew anyway, run `brew upgrade --greedy`.

To remove YapYap and its data (accounts, settings and logs):

```sh
brew uninstall --cask --zap yapyap
```

## How the casks change

YapYap's release workflow writes both casks from each release's checksums and
proposes them here as a pull request, which merges once this repository's
checks pass. See [CONTRIBUTING.md](CONTRIBUTING.md).

Problems with YapYap itself go to
[YapYap's issues](https://github.com/vascoguita/yapyap/issues).

## License

[MIT](LICENSE)
