<template>
  <div
    ref="floatArea"
    class="fixed inset-0 w-screen h-screen overflow-hidden bg-gradient-to-br from-slate-900/10 to-sky-900/10 pb-10"
  >
    <div
      v-for="(node, index) in nodes"
      :key="index"
      class="absolute flex items-center justify-center rounded-lg bg-white/10 text-white select-none pointer-events-none"
      :class="node.size"
      :style="{ transform: `translate3d(${node.pos.x}px, ${node.pos.y}px, 0) rotate(${node.rot}rad)` }"
    >
      <img
        v-if="node.img"
        :src="node.img"
        class="w-full h-full object-cover rounded-lg"
      />
      <span v-else>{{ node.icon }}</span>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import programing_img from '@/assets/img/interest/programing.png';

const floatArea = ref(null)
const nodes = ref([])

const ITEMS = [
  /*'🚀','💡','⚙️','🌐','⭐',*/
  'img:'+new URL('@/assets/img/interest/gaming.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/gaming_pc.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/programing.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/cinema.jpg', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/fuse.webp', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/sport.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/technologies.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/voyage.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/music.jpg', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/instagram.png', import.meta.url).href,
  /*'img:'+new URL('@/assets/img/interest/facebook.webp', import.meta.url).href,*/
  'img:'+new URL('@/assets/img/interest/linkedin.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/coding.webp', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/jeucarte.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/moto.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/jeucarte.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/robot.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/globconected.jpg', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/echecs.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/associatif.png', import.meta.url).href,
  'img:'+new URL('@/assets/img/interest/randonner.webp', import.meta.url).href,
  /*'💬','🔒','🧭','📊'*/
]

const SPEED = 0.15
const ROT_SPEED = 0.01
const SIZE_CLASSES = ['w-40 h-40 text-xl'] // Tailwind sizes

const rand = (a, b) => Math.random() * (b - a) + a
const randint = (a, b) => Math.floor(rand(a, b))

function getAreaRect() {
  return floatArea.value.getBoundingClientRect()
}

async function spawn() {
  const r = getAreaRect()

  for (let i = 0; i < ITEMS.length; i++) {
    const item = ITEMS[i]
    const size = SIZE_CLASSES[randint(0, SIZE_CLASSES.length)]

    let img = null
    let icon = null

    if (item.startsWith('img:')) {
      img = item.replace('img:', '')
      await new Promise(res => { 
        const temp = new Image(); 
        temp.src = img; 
        temp.onload = res; 
        temp.onerror = res; 
      })
    } else {
      icon = item
    }

    // Création de node
    const w = size.includes('w-8') ? 32 : size.includes('w-11') ? 44 : 56
    const h = size.includes('h-8') ? 32 : size.includes('h-11') ? 44 : 56

    const pos = {
      x: rand(0, Math.max(r.width - w, 0)),
      y: rand(0, Math.max(r.height - h, 0))
    }

    const angle = rand(0, Math.PI * 2)
    const vel = { vx: Math.cos(angle) * SPEED, vy: Math.sin(angle) * SPEED }
    const rot = rand(-0.6, 0.6)

    nodes.value.push({ pos, vel, rot, size, w, h, img, icon })
  }
}

function animate() {
  const r = getAreaRect()
  nodes.value.forEach(obj => {
    obj.pos.x += obj.vel.vx * 6
    obj.pos.y += obj.vel.vy * 6
    obj.rot += (obj.vel.vx + obj.vel.vy) * ROT_SPEED

    // rebonds
    if (obj.pos.x <= 0) { obj.pos.x = 0; obj.vel.vx *= -1 }
    if (obj.pos.x + obj.w >= r.width) { obj.pos.x = r.width - obj.w; obj.vel.vx *= -1 }
    if (obj.pos.y <= 0) { obj.pos.y = 0; obj.vel.vy *= -1 }
    if (obj.pos.y + obj.h >= r.height) { obj.pos.y = r.height - obj.h; obj.vel.vy *= -1 }
  })
  requestAnimationFrame(animate)
}

onMounted(async () => {
  await spawn()
  animate()
})
</script>

<style>
body {
  /* @apply bg-slate-900 flex justify-center items-center h-screen m-0; */
}
</style>
