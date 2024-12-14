FROM node:18-alpine

# Add a user for security purposes
RUN addgroup -g 1000 node && \
    adduser -u 1000 -G node -s /bin/sh -D node

WORKDIR /app
COPY package*.json ./
RUN npm install && npm cache clean --force
COPY . .

# Switch to the non-root user
USER node

EXPOSE 4000
CMD ["npm","run","start"]