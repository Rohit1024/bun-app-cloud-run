FROM oven/bun:distroless
WORKDIR /app
COPY . .
RUN bun install
 
ARG PORT
EXPOSE ${PORT:-8080}
 
CMD ["bun", "server.ts"]
