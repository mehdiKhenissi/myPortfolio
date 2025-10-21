<script setup>
import { ref, watch } from 'vue'

// Récupération des props
const props = defineProps({
  title: String,
  modelValue: Boolean
})

// Définition des emits
const emit = defineEmits(['update:modelValue'])

// État réactif
const isOpen = ref(props.modelValue)
console.log(props.modelValue);

// Synchronisation avec v-model
watch(
  () => props.modelValue,
  (val) => {
    isOpen.value = val
  }
)

// Fonction toggle
function toggle() {
  isOpen.value = !isOpen.value
  emit('update:modelValue', isOpen.value)
}
</script>

<template>
  <div class="border rounded-lg overflow-hidden">
    <button
      class="w-100 px-4 py-2 text-left bg-orange-300 hover:bg-orange-400 flex justify-between items-center"
      @click="toggle"
    >
      <span>{{ title }}</span>
      <svg
        :class="{ 'rotate-180': isOpen }"
        class="w-5 h-5 transition-transform duration-300"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
        viewBox="0 0 24 24"
      >
        <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
      </svg>
    </button>

    <div
      v-show="isOpen"
      class="px-4 py-2 bg-white border-t transition-all duration-300"
    >
      <slot />
    </div>
  </div>
</template>

<style scoped></style>