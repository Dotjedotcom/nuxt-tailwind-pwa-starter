# syntax = docker/dockerfile:1

ARG NODE_VERSION=22.19.0

FROM node:${NODE_VERSION}-slim as base

ARG PORT=3000

WORKDIR /src

# Build
FROM base as build

COPY --link package.json package-lock.json ./
RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	python3 \
	make \
	g++ \
	libcairo2-dev \
	libpango1.0-dev \
	libjpeg-dev \
	libgif-dev \
	librsvg2-dev && \
	rm -rf /var/lib/apt/lists/* && \
	npm install

COPY --link . .

RUN npm run build

# Convert logo.png to logo.svg
RUN node convert-logo-to-svg.js || echo "SVG conversion failed, check logo.png exists."

# Run
FROM base

ENV PORT=$PORT
ENV NODE_ENV=production

COPY --from=build /src/.output /src/.output
# Optional, only needed if you rely on unbundled dependencies
# COPY --from=build /src/node_modules /src/node_modules

CMD [ "node", ".output/server/index.mjs" ]
