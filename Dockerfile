#docker run -d  frontend 
#docker run -d -p 3001:3001 frontend


FROM node:lts-alpine3.23

WORKDIR /app
COPY package.json ./


RUN npm install

COPY . .
EXPOSE 3001
CMD ["npm", "start"]
