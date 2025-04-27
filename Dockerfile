# Usa uma imagem base do Python
FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY . .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Comando padrão para rodar a aplicação
CMD ["python", "app/main.py"]
