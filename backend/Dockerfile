# backend/Dockerfile

# Node.js version 16
FROM node:16

# work folder
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy src backend
COPY . .

# Expose port for backend 
EXPOSE 8080

# Run backend
CMD ["npm", "start"]
