#!/bin/bash
echo -n "Please choose a name for your project: "
read PROJECT_NAME
find ./ -type f -exec sed -i "s/exampleproject/$PROJECT_NAME/g" {} \;
mv exampleproject $PROJECT_NAME
echo "# $PROJECT_NAME" > README.md
head -1 setup.sh > /tmp/setup.sh
tail -3 setup.sh >> /tmp/setup.sh
rm LICENSE setup.sh
cp /tmp/setup.sh .
chmod +x setup.sh
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt