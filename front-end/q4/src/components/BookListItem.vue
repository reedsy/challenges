<script setup lang="ts">
import { defineProps } from 'vue'
import { RouterLink } from 'vue-router'
import UpvoteButton from './UpvoteButton.vue'
defineProps<{
  number: number
  title: string
  rating: string
  author: string
  cover: string
  slug: string
  synopsis: string
  upvotes: number
  upvoted: boolean
  getBooks: (slug: string) => Promise<void>
}>()
</script>

<template>
  <div class="book-item">
    <div class="left-side">
      <div class="header">
        <div class="info">
          <RouterLink :to="`/${slug}`">
            <h3 @click="getBooks(slug)" class="title">{{ number }}. {{ title }}</h3>
          </RouterLink>
          <div class="rating">({{ rating }}/10)</div>
        </div>
        <div class="author">{{ author }}</div>
      </div>

      <p>{{ synopsis }}</p>

      <div class="footer">
        <UpvoteButton :upvotes="upvotes" :upvoted="upvoted" />
      </div>
    </div>

    <div class="right-side">
      <RouterLink :to="`/${slug}`">
        <figure @click="getBooks(slug)">
          <img class="cover" :src="cover" :alt="title" />
        </figure>
      </RouterLink>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.book-item {
  display: flex;

  .left-side {
    .header {
      display: flex;
      align-items: flex-start;
      flex-direction: column;

      .info {
        width: 100%;
        display: flex;
        align-items: center;

        .title {
          color: sienna;
          transition: color 0.3s ease;
        }

        .title:hover {
          color: darkred;
        }

        .rating {
          margin-left: 5px;
        }
      }

      .author {
        font-style: italic;
      }
    }

    .footer {
      display: flex;
      align-items: center;
    }
  }
}

.cover {
  max-width: 135px;
  height: auto;
  transition: transform 0.3s ease;
}

.cover:hover {
  transform: scale(1.05);
}

a {
  text-decoration: none;
}
</style>
