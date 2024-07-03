FROM node:18.12.1

# Setup environment variables
ENV NODE_ENV=production

WORKDIR /usr/service

COPY package*.json ./

# Install required packages
RUN npm ci --only=production

# Copy in the remaining source files
COPY . .

# Configure Container Execution
EXPOSE 3001
CMD ["npm", "start"]
