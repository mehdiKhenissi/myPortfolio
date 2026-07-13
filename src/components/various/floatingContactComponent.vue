<template>
  <!-- Teleport optional: you can teleport to body so the overlay sits above everything -->
  <teleport to="body">
    <div v-if="open" class="fixed inset-0 z-50 flex items-end justify-center sm:items-center">
      <!-- fond semi-transparent -->
      <div
        class="absolute inset-0 bg-black/40 backdrop-blur-sm"
        @click.self="close"
        aria-hidden="true"
      ></div>

      <!-- Carte contact -->
      <div
        ref="panel"
        class="relative m-4 w-100 rounded-2xl bg-linear-to-b from-gray-900 to-emerald-950 p-4 ring-1 ring-black/8 transform transition-all duration-200 sm:mx-0 shadow-[0_0_30px_5px_rgba(94,233,181,0.6)]"
        role="dialog"
        aria-modal="true"
        :aria-labelledby="'contact-title'"
      >
        <button
          class="absolute right-3 top-3 rounded-md p-1 text-emerald-100 hover:bg-emerald-800 focus:outline-none focus:ring-2 focus:ring-indigo-500 cursor-pointer"
          @click="close"
          aria-label="Fermer"
        >
          <!-- simple X icon -->
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>

        <h3 id="contact-title" class="mb-2 text-xl font-semibold text-emerald-200">Pour me contacter</h3>

        <p class="mb-3 text-sm text-emerald-300"></p>

        <div class="space-y-3">
          <div class="flex items-center justify-between rounded-lg border border-teal-500 p-3">
            <div class="flex items-center gap-2">
              <!-- phone icon -->
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-emerald-400" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                <path stroke-linecap="round" stroke-linejoin="round" d="M3 5.5a2.5 2.5 0 0 1 2.5-2.5h1.75c.966 0 1.8.714 1.96 1.666l.23 1.26c.09.498-.03 1.02-.32 1.42L7.9 10.5a11.042 11.042 0 0 0 5.6 5.6l2.66-1.32c.4-.16.92-.41 1.42-.32l1.26.23c.952.16 1.666.995 1.666 1.96V18.5A2.5 2.5 0 0 1 20.5 21H18c-8.284 0-15-6.716-15-15V5.5z"/>
              </svg>
              <div>
                <div class="text-m font-medium text-emerald-400">Téléphone</div>
                <div class="text-m text-emerald-100">{{ phone }}</div>
              </div>
            </div>
            <div class="flex items-center gap-2">
              <button
                class="rounded-md px-2 py-1 text-sm text-emerald-100 font-medium hover:bg-emerald-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 cursor-pointer"
                @click="copyToClipboard(phone)"
                :aria-label="'Copier le téléphone ' + phone"
              >Copier</button>
              <a :href="`tel:${phone}`" class="rounded-md px-2 py-1 text-sm text-emerald-100 font-medium hover:bg-emerald-900 focus:outline-none focus:ring-2 focus:ring-indigo-500">Appeler</a>
            </div>
          </div>

          <div class="flex items-center justify-between rounded-lg border border-teal-500 p-2">
            <div class="flex items-center gap-2">
              <!-- email icon -->
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-indigo-600" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                <path stroke-linecap="round" stroke-linejoin="round" d="M3 8.5v7A2.5 2.5 0 0 0 5.5 18h13A2.5 2.5 0 0 0 21 15.5v-7M3 8.5L12 13l9-4.5" />
              </svg>
              <div>
                <div class="text-m font-medium text-emerald-400">Email</div>
                <div class="text-m text-emerald-100">{{email}}</div>
              </div>
            </div>
            <div class="flex items-center gap-2">
              <button
                class="rounded-md px-2 py-1 text-emerald-100 text-sm font-medium hover:bg-emerald-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 cursor-pointer"
                @click="copyToClipboard(email)"
                :aria-label="'Copier l’email ' + email"
              >Copier</button>
              <a :href="`mailto:${email}`" class="rounded-md px-2 py-1 text-emerald-100 text-sm font-medium hover:bg-emerald-900 focus:outline-none focus:ring-2 focus:ring-indigo-500">Envoyer</a>
            </div>
          </div>

          <div class="rounded-lg border border-teal-500 p-3">
            <div class="text-m font-medium text-emerald-400">Adresse</div>
            <div class="text-m text-emerald-100">54 Avenue Corot, 13013 Marseille, France</div>
          </div>
        </div>
      </div>
    </div>
  </teleport>
</template>

<script setup>
import { ref, onMounted, onBeforeUnmount, watch } from 'vue';

const props = defineProps({
  // valeurs par défaut modifiables à l'utilisation
  phone: { type: String, default: '+33664715874' },
  email: { type: String, default: 'mehdi.khenissi@hotmail.com' },
  startOpen: { type: Boolean, default: false }
});

const emit = defineEmits(['open', 'close']);

const open = ref(props.startOpen);
const panel = ref(null);

function openPanel() {
  open.value = true;
  emit('open');
  // focus inside
  setTimeout(() => panel.value?.focus?.(), 50);
}

function close() {
  open.value = false;
  emit('close');
}

function copyToClipboard(text) {
  if (!navigator.clipboard) {
    // fallback
    const tmp = document.createElement('textarea');
    tmp.value = text;
    document.body.appendChild(tmp);
    tmp.select();
    document.execCommand('copy');
    tmp.remove();
    return;
  }
  navigator.clipboard.writeText(text).catch(() => {
    // ignore errors
  });
}

// fermer sur ESC
function onKey(e) {
  if (e.key === 'Escape' && open.value) close();
}
onMounted(() => window.addEventListener('keydown', onKey));
onBeforeUnmount(() => window.removeEventListener('keydown', onKey));

// expose open/close pour usage parent si voulu
defineExpose({ openPanel, close });

watch(open, (v) => {
  // lock scroll when open
  document.documentElement.style.overflow = v ? 'hidden' : '';
});
</script>

<style scoped>
/* optionnel : petite animation d'entrée */
[role="dialog"] {
  transform-origin: bottom center;
}
</style>

<!-- Floating trigger (placed outside or in same file if desired) -->
