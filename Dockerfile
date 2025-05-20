FROM node:20

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Run the app
CMD ["node", "server.js"]