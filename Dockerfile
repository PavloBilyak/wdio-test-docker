FROM pavlobilyak/chrome-node:116

WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .
CMD ["pnpm", "run", "wdio"]
