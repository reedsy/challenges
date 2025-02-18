<script setup lang="ts">
import { RouterView } from 'vue-router'
</script>

<template>
  <main class="container">
    <RouterView />
  </main>
</template>

<style>
.container {
  max-width: 1200px;
  margin: 0 auto;
}
</style>
