FROM node:22.21-alpine

WORKDIR /app

COPY .k8s /app/k8s
COPY package*.json ./
RUN npm ci --only=production

COPY . .

EXPOSE 3000

CMD ["npm", "start"]