<script setup lang="ts">
import { onMounted } from 'vue'
import BookListItem from './BookListItem.vue'
import { getBooks, books } from '../stores/getBooks'
onMounted(getBooks)
</script>

<template>
  <section>
    <template v-for="(book, index) in books" :key="index + 1">
      <BookListItem
        :number="index + 1"
        :author="book.author"
        :title="book.title"
        :upvotes="book.upvotes"
        :slug="book.slug"
        :upvoted="book.upvoted"
        :rating="book.rating"
        :cover="book.cover"
        :synopsis="book.synopsis"
        :getBooks="getBooks"
      />
    </template>
  </section>
</template>
