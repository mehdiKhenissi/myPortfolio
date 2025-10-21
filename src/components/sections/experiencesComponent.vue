<script setup>
import { ref } from "vue";
import accordionExperienceComponent from "@/components/items/accordionExperienceComponent.vue";

const open1 = ref(false);
const open2 = ref(false);
const open3 = ref(false);
</script>
<template>
  <div class="max-sm:p-3 sm:p-4 md:p-6 text-white">
    <div class="w-full mx-auto mt-10 space-y-4">
      <div class="grid grid-cols-2 gap-4 p-6">
        <div class="bg-linear-to-b from-blue-900 to-blue-300 ">
          <p
            class="bg-blue-900 text-4xl text-orange-600 text-center font-bold py-3 border border-blue-950"
          >
            Stack technique
          </p>
          <div class="grid grid-cols-4 gap-4 p-6">
            <div class="">
              <img
                src="@/assets/img/stack_technique/php.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div class="">
              <img
                src="@/assets/img/stack_technique/sql.svg"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/symfony.svg"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/javascript.webp"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/jquery.svg"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/html.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/ajax.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/twig.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/css_3.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/api.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/vue_js.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/api_platform.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/tailwind_css.svg"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/bootstrap.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/git.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/docker.svg"
                class="w-full h-50 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/wordpress.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/mysql.svg"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/sqlite.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/mongodb.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/jquery.svg"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/uml.png"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/scrum.avif"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
            <div>
              <img
                src="@/assets/img/stack_technique/cycle_v.webp"
                class="w-full h-48 object-contain rounded-lg"
              />
            </div>
          </div>
        </div>
        <div class="bg-linear-to-b from-blue-900 to-blue-300 ">
          <p
            class="bg-blue-900 text-4xl text-orange-600 text-center font-bold py-3 border border-blue-950"
          >
            Entreprises
          </p>
          <div class="grid grid-cols-2 gap-4 p-6">
            <!-- TPR -->
            <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
              <img
                src="@/assets/img/entreprise/tpr.png"
                class="w-full h-48 object-contain rounded-lg mx-auto mb-4"
              />

              <div class="text-center mb-5">
                <h2 class="text-xl text-orange-400 font-bold mb-2">
                  Tout pour Réussir (anciennement Toujours plus Loin)
                </h2>
                <p class="text-gray-500">Agence webmarketing & publicité</p>
              </div>

              <a href="https://www.tpr17.fr/" target="_blank" class="mt-auto">
                <button
                  class="bg-orange-400 text-white px-4 py-2 rounded hover:bg-orange-500 transition cursor-pointer w-full"
                >
                  Visiter le site
                </button>
              </a>
            </div>

            <!-- WEBMEDIARM -->
            <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
              <img
                src="@/assets/img/entreprise/webmediarm.svg"
                class="w-full h-48 object-contain rounded-lg mx-auto mb-4 bg-black p-3"
              />

              <div class="text-center">
                <h2 class="text-xl text-orange-400 font-bold mb-2">
                  WebMediaRM
                </h2>
                <p class="text-gray-500 mb-4">
                  Agence webmarketing & comminication
                </p>
              </div>

              <a
                href="https://www.webmediarm.com/"
                target="_blank"
                class="mt-auto"
              >
                <button
                  class="bg-orange-400 text-white px-4 py-2 rounded hover:bg-orange-500 transition cursor-pointer w-full"
                >
                  Visiter le site
                </button>
              </a>
            </div>

            <!-- EDATIS -->
            <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
              <img
                src="@/assets/img/entreprise/edatis.png"
                class="w-full h-48 object-contain rounded-lg mx-auto mb-4 bg-black p-3"
              />

              <div class="text-center mb-5">
                <h2 class="text-xl text-orange-400 font-bold mb-2">
                  EDATIS - Key performance group
                </h2>
                <p class="text-gray-500">Assistance et services informatiques</p>
              </div>

              <a href="https://edatis.com/" target="_blank" class="mt-auto">
                <button
                  class="bg-orange-400 text-white px-4 py-2 rounded hover:bg-orange-500 transition cursor-pointer w-full"
                >
                  Visiter le site
                </button>
              </a>
            </div>

            <!-- FORIP -->
            <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
              <img
                src="@/assets/img/entreprise/forip.png"
                class="w-full h-48 object-contain rounded-lg mx-auto mb-4"
              />

              <div class="text-center mb-5">
                <h2 class="text-xl text-orange-400 font-bold mb-2">
                  FORIP
                </h2>
                <p class="text-gray-500">Editeur logiciel - Agence télécome</p>
              </div>

              <a class="mt-auto">
                <button
                  class="bg-orange-200 text-white px-4 py-2 rounded transition cursor-not-allowed w-full"
                >
                  Visiter le site
                </button>
              </a>
            </div>

            <!-- Carthage businessware -->
            <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
              <img
                src="@/assets/img/entreprise/carthage_businessware.jpg"
                class="w-full h-48 object-contain rounded-lg mx-auto mb-4"
              />

              <div class="text-center mb-5">
                <h2 class="text-xl text-orange-400 font-bold mb-2">
                  Carthage BusinessWare
                </h2>
                <p class="text-gray-500">Editeur de logiciels</p>
              </div>

              <a class="mt-auto">
                <button
                  class="bg-orange-200 text-white px-4 py-2 rounded transition cursor-not-allowed w-full"
                >
                  Visiter le site
                </button>
              </a>
            </div>
          </div>
        </div>
      </div>

      <!-- <accordionExperienceComponent
        :title="{
          additionalClasses: alertParams.type + ' col-12',
          dismissSecs: alertParams.dismissSecs,
          message: alertParams.message,
        }"
        v-model="open1"
      >
        <p>Contenu de la section 1.</p>
      </accordionExperienceComponent> -->
      <!-- <accordionExperienceComponent title="Section 2" v-model="open2">
        <p>Contenu de la section 2.</p>
      </accordionExperienceComponent>

      <accordionExperienceComponent title="Section 3" v-model="open3">
        <p>Contenu de la section 3.</p>
      </accordionExperienceComponent> -->
    </div>
  </div>
</template>
<style scoped></style>
