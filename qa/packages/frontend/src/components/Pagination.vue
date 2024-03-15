<script setup>
import {defineModel} from 'vue';
import ChevronLeft from '@/components/icons/ChevronLeft.vue';
import ChevronRight from '@/components/icons/ChevronRight.vue';

const pageNumber = defineModel();
</script>

<template>
  <div class="pager">
    <button
      @click="pageNumber--"
    >
      <ChevronLeft />
    </button>
    <span>
      Page {{ pageNumber }}
    </span>
    <button
      @click="pageNumber++"
    >
      <ChevronRight />
    </button>
  </div>
</template>

<style scoped>
.pager {
  display: flex;
  justify-content: center;
  font-size: 1.5rem;
}

button {
  background: none;
  border: none;
  cursor: pointer;
  font-size: inherit;
}
</style>
