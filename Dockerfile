FROM node:22

WORKDIR /app

COPY . /app

RUN npm install

CMD ["npx", "-y", "@supabase/mcp-server-supabase@latest", "--read-only", "--project-ref=<project-ref>"]
