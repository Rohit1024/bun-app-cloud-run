FROM oven/bun:alpine
WORKDIR /app
COPY . .
RUN bun install
 
ARG PORT
EXPOSE ${PORT:-8080}
 
CMD ["bun", "server.ts"]
