# Use a base image with Node.js pre-installed
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app source code to the working directory
COPY . .

# Expose a port (replace 3000 with your app's actual port)
EXPOSE 3000

# Set the command to run your Node.js app
CMD ["node", "app.js"]
