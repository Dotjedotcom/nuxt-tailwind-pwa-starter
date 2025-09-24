.PHONY: install dev build generate pwa-assets preview postinstall docker/build docker/run

install:
	@echo "Installing dependencies..."
	npm install

dev:
	@echo "Starting development server..."
	npm run dev

build:
	@echo "Building the project..."
	npm run build

generate:
	@echo "Building the project..."
	npm run generate

pwa-assets:
	@echo "Generating PWA assets..."
	npm run generate-pwa-assets

preview:
	@echo "Starting preview server..."
	npm run preview

postinstall:
	@echo "Running post-install tasks..."
	npm run postinstall

docker/build:
	@echo "Building Docker image..."
	docker build -t nuxt-tailwind-app .

docker/run:
	@echo "Running Docker container..."
	docker run --rm -it -p 3000:3000 --env-file .env.local --name nuxt-tailwind-app