FROM node:18-alpine
WORKDIR /app
COPY package*.json ./clea
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node", "src/index.js"]