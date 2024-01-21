FROM node:19
WORKDIR /app
COPY package.json /app
RUN if [ "$NODE_ENV" = "production" ]; \
    then npm install --only=production; \
    else npm install; \
    fi
COPY . /app
ENV PORT 3000
EXPOSE $PORT
CMD ["node","index.js"]