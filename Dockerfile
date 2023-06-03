
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y wget sudo curl

# Download and execute the install.sh script
RUN wget -q https://get.coollabs.io/coolify/install.sh -O install.sh && \
    chmod +x install.sh && \
    sudo bash ./install.sh -f

# Cleanup
RUN rm install.sh

# Add your additional instructions here, if needed

# Start the container process
CMD ["/bin/bash"]
