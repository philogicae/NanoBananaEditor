FROM node:24-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3535
CMD ["npx", "serve", "/app/dist", "-l", "3535"]