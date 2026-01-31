# Setup Instructions

## 1. Create the GitHub Repository

Create a new repository named `homebrew-tap` on GitHub:
- Repository: `eunjae-lee/homebrew-tap`
- Description: "Homebrew tap for Flowcat"
- Public (must be public for Homebrew to access)

Via GitHub CLI:
```bash
gh repo create homebrew-tap --public --description "Homebrew tap for Flowcat"
```

## 2. Initialize and Push

```bash
cd /path/to/this/directory
git init
git add .
git commit -m "Initial commit: Add Flowcat cask"
git branch -M main
git remote add origin git@github.com:eunjae-lee/homebrew-tap.git
git push -u origin main
```

## 3. Test Installation

Once pushed:
```bash
brew tap eunjae-lee/tap
brew install --cask flowcat
```

## 4. Update the Cask (When Releasing New Versions)

If you want to add SHA256 verification:
1. Download the DMG
2. Calculate SHA: `shasum -a 256 Flowcat.dmg`
3. Update `sha256` in `Casks/flowcat.rb`
4. Commit and push

For auto-updates without SHA checking, keep `sha256 :no_check` (current setup).

## 5. Documentation

Add installation instructions to your main repo's README:

```markdown
## Installation

### Homebrew (macOS)

```bash
brew install --cask eunjae-lee/tap/flowcat
```

### Direct Download

Download the latest [Flowcat.dmg](https://github.com/eunjae-lee/flowcat/releases/download/mac-latest/Flowcat.dmg)
```

## Notes

- The tap automatically fetches from the `mac-latest` release
- Users will get updates when they run `brew upgrade`
- Homebrew will download and verify the DMG automatically
- The `zap` directive tells Homebrew what to clean up on uninstall
