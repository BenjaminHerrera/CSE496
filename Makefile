# CONSTANTS
PYTHON=python3
SRC_DIR=src
APP_BASE_NAME=./bchoc
TEST_DIR=tests

# Default target
all: run

# Run the main Python script
run:
	./dist/$(APP_BASE_NAME)

# Install dependencies
install:
	pip install -r requirements.txt

# Clean up .pyc files and __pycache__ directories
clean:
	find . -type f -name '*.pyc' -delete
	find . -type d -name '__pycache__' -delete

# Create a distribution package
dist:
	pyinstaller --onefile $(APP_BASE_NAME).py --distpath .
	rm -f $(APP_BASE_NAME).spec
	rm -rf build

# PHONY targets to avoid conflicts with files named 'run', 'test', etc.
.PHONY: all run test install clean dist