FROM node:20
WORKDIR /app
ENV PORT 8080
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "start"]