FROM node:18-alpine AS base

# Install dependencies only when needed
FROM base AS deps
# Check https://github.com/nodejs/docker-node/tree/b4117f9333da4138b03a546ec926ef50a31506c3#nodealpine to understand why libc6-compat might be needed.
RUN apk add --no-cache libc6-compat
WORKDIR /app

# Install dependencies based on the preferred package manager
COPY package.json package-lock.json* ./
RUN npm i
  # if [ -f yarn.lock ]; then yarn --frozen-lockfile; \
  # if [ -f package-lock.json ]; then npm ci; \
  # elif [ -f pnpm-lock.yaml ]; then corepack enable pnpm && pnpm i --frozen-lockfile; \
  # else echo "Lockfile not found." && exit 1; \
  # fi


# Rebuild the source code only when needed
FROM base AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Next.js collects completely anonymous telemetry data about general usage.
# Learn more here: https://nextjs.org/telemetry
# Uncomment the following line in case you want to disable telemetry during the build.
# ENV NEXT_TELEMETRY_DISABLED=1

ARG NEXT_PUBLIC_SERVER_URI=https://api.rallycronos.com/
# Local
# ARG NEXT_PUBLIC_SERVER_URI=http://localhost:8080
ARG NEXT_PUBLIC_CLIENT_SECRET=g179NrxEhLKvZTNDAZy6muwpR8TQ7WPoWuIJr6tz
ARG NEXT_PUBLIC_SECURE_KEY=7mARe8nTS5CWefBEaHP6jzIRnDGM44NXiWuAvkNJ
ARG NEXT_PUBLIC_GA_ID=G-2SKBJB5HQ0


ENV NEXT_PUBLIC_SERVER_URI=$NEXT_PUBLIC_SERVER_URI
ENV NEXT_PUBLIC_CLIENT_SECRET=$NEXT_PUBLIC_CLIENT_SECRET
ENV NEXT_PUBLIC_SECURE_KEY=$NEXT_PUBLIC_SECURE_KEY
ENV NEXT_PUBLIC_GA_ID=$NEXT_PUBLIC_GA_ID

RUN npm run build
  # if [ -f yarn.lock ]; then yarn run build; \
  # elif [ -f package-lock.json ]; then npm run build; \
  # elif [ -f pnpm-lock.yaml ]; then corepack enable pnpm && pnpm run build; \
  # else echo "Lockfile not found." && exit 1; \
  # fi

# Production image, copy all the files and run next
FROM base AS runner
WORKDIR /app

ENV NODE_ENV=production
# ENV NEXT_PUBLIC_SERVER_URI=NEXT_PUBLIC_SERVER_URI

# Uncomment the following line in case you want to disable telemetry during runtime.
# ENV NEXT_TELEMETRY_DISABLED=1

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs

COPY --from=builder /app/public ./public

# Set the correct permission for prerender cache
RUN mkdir .next
RUN chown nextjs:nodejs .next

# Automatically leverage output traces to reduce image size
# https://nextjs.org/docs/advanced-features/output-file-tracing
COPY --from=builder --chown=nextjs:nodejs /app/.next/standalone ./
COPY --from=builder --chown=nextjs:nodejs /app/.next/static ./.next/static

USER nextjs

EXPOSE 3000

# ENV PORT=3000

# server.js is created by next build from the standalone output
# https://nextjs.org/docs/pages/api-reference/next-config-js/output
# ENV HOSTNAME="0.0.0.0"
# CMD ["node", "server.js"]