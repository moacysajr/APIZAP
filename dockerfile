# Use the official image as a base
FROM atendai/evolution-api:v2.1.0

# Set the working directory
WORKDIR /evolution

# Copy the .env file into the image
COPY .env .

# Expose the port the app runs on
EXPOSE 8080

# Create a volume for instances
VOLUME /evolution/instances

# Command to run the application
CMD ["node", "index.js"]