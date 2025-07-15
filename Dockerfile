FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package.json package-lock.json* ./

# Install dependencies with legacy peer deps flag
RUN npm ci --legacy-peer-deps

# Copy the rest of the application
COPY . .

# Set environment variables
ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1
ENV SUPABASE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBqc29mZWZnZGJycW10Y2J2d2NvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI1OTEyNzAsImV4cCI6MjA2ODE2NzI3MH0.m_9rj6-T3f2Dr9OljoGYDA5W7nDF4vDAlyxyjTfVB0A
ENV PAYLOAD_SECRET=your-secret-key-change-this
ENV DATABASE_URI=postgres://postgres:cLdBe7jfkhAlOhvx@pjsofefgdbrqmtcbvwco.supabase.co:5432/postgres

# Expose the port
EXPOSE 3000

# Build and start the application at runtime
CMD ["sh", "-c", "npm run build && npm start"]
