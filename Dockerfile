# Use lightweight base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Expose application port
EXPOSE 3000

# Start application
CMD ["node", "app.js"]