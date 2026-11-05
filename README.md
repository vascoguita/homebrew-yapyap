# YapYap for Homebrew

[![CI](https://github.com/vascoguita/homebrew-yapyap/actions/workflows/ci.yml/badge.svg)](https://github.com/vascoguita/homebrew-yapyap/actions/workflows/ci.yml)
[![CodeQL](https://github.com/vascoguita/homebrew-yapyap/actions/workflows/codeql.yml/badge.svg)](https://github.com/vascoguita/homebrew-yapyap/actions/workflows/codeql.yml)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/vascoguita/homebrew-yapyap/badge)](https://scorecard.dev/viewer/?uri=github.com/vascoguita/homebrew-yapyap)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

[![Quality Gate](https://sonarcloud.io/api/project_badges/measure?project=vascoguita_homebrew-yapyap&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=vascoguita_homebrew-yapyap)
[![Reliability](https://sonarcloud.io/api/project_badges/measure?project=vascoguita_homebrew-yapyap&metric=reliability_rating)](https://sonarcloud.io/summary/new_code?id=vascoguita_homebrew-yapyap)
[![Security](https://sonarcloud.io/api/project_badges/measure?project=vascoguita_homebrew-yapyap&metric=security_rating)](https://sonarcloud.io/summary/new_code?id=vascoguita_homebrew-yapyap)
[![Maintainability](https://sonarcloud.io/api/project_badges/measure?project=vascoguita_homebrew-yapyap&metric=sqale_rating)](https://sonarcloud.io/summary/new_code?id=vascoguita_homebrew-yapyap)
[![Duplicated lines](https://sonarcloud.io/api/project_badges/measure?project=vascoguita_homebrew-yapyap&metric=duplicated_lines_density)](https://sonarcloud.io/summary/new_code?id=vascoguita_homebrew-yapyap)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=vascoguita_homebrew-yapyap&metric=bugs)](https://sonarcloud.io/summary/new_code?id=vascoguita_homebrew-yapyap)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=vascoguita_homebrew-yapyap&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=vascoguita_homebrew-yapyap)
[![Code smells](https://sonarcloud.io/api/project_badges/measure?project=vascoguita_homebrew-yapyap&metric=code_smells)](https://sonarcloud.io/summary/new_code?id=vascoguita_homebrew-yapyap)

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
