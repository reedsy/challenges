<script lang="ts" setup>
defineProps({
  upvotes: Number,
  upvoted: Boolean,
})
</script>

<template>
  <div class="wrapper">
    <button class="upvote-btn" :class="{ upvoted }">
      {{ upvoted ? 'Upvoted' : 'Upvote' }}
    </button>
    <div class="upvotes">Upvoted {{ upvotes }} times</div>
  </div>
</template>

<style lang="scss" scoped>
.wrapper {
  display: flex;
  align-items: center;
}
.upvote-btn {
  background-color: sienna;
  color: white;
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 5px;
  cursor: pointer;
  transition: all 0.3s ease;
}

.upvotes {
  margin-left: 1rem;
}

.upvoted {
  border: 2px solid sienna;
  background-color: white;
  color: sienna;
  transition: all 0.3s ease;
}
</style>
