<script setup>
import { ref, onMounted, provide } from "vue";
import { RouterLink, RouterView } from "vue-router";
import pageLoadingComponent from "@/components/various/pageLoadingComponent.vue";
import binairyLoadingComponent from "./components/various/binairyLoadingComponent.vue";
import headerComponent from "./components/header/headerComponent.vue";

/** cuurent section */
const currentSection = ref("about"); // section par défaut
function handleSectionChange(section) {
  currentSection.value = section;
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
      <headerComponent @section-change="handleSectionChange"></headerComponent>
      <RouterView :current-section="currentSection" />
    </main>
  </div>

  
</template>
