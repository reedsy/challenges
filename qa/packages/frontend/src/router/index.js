import { createRouter, createWebHistory } from 'vue-router';
import BookshelfView from '../views/BookshelfView.vue';
import BookView from '@/views/BookView.vue';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'bookshelf',
      component: BookshelfView,
    },
    {
      path: '/books/:id',
      name: 'book',
      component: BookView,
    }
  ]
})

export default router
