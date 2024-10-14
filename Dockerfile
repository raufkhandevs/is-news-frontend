# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the React app files into the container
COPY . .

# Build the React app for production
RUN npm run build

# Expose the port
EXPOSE 3000

CMD ["npm", "start"]
