<script setup>
import { ref, onMounted, provide } from "vue";
import { RouterLink, RouterView } from "vue-router";
import pageLoadingComponent from "@/components/various/pageLoadingComponent.vue";
import binairyLoadingComponent from "./components/various/binairyLoadingComponent.vue";
import headerComponent from "./components/header/headerComponent.vue";
import floatingContactComponent from "./components/various/floatingContactComponent.vue";

/** cuurent section */
const currentSection = ref("about"); // section par défaut
function handleSectionChange(section) {
  currentSection.value = section;
}

/* floating contact */
const fc = ref(null);
function openContact() {
  fc.value?.openPanel?.();
}

/** page loading */
const page_loading_showed = ref(true);
function tooglePageLoading(status = null) {
  if (status != null) {
    page_loading_showed.value = status;
  } else if (page_loading_showed.value) {
    page_loading_showed.value = false;
  } else {
    page_loading_showed.value = true;
  }
}
provide("tooglePageLoading", tooglePageLoading);
</script>

<template>
  <div class="relative min-h-screen w-full">
    <div class="fixed top-0 left-0 w-full h-full z-[-1]">
      <img
        src="@/assets/img/background.gif"
        alt="Background"
        class="w-full h-full object-cover"
      />
      <div class="absolute inset-0 bg-black/75"></div>
    </div>

    <main
      class="relative z-10 flex flex-col items-center justify-center min-h-screen py-16 text-white"
    >
      <binairyLoadingComponent v-if="false"></binairyLoadingComponent>
      <!-- floating contact -->
      <floatingContactComponent
        ref="fc"
        :phone="'+33664715874'"
        :email="'mehdi.khenissi@hotmail.fr'"
      />
      <!-- icône flottante -->
      <button
        @click="openContact"
        class="fixed right-5 bottom-90 z-40 flex h-14 w-14 items-center justify-center rounded-full bg-emerald-700/30 ring-1 ring-black/10 hover:scale-105 active:scale-95 focus:outline-none focus:ring-2 focus:ring-emerald-300 shadow-[0_0_30px_5px_rgba(94,233,181,0.6)]"
        aria-label="Contact"
      >
        <!-- message/chat icon -->
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class="h-6 w-6 text-white"
          fill="none"
          viewBox="0 0 24 24"
          stroke="currentColor"
          stroke-width="1.7"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M8 10h.01M12 10h.01M16 10h.01M21 12c0 4.418-4.03 8-9 8a9.86 9.86 0 0 1-4.5-1L3 20l1.1-3.5A7.98 7.98 0 0 1 4 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
          />
        </svg>
      </button>
      <!-- end floating contact -->
      <headerComponent @section-change="handleSectionChange"></headerComponent>
      <RouterView :current-section="currentSection" />
    </main>
  </div>
</template>
