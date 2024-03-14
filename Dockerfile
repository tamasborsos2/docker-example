# Step 1: Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY ./my-first-react-app .

# Step 4: Install any needed packages specified in package.json
RUN npm install

# Step 5: Build the app for production with Vite
RUN npm run build

# Step 6 (Optional): If you're serving your app with Node.js, you can skip this step.
# For serving static files, you might use a server like serve.
RUN npm install -g serve
CMD ["serve", "-s", "dist", "-l", "3000"]

# Step 6: Define environment variable


# Step 7: Run the app when the container launches
# CMD ["node", "server.js"]

