#EXPOSE 3000
FROM node:18
 
# Set the working directory inside the container
WORKDIR /var/www/neoCanvasBackend
 
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
 
# Install the dependencies
RUN npm install
RUN npm install amqplib

# Copy the rest of the application code to the working directory
COPY . .
 
# Expose the port the server will run on
EXPOSE 8081
 
# Command to start the server
CMD ["node", "src/index.js"]
 
