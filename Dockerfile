FROM node:21.0.0

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . ./

# Expose the port the app runs on
EXPOSE 5202

# Command to run the application
CMD ["node", "index.js"]
