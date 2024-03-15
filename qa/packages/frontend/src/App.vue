<script setup>
import { RouterView } from 'vue-router'
</script>

<template>
  <main>
    <RouterView />
  </main>
</template>

<style>
body {
  font-size: 16px;
  font-family: Helvetica, Arial, sans-serif;
  background: white;
  transition: background 0.25s ease;
  padding: 1rem;
}

@media (prefers-color-scheme: dark) {
  body {
    background: #19242C;
  }
}

main {
  max-width: 768px;
  margin: auto;
}
</style>
