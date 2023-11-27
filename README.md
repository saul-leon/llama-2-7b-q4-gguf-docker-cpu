# Llama-2-7B (Docker CPU)

Let's run [Llama-2-7B (GGUF 4-bits quantized)](https://huggingface.co/TheBloke/Llama-2-7B-GGUF)

### Requeriments
  - Disk: 4.08 GB
  - RAM: 6.58 GB

### Build
```sh
docker build -t llama-2-7b-gguf .
```

### Deploy
```sh
docker run -d --name=llama-2-7b-gguf-001 -p 8080:8080 -p 8081:8081 --restart unless-stopped llama-2-7b-gguf:latest
```

### Usage
- WebServer Doc [(llama-cpp-python)](https://pypi.org/project/llama-cpp-python/): [http://localhost:8080/docs](http://localhost:8080/docs) 
- FrontEnd (It's on the house!): [http://localhost:8081/](http://localhost:8081/) 
