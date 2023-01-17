#!/bin/bash
if [ -d "exampleproject" ]; then
    echo -n "Please choose a name for your project: "
    read PROJECT_NAME
    find ./ -type f -exec sed -i "s/exampleproject/$PROJECT_NAME/g" {} \;
    mv exampleproject $PROJECT_NAME
fi
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt