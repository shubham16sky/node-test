FROM node

COPY . /app

WORKDIR /app

RUN npm install 

EXPOSE 5555

CMD ["node" , "main.js"]
