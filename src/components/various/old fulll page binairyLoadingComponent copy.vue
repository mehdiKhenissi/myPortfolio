<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue';

const show = ref(true);
const fontSize = 16; // 1rem ~ 16px
const lineHeight = fontSize * 1.2;
const linesCount = ref(0);
const offset = ref(0);
const speed = 1; // pixels par frame
const binaryLine = ref('');

// Générer une ligne binaire aléatoire
const generateBinaryLine = () => {
  let line = '';
  for (let i = 0; i < 64; i++) {
    line += Math.random() > 0.5 ? '1' : '0';
  }
  return line;
};

const updateLinesCount = () => {
  linesCount.value = Math.ceil(window.innerHeight / lineHeight) + 2;
  binaryLine.value = generateBinaryLine();
};

let animationFrame;
const animate = () => {
  offset.value -= speed;
  if (offset.value <= -lineHeight) {
    offset.value += lineHeight;
    binaryLine.value = generateBinaryLine(); // nouvelle ligne au sommet
  }
  animationFrame = requestAnimationFrame(animate);
};

onMounted(() => {
  updateLinesCount();
  window.addEventListener('resize', updateLinesCount);
  animate();
  setTimeout(() => {
    show.value = false;
  }, 1000);
  
});

onBeforeUnmount(() => {
  window.removeEventListener('resize', updateLinesCount);
  cancelAnimationFrame(animationFrame);
});
</script>

<template>
  <div id="binary-loading-content" v-if="show">
    <div class="binary-loader" :style="{ transform: `translateY(${offset}px)` }">
      <div
        class="binary-line"
        v-for="n in linesCount"
        :key="n"
      >
        01010111 01100101 01101100 01100011 01101111 01101101 01100101 00100000
        01110100 01101111 00100000 01001101 01000101 01101000 01100100 01101001
        00100000 01001011 01101000 01100101 01101110 01101001 01110011 01110011
        01101001 00100000 01010000 01101111 01110010 01110100 01100110 01101111
        01101100 01101001 01101111
      </div>
    </div>
  </div>
</template>

<style scoped>
#binary-loading-content {
  margin: 0;
  padding: 0;
  height: 100vh;
  width: 100%;
  background-color: black;
  overflow: hidden;
  font-family: monospace;
}

.binary-loader {
  display: flex;
  flex-direction: column;
  color: lime;
  font-size: 1rem;
  line-height: 1.2;
}

.binary-line {
  white-space: nowrap;
}
</style>