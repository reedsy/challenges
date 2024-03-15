<script setup>
import {ref} from 'vue';
import {useBookStore} from '@/stores/books.js';
import Loader from '@/components/Loader.vue';
import {useRoute} from 'vue-router'
import BookCover from '@/components/BookCover.vue';

const book = ref(null);
const store = useBookStore();
const route = useRoute();

fetchBook();

async function fetchBook() {
  book.value = await store.fetchBook(route.params.id);
}
</script>

<template>
  <div class="book">
    <Loader v-if="!book" />
    <section v-else>
      <BookCover
        :book="book"
        class="book-cover"
      />
      <div>
        <h1>
          {{ book.title }}
        </h1>
        <h2>
          <em>
            {{ book.author }}
          </em>
        </h2>
        <div>
          User rating: {{ book.rating }} / 5
        </div>
      </div>
    </section>
  </div>
</template>

<style scoped>
section {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
}

.book-cover {
  flex: 0 1 300px;
}
</style>
