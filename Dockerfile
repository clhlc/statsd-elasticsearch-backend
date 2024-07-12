FROM statsd/statsd
RUN npm install https://github.com/clhlc/statsd-elasticsearch-backend.git && npm install named-regexp
COPY config.js config.js
