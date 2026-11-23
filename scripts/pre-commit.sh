#!/bin/sh
echo "Running flake8..."
python -m flake8 src/
if [ $? -ne 0 ]; then
  echo "Linting failed. Commit aborted."
  exit 1
fi
