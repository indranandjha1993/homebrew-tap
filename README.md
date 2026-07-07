# Homebrew Tap

Homebrew formulae and casks for my open-source projects.

## Install

```bash
brew tap indranandjha1993/tap
brew install devvm
brew install --cask linkrouter
xattr -dr com.apple.quarantine /Applications/LinkRouter.app  # release is ad-hoc signed, not notarized
```

## Formulae

| Formula | Description |
|---------|-------------|
| `devvm` | Developer VM manager — 6 languages, 3 databases, Grafana observability, app hosting |

## Casks

| Cask | Description |
|------|-------------|
| `linkrouter` | [LinkRouter](https://github.com/indranandjha1993/LinkRouter) — tiny, fast browser router for macOS; routes every link to the browser you choose. Clear quarantine after install (see above) because releases are not notarized. |
