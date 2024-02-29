<script setup>
import {defineModel} from 'vue';

const value = defineModel();
</script>

<template>
  <label class="form-label">
    Sort
    <select
      v-model="value"
      class="form-select"
    >
      <option value="id">ID</option>
      <option value="title">Title</option>
      <option value="author">Author</option>
      <option value="rating">Rating</option>
    </select>
  </label>
</template>
