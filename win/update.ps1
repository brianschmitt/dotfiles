choco upgrade all -y

npm update -g # npm outdated -g

pip freeze | ForEach-Object{$_.split('==')[0]} | ForEach-Object{pip install --upgrade $_}
