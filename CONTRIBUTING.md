# Contributing

The casks in `Casks/` are generated. YapYap's release workflow writes them
from each release's `SHA256SUMS` with
[`scripts/src/release/homebrew.ts`](https://github.com/vascoguita/yapyap/blob/master/scripts/src/release/homebrew.ts)
and opens a pull request here: a stable release updates `yapyap` and
`yapyap@beta`, a beta only `yapyap@beta`. To change what a cask says, change
that generator in [YapYap](https://github.com/vascoguita/yapyap), where it is
tested; an edit made only here is overwritten by the next release.

Changes to this repository itself, such as its workflows or documents, follow
YapYap's rules:

- Every change goes through a pull request; `master` takes no direct pushes.
- Commits are [signed](https://docs.github.com/authentication/managing-commit-signature-verification)
  and follow [Conventional Commits](https://www.conventionalcommits.org/), and
  so does the pull request title.
- Pull requests merge with a merge commit once the required checks pass.

## Checks

| Check                   | What it does                                                                                                       |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------ |
| `CI result`             | `brew style` and `brew audit --strict` on both casks, Prettier on everything else, and a real install of each cask |
| `Conventional PR title` | The pull request title follows Conventional Commits                                                                |
| `Analyze (actions)`     | CodeQL on the workflows                                                                                            |
| SonarQube Cloud         | Its quality gate                                                                                                   |
| OpenSSF Scorecard       | Rates the repository on every push to `master` and weekly                                                          |

The install job runs on macOS: it installs each cask, which checks the
download against its SHA-256, verifies the app's code signature and Apple's
notarization, and then uninstalls it with `--zap`.

To run the formatting check locally (Node.js and pnpm versions are pinned in
`.nvmrc` and `package.json`):

```sh
pnpm install
pnpm exec prettier --check .
```

[Renovate](https://docs.renovatebot.com/), run by YapYap's workflow, keeps the
pinned actions and tools up to date. Releases happen in YapYap, never here.

## OpenSSF Scorecard checks below 10

Scorecard (`scorecard.yml`) rates the repository on every push to `master`
and weekly. These checks stay below 10 on purpose or for now, as in YapYap,
and their alerts stay open rather than being dismissed:

- **Code-Review:** YapYap has one maintainer, so pull requests are not
  approved by a second person. Every change still goes through a pull
  request with the required checks. A required approving review would
  block all merging until there is a second maintainer.
- **Branch-Protection:** the `master` ruleset requires a pull request,
  signed commits and the required checks, and forbids force pushes and
  deletion. It does not require approvals, dismiss stale reviews or code
  owner review, for the reason above.
- **Fuzzing:** the repository holds two generated casks and its workflows,
  no code that parses input, so there is nothing to fuzz. YapYap's own
  property tests cover the generator.
- **CII-Best-Practices:** the OpenSSF Best Practices badge is YapYap's; this
  tap has none of its own.
- **Maintained:** the repository is younger than 90 days.

## Repository settings

Merge commits only (squash and rebase disabled), auto-merge allowed, head
branches deleted after merge, secret scanning with push protection, and
private vulnerability reporting. Issues are off: they go to YapYap. The
`master` ruleset lives in [`.github/rulesets/master.json`](.github/rulesets/master.json);
after changing it, apply it:

```sh
id=$(gh api repos/vascoguita/homebrew-yapyap/rulesets --jq '.[] | select(.name=="master") | .id')
gh api -X PUT "repos/vascoguita/homebrew-yapyap/rulesets/$id" --input .github/rulesets/master.json
```
