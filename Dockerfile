FROM node

COPY . /app

WORKDIR /app

EXPOSE 5555

CMD ["node" , "main.js"]
