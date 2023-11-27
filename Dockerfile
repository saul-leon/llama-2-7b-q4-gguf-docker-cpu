FROM python:3.9-bullseye

ADD . /project
WORKDIR /project

RUN wget "https://huggingface.co/TheBloke/Llama-2-7B-GGUF/resolve/main/llama-2-7b.Q4_K_M.gguf?download=true" -O llama-2-7b.Q4_K_M.gguf
RUN cp llama-2-7b.Q4_K_M.gguf /project/models/

RUN apt update
RUN apt install -y gcc clang clang-tools cmake
RUN pip3 install -r requirements.txt

EXPOSE 8081
EXPOSE 8080

RUN chmod +x /project/run-webservices.sh
ENTRYPOINT ["/project/run-webservices.sh"]