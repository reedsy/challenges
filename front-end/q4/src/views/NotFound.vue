<template>
  <div class="not-found">
    <h1>404 - Page Not Found</h1>
    <p>Sorry, the page you are looking for does not exist.</p>
    <router-link to="/" class="home-link">Go back to Home</router-link>
  </div>
</template>

<style lang="scss" scoped>
.not-found {
  text-align: center;
  margin-top: 50px;
  color: #333;
  font-family: Arial, sans-serif;

  h1 {
    font-size: 3em;
    margin-bottom: 20px;
    color: sienna;
  }

  p {
    font-size: 1.5em;
    margin-bottom: 20px;
  }
}

.home-link {
  font-size: 1.2em;
  color: sienna;
  text-decoration: none;
  border: 1px solid sienna;
  padding: 10px 20px;
  border-radius: 5px;
  transition:
    background-color 0.3s,
    color 0.3s;

  &:hover {
    background-color: sienna;
    color: #fff;
  }
}
</style>
