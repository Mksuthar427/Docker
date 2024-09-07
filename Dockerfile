# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /myapp

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (optional, but recommended)
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
