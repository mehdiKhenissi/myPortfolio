<script setup>
import { ref, onMounted, computed, inject } from "vue";
import aboutComponent from "@/components/sections/aboutComponent.vue";
import experiencesComponent from "@/components/sections/experiencesComponent.vue";
import interestComponenet from "@/components/sections/interestComponenet.vue";
import projectsComponent from "@/components/sections/projectsComponent.vue";

const tooglePageLoading = inject("tooglePageLoading");
const props = defineProps({
  currentSection: String,
});

/** sections active */
const currentComponent = computed(() => {
  switch (props.currentSection) {
    case "experiences":
      return experiencesComponent;
    case "projects":
      return projectsComponent;
    case "interest":
      return interestComponenet;
    default:
      return aboutComponent;
  }
});

onMounted(async () => {
  setTimeout(() => {
    tooglePageLoading(false);
  }, 1000);
});
</script>

<template>
  <div class="w-full py-8">
    <component :is="currentComponent" />
  </div>
</template>

<style scoped></style>
