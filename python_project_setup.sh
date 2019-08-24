#!/bin/bash
result=${PWD##*/}
git init
pyenv virtualenv 3.7.4 "venv-${PWD##*/}"
pyenv local "venv-${PWD##*/}"
touch .gitignore README.md LICENSE.md setup.py requirements.txt
mkdir $result && touch $result/__init__.py && touch $result/app.py
mkdir tests && touch tests/__init__.py && touch tests/test_basic.py
echo ".vscode/" >> .gitignore
echo ".pyhton-version" >> .gitignore
echo "__pycache__/" >> .gitignore
git add -A
git commit -m "Project Setup"
git remote add origin https://github.com/ryanleonbutler/$result
git remote -v
git push origin master
rm python_project_setup.py
