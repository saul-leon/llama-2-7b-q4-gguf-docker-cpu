# Llama-2-7B (Docker CPU)

### Models
- [Llama-2-7B (GGUF)](https://huggingface.co/TheBloke/Llama-2-7B-GGUF)
- [Mistral-7B-v0.1 (GGUF)](https://huggingface.co/TheBloke/Mistral-7B-v0.1-GGUF)
- [Neural-Chat-7B-v3-2 (GGUF)](https://huggingface.co/TheBloke/neural-chat-7B-v3-2-GGUF/)

### Build
```sh
docker build -t llm-image .
```

### Deploy
```sh
docker run -d --name=llm-image-gguf-001 -p 8080:8080 -p 88:88 --restart unless-stopped llm-image:latest
```

### Usage
- WebServer Doc [(llama-cpp-python)](https://pypi.org/project/llama-cpp-python/): [http://localhost:8080/docs](http://localhost:8080/docs) 
- FrontEnd (It's on the house!): [http://localhost:88/](http://localhost:88/) 
