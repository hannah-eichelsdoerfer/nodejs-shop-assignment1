# Dockerfile for the front-end application 
# Node as base image
FROM node:12.14.0
# Set the working directory to /app for the front-end application
WORKDIR /app
# Copy package.json and package-lock.json to the container
COPY package*.json ./
# Install dependencies into container
RUN npm install
# Copy the entire application code into the container
COPY . .
# Expose port for access outside of container
ENV PORT 3000
# Expose port 80 to allow incoming traffic
EXPOSE $PORT
# Start the application
CMD ["npm", "start"]