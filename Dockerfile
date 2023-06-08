FROM wiretrustee/dashboard
WORKDIR /usr/share/nginx/html

ARG USE_AUTH0
ARG AUTH_AUTHORITY
ARG AUTH_CLIENT_ID
ARG AUTH_CLIENT_SECRET
ARG AUTH_SUPPORTED_SCOPES
ARG AUTH_AUDIENCE
ARG NETBIRD_MGMT_API_ENDPOINT
ARG NETBIRD_MGMT_GRPC_API_ENDPOINT
ARG NETBIRD_HOTJAR_TRACK_ID
ARG AUTH_REDIRECT_URI
ARG AUTH_SILENT_REDIRECT_URI
ARG NETBIRD_TOKEN_SOURCE


RUN sed -i "s#\$USE_AUTH0#$USE_AUTH0#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$AUTH_AUTHORITY#$AUTH_AUTHORITY#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$AUTH_CLIENT_ID#$AUTH_CLIENT_ID#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$AUTH_CLIENT_SECRET#$AUTH_CLIENT_SECRET#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$AUTH_SUPPORTED_SCOPES#$AUTH_SUPPORTED_SCOPES#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$AUTH_AUDIENCE#$AUTH_AUDIENCE#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$NETBIRD_MGMT_API_ENDPOINT#$NETBIRD_MGMT_API_ENDPOINT#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$NETBIRD_MGMT_GRPC_API_ENDPOINT#$NETBIRD_MGMT_GRPC_API_ENDPOINT#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$NETBIRD_HOTJAR_TRACK_ID#$NETBIRD_HOTJAR_TRACK_ID#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$AUTH_REDIRECT_URI#$AUTH_REDIRECT_URI#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$AUTH_SILENT_REDIRECT_URI#$AUTH_SILENT_REDIRECT_URI#g" $(find ./static/js/ -name main.*.js)
RUN sed -i "s#\$NETBIRD_TOKEN_SOURCE#$NETBIRD_TOKEN_SOURCE#g" $(find ./static/js/ -name main.*.js)
