FROM jlesage/baseimage-gui:debian-11

# Install max-home-automation.
COPY sources.list.d/* /etc/apt/sources.list.d/
RUN add-pkg libpython3.9-dev max-home-automation-4.9

# Set the name of the application.
RUN set-cont-env APP_NAME "Maxh"

# Copy the start script.
COPY startapp.sh /startapp.sh

# Expose ports
EXPOSE 5800 5900

# Create volume
VOLUME /config
