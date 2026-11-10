ARG NODE_VERSION=22

FROM node:${NODE_VERSION}-slim AS base

RUN corepack enable

ENV PORT=3000
ENV NODE_ENV=production

WORKDIR /app

# Build dependencies
FROM base AS deps

ENV NODE_ENV=development

COPY --link package.json pnpm-lock.yaml pnpm-workspace.yaml ./
RUN pnpm install --frozen-lockfile

# Build application
FROM deps AS build

COPY --link . .
RUN pnpm run build

# Production image
FROM base AS runtime

RUN groupadd -r nuxt && useradd -r -g nuxt nuxt

WORKDIR /app

COPY --from=build --chown=nuxt:nuxt /app/.output ./.output

USER nuxt

EXPOSE 3000

CMD [ "node", ".output/server/index.mjs" ]
