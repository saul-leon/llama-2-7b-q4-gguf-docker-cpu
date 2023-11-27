#!/bin/sh

# Secondary Process (Runs in background, Port: 8081)
python3 /project/frontend/app.py  > /dev/null 2>&1 & 

# Main Process (Keeps container running, Port: 8080)
python3 -m llama_cpp.server --host 0.0.0.0 --port 8080 --model /project/models/llama-2-7b.Q4_K_M.gguf --n_ctx 1024 --last_n_tokens_size 64
