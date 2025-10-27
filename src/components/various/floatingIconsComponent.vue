<template>
  <div class="float-area" ref="area">
    <slot></slot>
  </div>
</template>

<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue'

const area = ref(null)
const nodes = []

// ✅ Props pour personnaliser le composant
const props = defineProps({
  items: {
    type: Array,
    default: () => [
      '🚀','💡','⚙️','🌐','⭐',
      'img:https://upload.wikimedia.org/wikipedia/commons/4/4e/Google_2015_logo.svg',
      'img:https://upload.wikimedia.org/wikipedia/commons/a/a7/React-icon.svg',
      'img:https://upload.wikimedia.org/wikipedia/commons/9/96/Instagram.svg',
      'img:https://upload.wikimedia.org/wikipedia/commons/1/1b/Apple_logo_grey.svg',
      '💬','🔒','🧭','📊'
    ]
  },
  speed: { type: Number, default: 0.15 },
  rotSpeed: { type: Number, default: 0.01 },
  count: { type: Number, default: 15 },
})

let frame

const rand = (a,b)=>Math.random()*(b-a)+a
const randint = (a,b)=>Math.floor(rand(a,b))

function spawn() {
  const r = area.value.getBoundingClientRect()
  const SIZE_CLASSES = ['small','medium','large']

  for (let i=0;i<props.items.length;i++) {
    const el = document.createElement('div')
    el.className = `icon ${SIZE_CLASSES[randint(0,SIZE_CLASSES.length)]}`

    const item = props.items[i]
    if (item.startsWith('img:')) {
      const img = document.createElement('img')
      img.src = item.replace('img:','')
      el.appendChild(img)
    } else {
      el.textContent = item
    }

    area.value.appendChild(el)

    const w = el.offsetWidth
    const h = el.offsetHeight
    const pos = {x:rand(0,r.width-w), y:rand(0,r.height-h)}
    const angle = rand(0,Math.PI*2)
    const vel = {vx:Math.cos(angle)*props.speed, vy:Math.sin(angle)*props.speed}
    const rot = rand(-0.6,0.6)

    nodes.push({el,pos,vel,rot,w,h})
  }
}

function animate() {
  const r = area.value.getBoundingClientRect()

  for (const obj of nodes) {
    obj.pos.x += obj.vel.vx * 6
    obj.pos.y += obj.vel.vy * 6
    obj.rot += (obj.vel.vx + obj.vel.vy) * props.rotSpeed

    // Rebonds et limites
    if (obj.pos.x <= 0) { obj.pos.x = 0; obj.vel.vx *= -1 }
    if (obj.pos.x + obj.w >= r.width) { obj.pos.x = r.width - obj.w; obj.vel.vx *= -1 }
    if (obj.pos.y <= 0) { obj.pos.y = 0; obj.vel.vy *= -1 }
    if (obj.pos.y + obj.h >= r.height) { obj.pos.y = r.height - obj.h; obj.vel.vy *= -1 }

    obj.el.style.transform =
      `translate3d(${obj.pos.x}px,${obj.pos.y}px,0) rotate(${obj.rot}rad)`
  }

  frame = requestAnimationFrame(animate)
}

onMounted(() => {
  spawn()
  frame = requestAnimationFrame(animate)
})

onBeforeUnmount(() => {
  cancelAnimationFrame(frame)
})
</script>

<style scoped>
.float-area {
  width: 900px;
  height: 420px;
  background: linear-gradient(135deg, #0f172a, #03203c);
  border-radius: 12px;
  overflow: hidden;
  position: relative;
  box-shadow: 0 10px 25px rgba(0,0,0,0.5);
}

.icon {
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 10px;
  background: rgba(255,255,255,0.1);
  color: #fff;
  user-select: none;
  pointer-events: none;
  will-change: transform;
  overflow: hidden;
}

.small { width: 34px; height: 34px; font-size: 18px; }
.medium { width: 44px; height: 44px; font-size: 22px; }
.large { width: 56px; height: 56px; font-size: 26px; }

.icon img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: inherit;
}
</style>
