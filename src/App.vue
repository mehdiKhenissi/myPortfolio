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
  <main class="bg-linear-to-b from-blue-950 to-blue-900 min-h-screen py-8 flex items-center justify-center">
    <binairyLoadingComponent v-if="false"></binairyLoadingComponent>
    <!-- <pageLoadingComponent v-if="page_loading_showed"></pageLoadingComponent> -->
    <headerComponent @section-change="handleSectionChange"></headerComponent>
      <RouterView :current-section="currentSection" />

    <!--  solution 1 detruit le composant et reconstruit tout   -->
    <!-- <RouterView :key="currentSection" :current-section="currentSection"/> -->
    <!-- solution 2 dynamique passe juste la nouvelle valeurs vers le composand, le composnat garde tt ces données -->
    <!-- <RouterView v-slot="{ Component }">
  <component :is="Component" :current-section="currentSection" />
</RouterView> -->
  </main>
</template>
