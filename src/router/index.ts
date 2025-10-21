import { createRouter, createWebHistory } from 'vue-router'

// routes (exemples)
const routes = [
  {
    path: '/',
    name: 'Home',
    component: () => import('../views/homeView.vue') // lazy-loaded
  },
  // page 404
  {
    path: '/:pathMatch(.*)*',
    name: 'NotFound',
    component: () => import('../views/notFoundView.vue')
  }
]

const router = createRouter({
  history: createWebHistory(), // pour Vite. Avec base: import.meta.env.BASE_URL si besoin
  routes
})

export default router