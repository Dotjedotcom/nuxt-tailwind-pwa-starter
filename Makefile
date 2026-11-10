.PHONY: install dev build generate pwa-assets preview postinstall docker/build docker/run

install:
	@echo "Installing dependencies..."
	pnpm install

dev:
	@echo "Starting development server..."
	pnpm run dev

build:
	@echo "Building the project..."
	pnpm run build

generate:
	@echo "Building the project..."
	pnpm run generate

pwa-assets:
	@echo "Generating PWA assets..."
	pnpm run generate-pwa-assets

preview:
	@echo "Starting preview server..."
	pnpm run preview

postinstall:
	@echo "Running post-install tasks..."
	pnpm run postinstall

docker/build:
	@echo "Building Docker image..."
	docker build -t nuxt-tailwind-app .

docker/run:
	@echo "Running Docker container..."
	docker run --rm -it -p 3000:3000 --env-file .env.local --name nuxt-tailwind-app

docker/compose:
	@echo "Starting Docker Compose..."
	docker compose up --build

docker/compose/dev:
	@echo "Starting Docker Compose in development mode..."
	docker compose -f docker-compose.yml -f docker-compose.dev.yml up --build

dcp: docker/compose
dcd: docker/compose/dev
