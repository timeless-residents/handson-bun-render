FROM oven/bun:1

WORKDIR /app

COPY package.json .
COPY bun.lockb .
COPY index.ts .
COPY public public/

RUN bun install

EXPOSE 3000

CMD ["bun", "run", "index.ts"]