# homebrew-crules

Homebrew tap for crules - A tool for managing rules and configurations.

## 概要

このリポジトリは、crules を Homebrew でインストールするための tap です。

## インストール方法

以下のコマンドで tap を追加し、crules をインストールできます：

```bash
brew tap tirano-tirano/crules
brew install crules
```

## 使用方法

インストール後は、以下のコマンドで crules を使用できます：

```bash
crules --help
```

## 開発者向け情報

### ローカルでの開発

1. リポジトリのクローン

```bash
git clone https://github.com/tirano-tirano/homebrew-crules.git
cd homebrew-crules
```

2. 依存関係のインストール

```bash
brew bundle
```

### テスト

```bash
brew test crules
```

## ライセンス

このプロジェクトは MIT ライセンスの下で公開されています。詳細は[LICENSE](LICENSE)ファイルを参照してください。

## 貢献

バグ報告や機能要望は[Issues](https://github.com/tirano-tirano/homebrew-crules/issues)にお願いします。
プルリクエストも歓迎です。

## 作者

- [tirano-tirano](https://github.com/tirano-tirano)
