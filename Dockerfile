FROM public.ecr.aws/w1g5w5w1/node-alpine

ARG NODE_ENV=production
ARG PORT=8000

ENV PORT=${PORT}
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app
COPY . .
RUN npm install


EXPOSE ${PORT}
CMD [ "npm", "run", "start" ]
