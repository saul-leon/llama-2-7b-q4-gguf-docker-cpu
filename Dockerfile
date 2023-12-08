FROM python:3.9-bullseye

ADD . /project
WORKDIR /project

# Uncomment the model you want to deploy
# RUN wget "https://huggingface.co/TheBloke/Llama-2-7B-GGUF/resolve/main/llama-2-7b.Q4_K_M.gguf?download=true" -O llm-model.gguf
# RUN wget "https://huggingface.co/TheBloke/Llama-2-7B-GGUF/resolve/main/llama-2-7b.Q5_K_M.gguf?download=true" -O llm-model.gguf
# RUN wget "https://huggingface.co/TheBloke/Mistral-7B-v0.1-GGUF/resolve/main/mistral-7b-v0.1.Q4_K_M.gguf?download=true" -O llm-model.gguf
RUN wget "https://huggingface.co/TheBloke/Mistral-7B-v0.1-GGUF/resolve/main/mistral-7b-v0.1.Q5_K_M.gguf?download=true" -O llm-model.gguf
# RUN wget "https://huggingface.co/TheBloke/neural-chat-7B-v3-2-GGUF/resolve/main/neural-chat-7b-v3-2.Q5_K_M.gguf?download=true" -O llm-model.gguf

RUN cp llm-model.gguf /project/models/

RUN apt update
RUN apt install -y gcc clang clang-tools cmake htop
RUN pip3 install -r requirements.txt

EXPOSE 88
EXPOSE 8080

RUN chmod +x /project/run-webservices.sh
ENTRYPOINT ["/project/run-webservices.sh"]