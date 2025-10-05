<script setup lang="ts">
type Project = {
  title: string
  summary: string
  stack: string[]
  href: string
}

type Experience = {
  role: string
  company: string
  period: string
  description: string
}

type Link = {
  label: string
  href: string
}

const heroLinks: Link[] = [
  { label: 'Download Résumé', href: '#contact' },
  { label: 'Latest Project', href: '#projects' }
]

const projects: Project[] = [
  {
    title: 'Product Analytics Dashboard',
    summary: 'Full-stack observability platform with live charts, event replay, and custom reporting powered by Nuxt, Nitro, and Edge functions.',
    stack: ['Nuxt', 'TypeScript', 'Tailwind', 'Supabase'],
    href: '#'
  },
  {
    title: 'Headless Commerce Storefront',
    summary: 'Composable storefront with server-rendered product pages, cart persistence, and performant checkout integrations.',
    stack: ['Nuxt', 'Stripe', 'Shopify', 'Vitest'],
    href: '#'
  },
  {
    title: 'Geo Campaign Planner',
    summary: 'Campaign planning tool with Google Maps clustering, offline-ready caches, and PWA prompts for field teams.',
    stack: ['Maps API', 'PWA', 'Vite'],
    href: '#'
  }
]

const experiences: Experience[] = [
  {
    role: 'Senior Frontend Engineer',
    company: 'Freelance',
    period: '2021 — Present',
    description: 'Helping teams ship accessible, high-performing web apps, leading architecture decisions, and levelling up UI systems.'
  },
  {
    role: 'Lead UI Engineer',
    company: 'Tech Startup',
    period: '2018 — 2021',
    description: 'Directed the migration to a component-driven design system, cutting delivery time by 40% and boosting reliability.'
  }
]

const skillGroups: Array<{ title: string; items: string[] }> = [
  {
    title: 'Core',
    items: ['Nuxt 4', 'Vue 3', 'TypeScript', 'Nitro', 'Tailwind CSS']
  },
  {
    title: 'Tooling',
    items: ['Vite', 'Vitest', 'Playwright', 'ESLint', 'Storybook']
  },
  {
    title: 'Cloud & Data',
    items: ['Supabase', 'PlanetScale', 'Cloudflare', 'PostgreSQL', 'REST / GraphQL']
  }
]

const socials: Link[] = [
  { label: 'GitHub', href: 'https://github.com/your-handle' },
  { label: 'LinkedIn', href: 'https://linkedin.com/in/your-handle' },
  { label: 'Email', href: 'mailto:hello@example.com' }
]

const currentYear = new Date().getFullYear()
</script>

<template>
  <div class="flex min-h-screen flex-col">
    <header class="sticky top-0 z-50 bg-slate-950/70 backdrop-blur">
      <nav class="mx-auto flex w-full max-w-6xl items-center justify-between px-6 py-4">
        <NuxtLink
          to="/"
          class="text-lg font-semibold tracking-tight text-white"
        >
          devfolio
        </NuxtLink>
        <div class="hidden items-center gap-6 md:flex">
          <NuxtLink
            v-for="link in ['Projects', 'Experience', 'Skills', 'Contact']"
            :key="link"
            :to="`#${link.toLowerCase()}`"
            class="text-sm font-medium text-slate-300 transition hover:text-white"
          >
            {{ link }}
          </NuxtLink>
        </div>
        <div class="hidden md:block">
          <UButton
            to="#contact"
            variant="solid"
            color="primary"
            size="sm"
          >
            Let&apos;s talk
          </UButton>
        </div>
      </nav>
    </header>

    <main class="flex-1">
      <section
        id="hero"
        class="relative overflow-hidden bg-gradient-to-b from-slate-950 via-slate-950 to-slate-900"
      >
        <div class="mx-auto flex w-full max-w-5xl flex-col gap-12 px-6 py-24 md:flex-row md:items-center">
          <div class="md:w-3/5">
            <p class="text-sm font-semibold uppercase tracking-[0.3em] text-primary-400">
              Developer Portfolio Template
            </p>
            <h1 class="mt-6 text-4xl font-semibold tracking-tight text-white sm:text-5xl">
              Crafting human-focused web experiences with Nuxt, TypeScript, and design systems.
            </h1>
            <p class="mt-6 text-lg text-slate-300">
              Use this template as a launchpad for your own portfolio. Swap the content, plug in your projects, and deploy a polished, responsive site in minutes.
            </p>
            <div class="mt-10 flex flex-wrap gap-4">
              <UButton
                v-for="link in heroLinks"
                :key="link.label"
                :to="link.href"
                size="md"
                :variant="link.label === 'Download Résumé' ? 'solid' : 'ghost'"
              >
                {{ link.label }}
              </UButton>
            </div>
          </div>
          <div class="md:w-2/5">
            <div class="rounded-3xl border border-white/10 bg-white/5 p-8 shadow-2xl shadow-primary-500/20 backdrop-blur">
              <p class="text-sm font-medium uppercase tracking-[0.25em] text-slate-200/70">
                Highlights
              </p>
              <ul class="mt-6 space-y-4 text-sm text-slate-200">
                <li class="flex items-start gap-3">
                  <span class="mt-1 inline-flex h-2 w-2 shrink-0 rounded-full bg-emerald-400"></span>
                  SSR-first Nuxt app with Tailwind v4 & Nuxt UI pre-wired.
                </li>
                <li class="flex items-start gap-3">
                  <span class="mt-1 inline-flex h-2 w-2 shrink-0 rounded-full bg-emerald-400"></span>
                  Component-friendly sections for hero, projects, skills, and contact.
                </li>
                <li class="flex items-start gap-3">
                  <span class="mt-1 inline-flex h-2 w-2 shrink-0 rounded-full bg-emerald-400"></span>
                  PWA ready with Makefile + Docker helpers for deployment.
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>

      <section
        id="projects"
        class="bg-slate-950/95 py-24"
      >
        <div class="mx-auto w-full max-w-5xl px-6">
          <div class="flex flex-col gap-4 md:flex-row md:items-end md:justify-between">
            <div>
              <h2 class="text-3xl font-semibold tracking-tight text-white">Featured Projects</h2>
              <p class="mt-2 text-slate-300">
                Swap in your own case studies to show the depth of your work.
              </p>
            </div>
            <UButton
              to="#contact"
              variant="ghost"
              size="sm"
            >
              Request case study deck
            </UButton>
          </div>
          <div class="mt-12 grid gap-6 md:grid-cols-2">
            <article
              v-for="project in projects"
              :key="project.title"
              class="group flex h-full flex-col justify-between rounded-3xl border border-white/10 bg-white/5 p-8 transition duration-200 hover:border-primary-400/50 hover:bg-white/10"
            >
              <div>
                <h3 class="text-xl font-semibold text-white">
                  {{ project.title }}
                </h3>
                <p class="mt-3 text-sm text-slate-300">
                  {{ project.summary }}
                </p>
              </div>
              <div class="mt-6 flex flex-wrap items-center justify-between gap-4 text-xs text-slate-300">
                <div class="flex flex-wrap gap-2">
                  <span
                    v-for="tech in project.stack"
                    :key="tech"
                    class="rounded-full bg-slate-900/70 px-3 py-1 font-medium"
                  >
                    {{ tech }}
                  </span>
                </div>
                <NuxtLink
                  :to="project.href"
                  class="inline-flex items-center gap-1 font-semibold text-primary-300 transition group-hover:text-primary-200"
                >
                  View details
                  <span aria-hidden="true">→</span>
                </NuxtLink>
              </div>
            </article>
          </div>
        </div>
      </section>

      <section
        id="experience"
        class="bg-slate-950 py-24"
      >
        <div class="mx-auto w-full max-w-5xl px-6">
          <h2 class="text-3xl font-semibold tracking-tight text-white">Experience</h2>
          <div class="mt-12 space-y-10 border-l border-white/10 pl-6">
            <article
              v-for="experience in experiences"
              :key="experience.role"
              class="relative"
            >
              <span class="absolute -left-[14px] inline-flex h-3 w-3 rounded-full border-2 border-slate-950 bg-primary-400"></span>
              <p class="text-sm font-semibold uppercase tracking-[0.2em] text-primary-300">
                {{ experience.period }}
              </p>
              <h3 class="mt-2 text-xl font-semibold text-white">
                {{ experience.role }} · {{ experience.company }}
              </h3>
              <p class="mt-2 text-sm leading-relaxed text-slate-300">
                {{ experience.description }}
              </p>
            </article>
          </div>
        </div>
      </section>

      <section
        id="skills"
        class="bg-slate-950/95 py-24"
      >
        <div class="mx-auto w-full max-w-5xl px-6">
          <div class="flex flex-col gap-4 md:flex-row md:items-end md:justify-between">
            <div>
              <h2 class="text-3xl font-semibold tracking-tight text-white">Capabilities</h2>
              <p class="mt-2 text-slate-300">
                Highlight your strongest toolset and the value you bring to teams.
              </p>
            </div>
            <UButton
              to="#contact"
              variant="ghost"
              size="sm"
            >
              View availability
            </UButton>
          </div>
          <div class="mt-10 grid gap-6 md:grid-cols-3">
            <div
              v-for="skill in skillGroups"
              :key="skill.title"
              class="rounded-3xl border border-white/10 bg-white/5 p-6"
            >
              <h3 class="text-lg font-semibold text-white">
                {{ skill.title }}
              </h3>
              <ul class="mt-4 space-y-2 text-sm text-slate-300">
                <li v-for="item in skill.items" :key="item">
                  {{ item }}
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>

      <section
        id="contact"
        class="bg-gradient-to-b from-slate-950 to-slate-900 py-24"
      >
        <div class="mx-auto w-full max-w-4xl px-6 text-center">
          <h2 class="text-3xl font-semibold tracking-tight text-white">Let&apos;s build something</h2>
          <p class="mx-auto mt-4 max-w-2xl text-base text-slate-300">
            Ready to fork the template or need a hand tailoring it for your team? Drop a message and we can discuss timeline, scope, and impact.
          </p>
          <div class="mt-10 flex flex-wrap justify-center gap-4">
            <UButton
              v-for="link in socials"
              :key="link.label"
              :to="link.href"
              size="md"
              variant="soft"
              class="min-w-[160px] justify-center"
            >
              {{ link.label }}
            </UButton>
          </div>
        </div>
      </section>
    </main>

    <footer class="border-t border-white/10 bg-slate-950/80 py-6">
      <div class="mx-auto flex w-full max-w-5xl flex-col items-center justify-between gap-4 px-6 text-xs text-slate-400 sm:flex-row">
        <p>© {{ currentYear }} Your Name. Crafted with Nuxt Tailwind Portfolio.</p>
        <div class="flex items-center gap-3">
          <NuxtLink
            to="#hero"
            class="transition hover:text-white"
          >
            Back to top
          </NuxtLink>
          <span aria-hidden="true">•</span>
          <NuxtLink
            to="https://nuxt.com"
            target="_blank"
            class="transition hover:text-white"
          >
            Built on Nuxt
          </NuxtLink>
        </div>
      </div>
    </footer>
  </div>
</template>
