# Use the official Node.js image as the base image
FROM node:18
 
# Set the working directory inside the container
WORKDIR /var/www/Main-Sportifi-Dashboards
 
# Copy the package.json and package-lock.json files to the container
COPY package*.json ./
 
# Install the dependencies
RUN npm install --legacy-peer-deps
 
# Copy the rest of the application code to the container
COPY . .
 
# Build the Next.js application
RUN npm run build
 
# Expose port 3000
EXPOSE 3000
 
# Start the Next.js application
CMD ["npm", "start"]
