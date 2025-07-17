# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json / yarn.lock
COPY package*.json ./
# or if you use yarn:
# COPY package.json yarn.lock ./

# Install dependencies
RUN npm install
# or: RUN yarn install

# Copy the rest of the app code
COPY . .

# Build the admin panel
RUN npm run build
# or: RUN yarn build

# Expose the default Strapi port
EXPOSE 1337

# Start the app
CMD ["npm", "start"]
# or: CMD ["yarn", "start"]

