# homebrew-mutecall

Le tap Homebrew de **MuteCall** : couper et rouvrir le micro et la caméra de Microsoft Teams depuis un raccourci
global et la barre de menus de macOS (macOS 14 ou plus récent, puce Apple).

## Installer

```sh
brew install --cask labutteronde/mutecall/mutecall
```

Les mises à jour se font ensuite depuis MuteCall : quand une nouvelle version existe, son panneau la propose avec
un bouton « Mettre à jour ». À la main : `brew upgrade --cask mutecall`.

## En cas d'erreur « App source '/Applications/MuteCall.app' is not there »

Homebrew croit MuteCall installé alors que l'app a été mise à la corbeille à la main : avant d'installer, il veut
retirer une app qui n'existe plus. Oubliez l'ancienne installation, puis réinstallez :

```sh
brew uninstall --cask --force mutecall && brew install --cask labutteronde/mutecall/mutecall
```

---

## Install (English)

```sh
brew install --cask labutteronde/mutecall/mutecall
```

If Homebrew says *"It seems the App source '/Applications/MuteCall.app' is not there"*, the app was deleted by
hand while Homebrew still lists it as installed. Run:

```sh
brew uninstall --cask --force mutecall && brew install --cask labutteronde/mutecall/mutecall
```
