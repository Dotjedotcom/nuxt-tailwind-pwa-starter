# Nuxt Tailwind Portfolio

A developer-focused portfolio starter built with Nuxt 4, Tailwind CSS v4, and Nuxt UI. It ships with SSR by default, PWA tooling, Docker helpers, and a composable UI layer that keeps styling consistent across the site.

## Features

- **Nuxt 4 + Nitro** for hybrid rendering, file-based routing, and first-class TypeScript support
- **Tailwind CSS v4** with the new `@tailwindcss/postcss` and Vite plugin pipeline
- **Nuxt UI components** to accelerate layout, navigation, and theming
- **PWA-ready** via `vite-plugin-pwa` with asset generation helpers
- **Google Maps Marker Clusterer** dependency pre-installed for geospatial sections
- **Docker & Makefile workflow** to streamline local development and deployment

## Using This Template

1. Click **Use this template → Create a new repository** on GitHub (or `degit` the repo if you prefer a CLI workflow).
2. Update `package.json` fields (`name`, `description`, repository info) to match your project.
3. Replace the placeholder content inside `app/pages/index.vue` with your biography, projects, and contact links.
4. Adjust global styles or tokens in `app/assets/css/main.css` and `app.config.ts` to align with your branding.
5. Run `pnpm install` and `pnpm run dev` to verify everything before deploying.

## Project Structure

```
app/
  assets/css/main.css   # Global Tailwind + Nuxt UI imports
  pages/index.vue       # Landing page layout
public/                 # Static assets served as-is
nuxt.config.ts          # Nuxt + module configuration
Makefile                # Convenience targets for package scripts & Docker
```

## Getting Started

### Prerequisites

- Node.js 26 (LTS)
- pnpm 12+ (`corepack enable`)

### Installation

```bash
pnpm install
```

### Development

```bash
pnpm run dev
# or
make dev
```

The dev server defaults to `http://localhost:3000`. Use `--host` to expose it on your network if needed.

### Production Build

```bash
pnpm run build
pnpm run preview   # preview the production build locally
```

### PWA Assets

```bash
pnpm run generate-pwa-assets
# or
make pwa-assets
```

Generates icons and splash screens as configured in `pwa-assets.config.ts`.

### Docker Workflow

```bash
make docker/build      # Build the production image
make docker/run        # Run the container on port 3000
make docker/compose    # Compose stack
make docker/compose/dev
```

## Styling & Customization

- Global styles live in `app/assets/css/main.css`. Tailwind layers and Nuxt UI tokens can be extended there.
- Component-level styles should use Tailwind utility classes; add custom classes via the `@apply` directive if needed.
- Override Nuxt UI theme tokens in `app.config.ts` to align colors, fonts, and radii with your brand.

## Testing & Linting

- ESLint is pre-configured via `@nuxt/eslint`. Run `npx eslint .` to lint the codebase.
- Add Vitest or Nuxt test utilities as needed; the dependencies are already installed.

## Deployment

Nuxt supports many hosting options (Vercel, Netlify, Cloudflare Pages, Node servers, etc.). After running `pnpm run build`, deploy the `.output` directory or the generated Node server as per the [Nuxt deployment guide](https://nuxt.com/docs/getting-started/deployment).

---

Happy building! Fork, customize, and share your Nuxt-powered portfolio with the world.
