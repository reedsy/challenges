<script setup lang="ts">
import { onMounted } from 'vue'
import { book, getBooks } from '../stores/getBooks'
import { useRoute } from 'vue-router'
import UpvoteButton from '@/components/UpvoteButton.vue'

onMounted(() => {
  const route = useRoute()
  const slug = Array.isArray(route.params.slug) ? route.params.slug[0] : route.params.slug
  getBooks(slug)
})

const goBack = () => {
  window.history.back()
}
</script>

<template>
  <article>
    <div>
      <button class="back-btn" @click="goBack">Back to List</button>
    </div>

    <div class="book-detail">
      <h1 class="title">{{ book?.title }}</h1>
      <figure>
        <img :src="book?.cover" alt="Book cover" class="book-cover" />
      </figure>
      <UpvoteButton :upvotes="book?.upvotes" :upvoted="book?.upvoted" />
      <p><strong>Author:</strong> {{ book?.author }}</p>
      <p><strong>Rating:</strong> {{ book?.rating }}</p>
      <p><strong>Synopsis:</strong> {{ book?.synopsis }}</p>
    </div>
  </article>
</template>

<style lang="scss" scoped>
.title {
  font-size: 36px;
  font-family: Arial, Helvetica, sans-serif;
  color: sienna;
  margin-bottom: 20px;
}

figure {
  display: flex;
  justify-content: center;

  img {
    max-width: 300px;
    height: auto;
  }
}

.book-detail {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.book-cover {
  width: 100%;
  height: auto;
  margin-bottom: 20px;
}

.back-btn {
  background-color: sienna;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: darkred;
  }
}
</style>
