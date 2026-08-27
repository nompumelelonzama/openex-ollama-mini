FROM ollama/ollama:latest

RUN (ollama serve &) && sleep 5 && ollama pull qwen2.5:0.5b

ENV OLLAMA_HOST=0.0.0.0:11434
EXPOSE 11434

ENTRYPOINT ["ollama", "serve"]
