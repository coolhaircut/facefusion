#!/usr/bin/env bash

echo "Activating venv for facefusion"
cd "$(dirname $0)"
. venv/bin/activate

export GRADIO_SERVER_NAME="0.0.0.0"
export GRADIO_SERVER_PORT=8081

echo "Starting facefusion gradio instance"
python3 facefusion.py run
