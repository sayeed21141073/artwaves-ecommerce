## Run Locally Using Docker

### Step 1: Clone the Repository

First, clone the repository from GitHub:

- git clone https://github.com/sayeed21141073/artwaves-ecommerce.git

Navigate to the project directory:

- cd artwaves-ecommerce

### Step 2: Build the Docker Image

To build the Docker image for the project, use the following command. This will use the Dockerfile present in the project root to create the image:

- docker build -t artwaves-ecommerce .

### Step 3: Run the Docker Container

Once the Docker image is built, you can run the container. The application is set to run on port 4001, so make sure that port is available on your system:

- docker run -p 4001:4001 artwaves-ecommerce

This command will map the container’s internal port 4001 to your local machine's port 4001. You can now access the app by opening your browser and navigating to:

- http://localhost:4001

## Custom Port Configuration
By default, React apps run on port 3000. However, since port 3000 is in use by Grafana on this machine, this project has been configured to use port 4001.

Changes made in the package.json file:

- "dev": "concurrently \"node src/auth/index.js\" \"react-scripts start\"",
- "start": "concurrently \"node src/auth/index.js\" \"cross-env PORT=4001 react-scripts start\""

### Step 4: Stopping the Docker Container
To stop the running Docker container, press CTRL+C in the terminal where the container is running, or run the following command to stop all running containers:
docker stop $(docker ps -q)

That's all. 
