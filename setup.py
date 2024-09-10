from setuptools import setup, find_packages

setup(
    name="bchoc",
    version="0.1.0",
    py_modules=["bchoc"],
    install_requires=[],
    entry_points={
        "console_scripts": [
            "bchoc=bchoc:main", 
        ],
    },
)
