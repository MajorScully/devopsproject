FROM node:19.7.0-alpine
WORKDIR /labone
ENV NODE_ENV=production
RUN chown node:node /labone
USER node
COPY --chown=node:node . .
RUN npm install
EXPOSE 3000
CMD ["node", "src/index.js"]
