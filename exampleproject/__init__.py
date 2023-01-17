"""An example project"""

import rich
from rich.traceback import install


if __name__ == "__main__":
    install(show_locals=True)
    rich.print("Hello world!")
