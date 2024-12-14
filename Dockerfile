FROM node:18-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install && npm cache clean --force
COPY . .

# Switch to the non-root user
USER node

EXPOSE 4000
CMD ["npm","run","start"]