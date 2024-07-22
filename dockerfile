# Use the official Odoo image from the Docker Hub
FROM odoo:15.0

# Install any additional dependencies if required
USER root
RUN apt-get update && apt-get install -y \
    nano \
    vim

# Switch back to odoo user
USER odoo

# Expose the Odoo port
EXPOSE 8069

# Set the default command to run the Odoo server
CMD ["odoo", "-i", "base"]
