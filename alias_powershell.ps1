#memo
#このファイルがPower Shellを起動する都度に呼び出されます。

#手動でプロファイルファイルを実行する場合は、以下のコマンドを実行してください。
#. $PROFILE

#ファイルの場所
#echo $PROFILE

#$env:KIYO_WIN = "パスを設定" # 環境変数を設定
$alias_file = Join-Path $env:KIYO_WIN -ChildPath "Alias\aliases.txt"

Get-Content $alias_file | ForEach-Object {
    if (-not [string]::IsNullOrWhiteSpace($_) -and -not $_.StartsWith('#')) {
        $alias_data = $_.Split(':')
        #echo -Name $alias_data[0] -Value $alias_data[1]
        $alias_name = $alias_data[0];

        #すでに同録済みの場合は消す
        if (Test-Path "alias:$alias_name") {
            Remove-Item "alias:$alias_name"
        }
        #Aliasの登録
        Set-Alias -Name $alias_name -Value $alias_data[1]
    }
}

#Power Shell 特化
Set-Alias -Name c -Value clear

#https://mseeeen.msen.jp/windows-10-set-alias-automatically-in-powershell/
Set-Alias wget Invoke-WebRequest
#psexecの代わり
Set-Alias ic Invoke-Command

#Set-Aliasはパラメータを指定できない。
#対処方法
#https://qiita.com/ikanamazu/items/5f29e09b80849a4efa58
Remove-Alias -Name ci
Function ci() {
    git commit $args
}
Remove-Alias -Name co
Function co() {
    git checkout $args
}
Remove-Alias -Name br
Function br() {
    git branch $args
}
Remove-Alias -Name st
Function st() {
    git status $args
}

#exit   quit
Remove-Alias -Name e
Function e() {
    exit $args
}

Remove-Alias -Name q
Function q() {
    exit $args
}
