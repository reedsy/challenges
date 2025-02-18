<script setup lang="ts">
import BookList from '../components/BookList.vue'
</script>

<template>
  <main>
    <h1 class="title">Top Books of all time</h1>
    <BookList />
  </main>
</template>

<style lang="scss" scoped>
main {
  display: flex;
  flex-direction: column;
  align-items: center;

  .title {
    font-size: 36px;
    font-family: Arial, Helvetica, sans-serif;
    color: sienna;
    margin-bottom: 20px;
  }
}
</style>
