# 課題
bashなどが自分用になっておらず手間が増えている


# ChatGPTへの依頼 開発
コマンドのAliasをまとめたいです。
対応するコンソールは、PowerShell、Windows Batch、Bashです。
あるファイル一箇所でAliasの一覧を持っておいて、それを各コンソールで使用できるようにしたいです。
教えてください。
aliases.txtにコメントをかけるようにしてください。
aliases.txtは、環境変数KIYO_WINが指定しているフォルダの中のフォルダAliasの中にあります。

↓ボツ
例えば、cls、clearは種類によってコマンドが異なります。
これを対応することはできますか？

# ChatGPTへの依頼 PowerShellのインストーラ
PowerShellであるファイル中に指定の一行がない場合は追加するコードを書いてください。
あるファイルとは、
$PROFILE にある"Microsoft.PowerShell_profile.ps1"です。

その一行の処理は、環境変数KIYO_WINに設定されているフォルダにあるAlias/alias_powershell.ps1を実行するコマンドの一行です。

# メモ
エラーが発生してもエラー内容を報告するとプログラムが治る。
・・・最初から動くものを出せよと思う。

# インストールは、



# 構造は、



# 開発時は、
C:\Users\kiyot\OneDrive\Windows\Alias
で開発してソース管理に戻す

# インストール方法法
## Windows Batch
deploy_windowsbatch.cmd
の実行は必要なく、いつものAutoRunのセットアップで組み込まれます。
## Power Shell
deploy_powershell.ps1
を実行します。
## Git Bash
deploy_gitbash.sh
を実行します。
deploy_bash.sh
# 更新方法
## Windows Batch
alias.txtを更新するとコマンドプロンプトの再起動で反映
## Power Shell

## Git Bash





