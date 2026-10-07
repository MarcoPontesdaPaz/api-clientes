# instala uma imagem do node 22
# necessário apra executar o projeto
FROM node:22-alpine

#cria uma pasta dentro do container
# usada para guardar os arquivos do projeto
WORKDIR /app

# copia os arquivos package.*.json do projeto
# para dentro do /app do container
COPY package*.json ./

# Instalando as bibliotecas do projeto
RUN npm ci --omit=dev

#copiar os demais arquivos (códigos)
# do projeto para dentro do cntainer
COPY . .

# definindo a porta par a aplicação
EXPOSE 3000

# comando do Node para rodas o projeto
CMD ["npm", "start"]