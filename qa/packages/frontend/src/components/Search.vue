<script setup>
import {computed, defineModel, ref} from 'vue';

const model = defineModel();
const internal = ref(model.value);
const input = ref(null);
const invalid = ref(false);

const value = computed({
  get: () => internal.value,
  set(v) {
    internal.value = v;
    invalid.value = !input.value.checkValidity();
    if (!invalid.value) model.value = v;
  },
});
</script>

<template>
  <div
    :class="{
      'input-group': true,
      'has-validation': true,
      'was-validated': invalid,
    }"
  >
    <label
      class="form-label"
    >
      Search
      <input
        is="regexp-input"
        type="text"
        class="form-control"
        v-model="value"
        ref="input"
      >
      <div class="invalid-feedback">
        Invalid RegExp
      </div>
    </label>
  </div>
</template>

<style scoped>
input {
  width: 400px;
}
</style>