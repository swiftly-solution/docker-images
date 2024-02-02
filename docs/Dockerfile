FROM node:lts as base
ENV FORCE_COLOR=0
RUN corepack enable
WORKDIR /opt/docusaurus

FROM base as dev
WORKDIR /opt/docusaurus
EXPOSE 3000
CMD [ -d "node_modules" ] && yarn start || yarn install && yarn start --host 0.0.0.0

FROM base as prod
WORKDIR /opt/docusaurus
COPY . /opt/docusaurus/
RUN yarn install --immutable
RUN yarn build

FROM prod as serve
EXPOSE 3000
CMD ["yarn", "serve", "--host 0.0.0.0", "--no-open"]

FROM caddy:2-alpine as caddy
COPY --from=prod /opt/docusaurus/Caddyfile /etc/caddy/Caddyfile
COPY --from=prod /opt/docusaurus/build /var/docusaurus