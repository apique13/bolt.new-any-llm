#!/bin/bash

# Start ollama-server
/bin/ollama serve &
pid=$!
# Wait the server is started before creating the context
sleep 10

# Create a qwen model with larger context
cd /usr/local/ollama
ollama create -f modelfile qwen2.5-coder-large:7b

# Wait until server stopped
wait $pid
echo "Specific process ($pid) finished!"


