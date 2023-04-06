# Python Template

This is a template repository for a Python 3 project which follows the typical Python code structure while also integrating tools for complying with the PEP8 and PEP484 coding standards.

## Setup

To set up the project, clone this repository, cd into the repository and run the following command:

`./setup.sh`

## Usage

To run the project, run the following command:

`./run.sh`

And to test and lint the project run the test command:

`./test.sh`

## Features

- Everything is installed and run on a virtual environment
- Tox framework that runs the following tools for PEP8 and PEP484 compliance:
  - black: automatically formats the code to conform to PEP8
  - pytest: allows you to run unit and integration tests
  - pylint: warns you about non-compliant code
  - mypy: warns you about type hints
- Rich library for pretty outputs
  - The exampleproject enables rich tracebacks to ease debugging
- Visual Studio Code settings
  - Automatically formats your code when it is saved
  - A line is shown at the maximum line width
  - It is recommended that you install the autoDocstring plugin by Nils Werner for generating docstrings
- GitHub actions workflow for testing on pull request or push to main

## Considerations

The maximum line width for this project has been set to 120 characters, however you can change this limit by modifying the following files:

- .vscode/settings.json
- .pylintrc
- pyproject.toml

This project is also licensed under The Unlicense, so you are free to remove the LICENSE file and add a new one to your project.