# Dockerfile.frontend

# Node.js 16
FROM node:16

# Work folder
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy Source
COPY . .

# Build frontend
RUN npm run build

# Install static web server
RUN npm install -g serve

# Expose port for Fe (3000)
EXPOSE 3000

# Run frontend
CMD ["npm", "run", "dev"]
