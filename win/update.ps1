winget upgrade --all --accept-package-agreements --accept-source-agreements

npm update -g npm
npm update -g # npm outdated -g

python.exe -m pip install --upgrade pip
pip freeze | ForEach-Object{$_.split('==')[0]} | ForEach-Object{pip install --upgrade $_}

Update-Module