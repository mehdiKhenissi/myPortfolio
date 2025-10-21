<script setup>
import { ref, onMounted, onUnmounted } from "vue";

// SLIDE Galactic
// Liste des images pour le slider
const images = [
  new URL("@/assets/img/projects/galactic_1.png", import.meta.url).href,
  new URL("@/assets/img/projects/galactic_2.png", import.meta.url).href,
];

const currentIndex = ref(0);

// Passer à l'image suivante
function next() {
  currentIndex.value = (currentIndex.value + 1) % images.length;
}

// Revenir à l'image précédente
function prev() {
  currentIndex.value = (currentIndex.value - 1 + images.length) % images.length;
}
// END SLIDE Galactic

// SLIDE TML
// Liste des images pour le slider
const imagesTml = [
  new URL("@/assets/img/projects/tml.png", import.meta.url).href,
  new URL("@/assets/img/projects/tml_api.png", import.meta.url).href,
];

const currentIndexTml = ref(0);

// Passer à l'image suivante
function nextTml() {
  currentIndexTml.value = (currentIndexTml.value + 1) % imagesTml.length;
}

// Revenir à l'image précédente
function prevTml() {
  currentIndexTml.value =
    (currentIndexTml.value - 1 + imagesTml.length) % imagesTml.length;
}
// END SLIDE Galactic

let interval, intervalTml;
onMounted(() => {
  interval = setInterval(next, 4000);
  intervalTml = setInterval(nextTml, 5000);
});
onUnmounted(() => {
  clearInterval(interval);
  clearInterval(intervalTml);
});
</script>
<template>
  <div class="max-sm:p-3 sm:p-4 md:p-6 text-white">
    <div
      class="bg-linear-to-b from-blue-300 to-blue-900 w-full mx-auto mt-10 space-y-4"
    >
      <div class="grid grid-cols-3 gap-5 p-6">
        <!-- GALACTIC -->
        <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
          <!-- Slider -->
          <div class="relative w-full h-full mb-4 overflow-hidden rounded-lg">
            <div
              class="flex transition-transform duration-700 ease-in-out h-full"
              :style="{ transform: `translateX(-${currentIndex * 100}%)` }"
            >
              <img
                v-for="(image, i) in images"
                :key="i"
                :src="image"
                class="w-full h-full object-contain rounded-lg"
                alt="slide"
              />
            </div>

            <!-- Boutons gauche/droite -->
            <button
              @click="prev"
              class="absolute top-1/2 left-2 -translate-y-1/2 bg-orange-600 text-white px-2 py-1 rounded-full hover:bg-orange-700"
            >
              ‹
            </button>
            <button
              @click="next"
              class="absolute top-1/2 right-2 -translate-y-1/2 bg-orange-600 text-white px-2 py-1 rounded-full hover:bg-orange-700"
            >
              ›
            </button>
          </div>

          <!-- Texte descriptif -->
          <div class="text-center mb-5">
            <h2 class="text-xl text-orange-400 font-bold mb-2">GALACTIC</h2>
            <p class="text-gray-500">
              <span class="text-orange-500 font-bold">GALACTIC</span> est une
              plateforme web qui permet aux utilisateurs de gérer plusieurs
              sites à partir d’une seule interface. Elle offre la possibilité de
              gérer
              <span class="text-orange-500 font-bold"
                >le contenu, les médias, les droits d’accès, et même de coder
                directement sur les sites</span
              >
              grâce à
              <span class="text-orange-500 font-bold">un module intégré</span>.
              Les principaux modules incluent la gestion
              <span class="text-orange-500 font-bold"
                >des réseaux sociaux, des serveurs, des contenus textuels et des
                médias</span
              >.
              <span class="text-orange-500 font-bold">GALACTIC</span> simplifie
              la gestion de plusieurs sites et centralise toutes les
              fonctionnalités essentielles en un seul endroit.
            </p>
          </div>

          <!-- Bouton -->
          <a
            href="https://dev.cms-galactic.fr/"
            target="_blank"
            class="mt-auto"
          >
            <button
              class="bg-orange-400 text-white px-4 py-2 rounded hover:bg-orange-500 transition cursor-pointer w-full"
              title="Me contacter pour demander les accès"
            >
              Visiter le site (version dev)
            </button>
          </a>
        </div>

        <!-- CIAO 365 -->
        <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
          <img
            src="@/assets/img/projects/ciao_365.png"
            class="w-full h-65 object-contain rounded-lg mx-auto mb-4"
          />

          <div class="text-center mb-5">
            <h2 class="text-xl text-orange-400 font-bold mb-2">CIAO 365</h2>
            <p class="text-gray-500">
              <span class="text-orange-500 font-bold">Ciao365</span> est un site
              web de réservation en ligne, développé en
              <span class="text-orange-500 font-bold">Symfony (PHP)</span>,
              dédié aux services de transport fiables, sécurisés et haut de
              gamme. La plateforme permet aux utilisateurs de réserver
              facilement
              <span class="text-orange-500 font-bold"
                >des véhicules de luxe, des minibus, des vans et des bus</span
              >, disponibles dans
              <span class="text-orange-500 font-bold"
                >les aéroports de Belgique</span
              >, pour leurs transferts vers n’importe quelle destination.
            </p>
          </div>

          <a href="https://ciao365.be/fr/" target="_blank" class="mt-auto">
            <button
              class="bg-orange-400 text-white px-4 py-2 rounded hover:bg-orange-500 transition cursor-pointer w-full"
            >
              Visiter le site
            </button>
          </a>
        </div>

        <!-- TML -->
        <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
          <!-- Slider -->
          <div class="relative w-full h-full mb-4 overflow-hidden rounded-lg">
            <div
              class="flex transition-transform duration-700 ease-in-out h-full"
              :style="{ transform: `translateX(-${currentIndexTml * 100}%)` }"
            >
              <img
                v-for="(imageTml, itml) in imagesTml"
                :key="itml"
                :src="imageTml"
                class="w-full h-full object-contain rounded-lg"
                alt="slide"
              />
            </div>

            <!-- Boutons gauche/droite -->
            <button
              @click="prevTml"
              class="absolute top-1/2 left-2 -translate-y-1/2 bg-orange-600 text-white px-2 py-1 rounded-full hover:bg-orange-700"
            >
              ‹
            </button>
            <button
              @click="nextTml"
              class="absolute top-1/2 right-2 -translate-y-1/2 bg-orange-600 text-white px-2 py-1 rounded-full hover:bg-orange-700"
            >
              ›
            </button>
          </div>

          <!-- Texte descriptif -->
          <div class="text-center mb-5">
            <h2 class="text-xl text-orange-400 font-bold mb-2">TrocMyLead</h2>
            <p class="text-gray-500">
              <span class="text-orange-500 font-bold">TrocMyLead</span> est
              <span class="text-orange-500 font-bold">une marketplace B2B</span>
              conçue pour l’achat et la vente de prospects. Développée avec
              <span class="text-orange-500 font-bold">Vue 3</span> pour le
              front-end et
              <span class="text-orange-500 font-bold">API Platform 3</span> pour
              le back-end, elle intègre également
              <span class="text-orange-500 font-bold">l’IA (ChatGPT)</span> pour
              le calcul et la fixation automatique des prix des prospects
              proposés sur la plateforme. Cette
              <span class="text-orange-500 font-bold">marketplace</span> est
              accessible à toutes les entreprises, quels que soient leur secteur
              d’activité, et son utilisation est entièrement
              <span class="text-orange-500 font-bold">gratuite</span>.
            </p>
          </div>

          <!-- Bouton -->
          <div class="grid grid-cols-2 gap-5 mt-auto">
            <a
              href="http://tml.jngz2533.odns.fr/"
              target="_blank"
              class="mt-auto"
            >
              <button
                class="bg-orange-400 text-white px-4 py-2 rounded hover:bg-orange-500 transition cursor-pointer w-full"
                title="Me contacter pour demander les accès"
              >
                Visiter le site (dev)
              </button>
            </a>
            <a
              href="http://api.tml.jngz2533.odns.fr/public/api"
              target="_blank"
              class="mt-auto"
            >
              <button
                class="bg-orange-400 text-white px-4 py-2 rounded hover:bg-orange-500 transition cursor-pointer w-full"
              >
                Visiter l'api (dev)
              </button>
            </a>
          </div>
        </div>

        <!-- Liens sites TPL -->
        <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
          <img
            src="@/assets/img/entreprise/tpr.png"
            class="w-full h-48 object-contain rounded-lg mx-auto mb-4"
          />

          <div class="text-center mb-5">
            <h2 class="text-xl text-orange-400 font-bold mb-2">
              Exemples des sites créer avec TPR - Stratégie communication
            </h2>
            <ul class="list-none text-orange-700 font-bold">
              <li class="flex items-center gap-4 h-20">
                <!-- Icône -->
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/garageguignet.png')] before:bg-contain before:bg-center before:bg-no-repeat"
                ></span>
                <!-- Texte centré verticalement -->
                <span class="text-base"><a href="https://www.garageguignet.fr/" target="_blank">Garage guignet 👀</a></span>
              </li>
              <li class="flex items-center gap-4 h-20">
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/grandhotel.svg')] before:bg-contain before:bg-center before:bg-no-repeat"
                ></span>
                <a href="https://www.grand-hotel-pension.fr/" target="_blank">Grand hotel 👀</a>
              </li>
              <li class="flex items-center gap-4 h-20">
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/lariboterie.webp')] before:bg-contain before:bg-center before:bg-no-repeat"
                ></span>
                <span class="text-base"
                  ><a href="https://www.brasserie-lariboterie.com/" target="_blank"
                    >La riboterie 👀</a
                  ></span
                >
              </li>
              <li class="flex items-center gap-4 h-20">
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/taxialison.png')] before:bg-contain before:bg-center before:bg-no-repeat before:bg-black"
                ></span>
                <span class="text-base"><a href="https://www.taxi-allison.fr/" target="_blank"
                    >Taxi Alison 👀</a
                  ></span>
              </li>
            </ul>

          </div>
        </div>

        <!-- Liens sites WebMEdiaRM -->
        <div class="bg-white rounded-xl shadow-lg p-6 flex flex-col h-full">
          <img
            src="@/assets/img/entreprise/webmediarm.svg"
            class="w-full h-48 object-contain rounded-lg mx-auto mb-4 bg-black p-2"
          />

          <div class="text-center mb-5">
            <h2 class="text-xl text-orange-400 font-bold mb-2">
              Exemples des sites créer avec WebMediaRM
            </h2>
            <ul class="list-none text-orange-700 font-bold">
              <li class="flex items-center gap-4 h-20">
                <!-- Icône -->
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/sebm.svg')] before:bg-contain before:bg-center before:bg-no-repeat before:bg-black"
                ></span>
                <!-- Texte centré verticalement -->
                <span class="text-base"><a href="https://sebm.fr/" target="_blank">Saint etienne bureau immobilier 👀</a></span>
              </li>
              <li class="flex items-center gap-4 h-20">
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/skalli_paris.svg')] before:bg-contain before:bg-center before:bg-no-repeat"
                ></span>
                <a href="https://skalli-paris.com/" target="_blank">Skalli paris 👀</a>
              </li>
              <li class="flex items-center gap-4 h-20">
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/gpa.webp')] before:bg-contain before:bg-center before:bg-no-repeat"
                ></span>
                <span class="text-base"
                  ><a href="https://www.g-p-a.fr/" target="_blank"
                    >GPA produits alimentaires 👀</a
                  ></span
                >
              </li>
              <li class="flex items-center gap-4 h-20">
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/burlet.svg')] before:bg-contain before:bg-center before:bg-no-repeat before:bg-black"
                ></span>
                <span class="text-base"><a href="https://burlet.pro/" target="_blank"
                    >Burlet 👀</a
                  ></span>
              </li>
              <li class="flex items-center gap-4 h-20">
                <span
                  class="pl-24 h-20 relative before:content-[''] before:absolute before:left-0 before:top-1/2 before:-translate-y-1/2 before:w-20 before:h-20 before:bg-[url('@/assets/img/projects/chazot.png')] before:bg-contain before:bg-center before:bg-no-repeat"
                ></span>
                <span class="text-base"><a href="https://autocars-chazot.com/" target="_blank"
                    >Autocars Chazot 👀</a
                  ></span>
              </li>
            </ul>

          </div>
        </div>
      </div>
        
    </div>
  </div>
</template>
<style scoped></style>
