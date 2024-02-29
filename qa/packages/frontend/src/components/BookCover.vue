<script setup>
import {defineProps, ref} from 'vue';
import {fetchImage} from '@/utils/fetch-image.js';

const props = defineProps(['book']);
const backgroundImage = ref(`url(${props.book.cover})`);
const to = {name: 'book', params: {id: props.book.id}};

const largeImageUrl = props.book.cover?.replace(/\._.+_/, '');
fetchLargeImage();

async function fetchLargeImage() {
  if (!largeImageUrl) return;
  await fetchImage(largeImageUrl);
  setTimeout(() => backgroundImage.value = `url(${largeImageUrl})`);
}
</script>

<template>
  <RouterLink
    :to="to"
    class="book"
    :style="{
      backgroundImage,
    }"
  />
</template>

<style scoped>
.book {
  display: block;
  aspect-ratio: 1 / 1.6;
  width: 100%;
  height: auto;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  border-radius: 0.5rem;
  cursor: pointer;
}
</style>
