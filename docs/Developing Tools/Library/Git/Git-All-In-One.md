# Git usage
## Remote
### Add remote
```bash
git remote add origin
```
### Remove remote
```bash
git remote remove origin
```
### Rename remote
```bash
git remote rename origin new_origin
```
### Show remote
```bash
git remote -v
```
### Change remote url
```bash
git remote set-url remote-name remote-url
```

## .gitignore
### Add .gitignore
```bash
touch .gitignore
```
### make .gitignore work
```bash
git rm -rf --cached .
git add .
git commit -m "fixed untracked files"
```
