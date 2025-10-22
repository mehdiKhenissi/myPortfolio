<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

// Props pour rendre le composant réutilisable
const props = defineProps({
  images: { type: Array, required: true },
  interval: { type: Number, default: 3000 },
  autoplay: { type: Boolean, default: true },
})

const current = ref(0)
let timer = null

const next = () => {
  current.value = (current.value + 1) % props.images.length
}
const prev = () => {
  current.value =
    (current.value - 1 + props.images.length) % props.images.length
}

// Autoplay automatique
onMounted(() => {
  if (props.autoplay) {
    timer = setInterval(next, props.interval)
  }
})

onUnmounted(() => {
  if (timer) clearInterval(timer)
})
</script>

<template>
  <div class="relative w-full max-w-4xl mx-auto overflow-hidden rounded-xl">
    <!-- Conteneur des images -->
    <div
      class="flex transition-transform duration-700 ease-in-out"
      :style="{ transform: `translateX(-${current * 100}%)` }"
    >
      <div
        v-for="(img, index) in props.images"
        :key="index"
        class="w-full flex-shrink-0"
      >
        <img
          :src="img"
          class="w-full h-40 object-cover"
          alt="Slide image"
        />
      </div>
    </div>

    <!-- Boutons -->
    <button
      @click="prev"
      class="absolute left-3 top-1/2 -translate-y-1/2 bg-emerald-600/80 hover:bg-emerald-900 text-white px-3 py-2 rounded-full cursor-pointer"
    >
      ‹
    </button>
    <button
      @click="next"
      class="absolute right-3 top-1/2 -translate-y-1/2 bg-emerald-600/80 hover:bg-emerald-900 text-white px-3 py-2 rounded-full cursor-pointer"
    >
      ›
    </button>

    <!-- Indicateurs -->
    <div class="absolute bottom-3 left-1/2 -translate-x-1/2 flex gap-2">
      <span
        v-for="(img, index) in props.images"
        :key="index"
        class="w-3 h-3 rounded-full transition"
        :class="index === current ? 'bg-emerald-400' : 'bg-gray-400/50'"
      ></span>
    </div>
  </div>
</template>