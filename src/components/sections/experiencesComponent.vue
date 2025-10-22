<script setup>
import { ref } from "vue";
import baseSliderComponent from "../various/baseSliderComponent.vue";

const entreprises = [
  { name: "TPR", logo: "@/assets/img/entreprise/tpr.png" },
  { name: "WebMediaRM", logo: "@/assets/img/entreprise/webmediarm.svg" },
  { name: "Edatis", logo: "@/assets/img/entreprise/edatis.png" },
  { name: "ForIP", logo: "@/assets/img/entreprise/forip.png" },
  {
    name: "Carthage",
    logo: "@/assets/img/entreprise/carthage_businessware.jpg",
  },
];
</script>
<template>
  <div class="max-sm:p-3 sm:p-4 md:p-6">
    <div class="w-full mt-10 space-y-4">
      <div class="text-center mb-12">
        <h2 class="text-3xl md:text-4xl font-semibold text-emerald-300 mb-2">
          Mon expérience sur le terrain
        </h2>
        <div class="glow-line"></div>
      </div>

      <div class="grid grid-cols-8 relative mb-10">
        <!-- Grille des entreprises -->
        <div
          class="col-span-6 col-start-2 grid max-sm:grid-cols-1 md:grid-cols-3 gap-10"
        >
          <!-- TPR -->
          <div
            class="card rounded-xl p-6 text-center flex flex-col w-full h-full"
          >
            <p class="uppercase text-emerald-400 font-semibold text-sm mb-3">
              Développeur web Fullstack PHP
            </p>
            <img
              src="@/assets/img/entreprise/tpr.png"
              alt="TPR Logo"
              class="mx-auto w-18 mb-3"
            />
            <h3 class="text-lg font-semibold text-emerald-300 mb-1">
              Tout pour Réussir
            </h3>
            <p class="text-sm text-emerlad-400 mb-4">
              Agence webmarketing & publicité
            </p>
            <a
              href="https://www.tpr17.fr/"
              class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
              target="_blank"
              >Visiter le site</a
            >
          </div>

          <!-- WebMedia -->
          <div
            class="card rounded-xl p-6 text-center flex flex-col w-full h-full"
          >
            <p class="uppercase text-emerald-400 font-semibold text-sm mb-3">
              Développeur web Fullstack PHP
            </p>
            <img
              src="@/assets/img/entreprise/webmediarm.svg"
              alt="WebMediaRM Logo"
              class="mx-auto w-50 mb-3"
            />
            <h3 class="text-lg font-semibold text-emerald-300 mb-1">
              WebMediaRM
            </h3>
            <p class="text-sm text-emerlad-400 mb-4">
              Agence webmarketing & comminication
            </p>
            <a
              href="https://www.webmediarm.com/"
              class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
              target="_blank"
              >Visiter le site</a
            >
          </div>

          <!-- Edatis -->
          <div
            class="card rounded-xl p-6 text-center flex flex-col w-full h-full"
          >
            <p class="uppercase text-emerald-400 font-semibold text-sm mb-3">
              Développeur web Fullstack PHP
            </p>
            <img
              src="@/assets/img/entreprise/edatis.png"
              alt="Edatis Logo"
              class="mx-auto w-50 mb-3"
            />
            <h3 class="text-lg font-semibold text-emerald-300 mb-1">Edatis</h3>
            <p class="text-sm text-emerlad-400 mb-4">CRM & solutions marketing</p>
            <a
              href="#"
              class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
              target="_blank"
              >Visiter le site</a
            >
          </div>

          <div class="col-span-3 grid grid-cols-6 gap-10 place-items-center">
            <!-- ForIP -->
            <div
              class="card col-span-2 col-start-2 rounded-xl p-6 text-center flex flex-col w-full h-full"
            >
              <p class="uppercase text-emerald-400 font-semibold text-sm mb-3">
                Développeur web Fullstack PHP
              </p>
              <img
                src="@/assets/img/entreprise/forip.png"
                alt="ForIP Logo"
                class="mx-auto w-16 mb-3"
              />
              <h3 class="text-lg font-semibold text-emerald-300 mb-1">ForIP</h3>
              <p class="text-sm text-emerlad-400 mb-4">
                Éditeur logiciel – Solutions télécome
              </p>
              <a
                href="#"
                class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
                target="_blank"
                >Visiter le site</a
              >
            </div>

            <!-- Carthage businessware -->
            <div
              class="card col-span-2 rounded-xl p-6 text-center flex flex-col w-full h-full"
            >
              <p class="uppercase text-emerald-400 font-semibold text-sm mb-3">
                Intégrateur web & mobile
              </p>
              <img
                src="@/assets/img/entreprise/carthage_businessware.jpg"
                alt="ForIP Logo"
                class="mx-auto w-16 mb-3"
              />
              <h3 class="text-lg font-semibold text-emerald-300 mb-1">Carthage businessWare</h3>
              <p class="text-sm text-emerlad-400 mb-4">Éditeur logiciel</p>
              <a
                href="#"
                class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
                target="_blank"
                >Visiter le site</a
              >
            </div>
          </div>
        </div>
      </div>

      <!-- Grille des Projets -->

      <div class="text-center mt-20">
        <h2 class="text-3xl md:text-4xl font-semibold text-emerald-300 mb-2">
          Mes dernières réalisations
        </h2>
        <div class="glow-line"></div>
      </div>

      <div class="grid grid-cols-8 relative">
        <!-- Grille des Projets -->
        <div
          class="col-span-6 col-start-2 grid max-sm:grid-cols-1 md:grid-cols-3 gap-10"
        >
          <!-- GALACTIC -->
          <div
            class="card rounded-xl p-6 text-center flex flex-col w-full h-full"
          >
            <div class="py-10 bg-gray-900">
              <baseSliderComponent
                :images="[
                  './src/assets/img/projects/galactic_1.png',
                  './src/assets/img/projects/galactic_2.png',
                ]"
                :autoplay="true"
                :interval="4000"
              />
            </div>
            <h3 class="text-lg font-semibold text-emerald-300 mb-1">
              GALACTIC
            </h3>
            <p class="text-gray-200 mb-5">
              <span class="text-emerald-500 font-bold">GALACTIC</span> est une
              plateforme web qui permet aux utilisateurs de gérer plusieurs
              sites à partir d’une seule interface. Elle offre la possibilité de
              gérer
              <span class="text-emerald-500 font-bold"
                >le contenu, les médias, les droits d’accès, et même de coder
                directement sur les sites</span
              >
              grâce à
              <span class="text-emerald-500 font-bold">un module intégré</span>.
              Les principaux modules incluent la gestion
              <span class="text-emerald-500 font-bold"
                >des réseaux sociaux, des serveurs, des contenus textuels et des
                médias</span
              >.
              <span class="text-emerald-500 font-bold">GALACTIC</span> simplifie
              la gestion de plusieurs sites et centralise toutes les
              fonctionnalités essentielles en un seul endroit.
            </p>
            <a
              href="https://dev.cms-galactic.fr/"
              target="_blank"
              class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
              title="Me contacter pour les accès"
              >Visiter le site (dev)</a
            >
          </div>

          <!-- CIAO365 -->
          <div
            class="card rounded-xl p-6 text-center flex flex-col w-full h-full"
          >
            <img
              src="@/assets/img/projects/ciao_365.png"
              alt="WebMediaRM Logo"
              class="mx-auto w-full h-45 my-10"
            />
            <h3 class="text-lg font-semibold text-emerald-300 mb-1">
              CIAO 365
            </h3>
            <p class="text-gray-200 mb-5">
              <span class="text-emerald-500 font-bold">Ciao365</span> est un
              site web de réservation en ligne, développé en
              <span class="text-emerald-500 font-bold">Symfony (PHP)</span>,
              dédié aux services de transport fiables, sécurisés et haut de
              gamme. La plateforme permet aux utilisateurs de réserver
              facilement
              <span class="text-emerald-500 font-bold"
                >des véhicules de luxe, des minibus, des vans et des bus</span
              >, disponibles dans
              <span class="text-emerald-500 font-bold"
                >les aéroports de Belgique</span
              >, pour leurs transferts vers n’importe quelle destination.
            </p>
            <a
              href="https://ciao365.be/fr/"
              class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
              target="_blank"
              >Visiter le site</a
            >
          </div>

          <!-- TrocMyLEad -->
          <div
            class="card rounded-xl p-6 text-center flex flex-col w-full h-full"
          >
            <div class="py-10 bg-gray-900">
              <baseSliderComponent
                :images="[
                  './src/assets/img/projects/tml.png',
                  './src/assets/img/projects/tml_api.png',
                ]"
                :autoplay="true"
                :interval="4000"
              />
            </div>
            <h3 class="text-lg font-semibold text-emerald-300 mb-1">
              TrocMyLEad
            </h3>
            <p class="text-gray-200 mb-5">
              <span class="text-emerald-500 font-bold">TrocMyLead</span> est
              <span class="text-emerald-500 font-bold"
                >une marketplace B2B</span
              >
              conçue pour l’achat et la vente de prospects. Développée avec
              <span class="text-emerald-500 font-bold">Vue 3</span> pour le
              front-end et
              <span class="text-emerald-500 font-bold">API Platform 3</span>
              pour le back-end, elle intègre également
              <span class="text-emerald-500 font-bold">l’IA (ChatGPT)</span>
              pour le calcul et la fixation automatique des prix des prospects
              proposés sur la plateforme. Cette
              <span class="text-emerald-500 font-bold">marketplace</span> est
              accessible à toutes les entreprises, quels que soient leur secteur
              d’activité, et son utilisation est entièrement
              <span class="text-emerald-500 font-bold">gratuite</span>.
            </p>
            <div class="grid grid-cols-2 gap-5 mt-auto">
              <a
                href="http://tml.jngz2533.odns.fr/"
                target="_blank"
                class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
              >
                Visiter le site (dev)
              </a>
              <a
                href="http://api.tml.jngz2533.odns.fr/public/api"
                target="_blank"
                class="inline-block text-sm text-emerald-300 border border-emerald-400/40 px-4 py-2 rounded-md hover:bg-emerald-400/10 transition mt-auto"
              >
                Visiter l'api (dev)
              </a>
            </div>
          </div>

          <!-- SITE CREER AVEC TPL -->
          <div
            class="card col-span-3 rounded-xl p-6 text-center flex flex-col w-full h-full"
          >
          <p class="mb-5 font-bold text-2xl text-emerald-200"></p>
            <div class="list-none grid grid-cols-4 text-emerald-900 font-bold gap-10">
              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://www.garageguignet.fr/" target="_blank">
                  <img src="@/assets/img/projects/garageguignet.png" class="bg-emerald-100 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>
              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://www.grand-hotel-pension.fr/" target="_blank">
                  <img src="@/assets/img/projects/grand_hotel.png" class="bg-emerald-100 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>
              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://www.brasserie-lariboterie.com/" target="_blank">
                  <img src="@/assets/img/projects/lariboterie.webp" class="bg-emerald-100 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>

              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://www.taxi-allison.fr/" target="_blank">
                  <img src="@/assets/img/projects/taxialison.png" class="bg-emerald-900 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>

              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://sebm.fr/" target="_blank">
                  <img src="@/assets/img/projects/sebm.svg" class="bg-emerald-950 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>

              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://skalli-paris.com/" target="_blank">
                  <img src="@/assets/img/projects/skalli_paris.svg" class="bg-emerald-100 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>

              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://www.g-p-a.fr/" target="_blank">
                  <img src="@/assets/img/projects/gpa.webp" class="bg-emerald-100 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>

              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://burlet.pro/" target="_blank">
                  <img src="@/assets/img/projects/burlet.svg" class="bg-emerald-950 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>

              <div
                class="col-start-2 items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://autocars-chazot.com/" target="_blank">
                  <img src="@/assets/img/projects/chazot.png" class="bg-emerald-100 rounded-xl w-auto h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>

              <div
                class="items-center gap-4"
              >
                <!-- Icône -->
                <a href="https://www.winedesign.fr/" target="_blank">
                  <img src="@/assets/img/projects/wine_design.png" class="bg-emerald-100 rounded-xl w-50 h-25 shadow-[0_0_30px_5px_rgba(164,244,207,0.6)] hover:w-52"/>
                </a>
              </div>
             
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<style scoped>
/* Ligne lumineuse */
.glow-line {
  height: 3px;
  width: 160px;
  margin: 0 auto;
  background: linear-gradient(90deg, transparent, #34d399, transparent);
  border-radius: 9999px;
  box-shadow: 0 0 12px #34d399;
}

.glow-line-full-width {
  height: 3px;
  width: 80%;
  margin: 0 auto;
  background: linear-gradient(90deg, transparent, #34d399, transparent);
  border-radius: 9999px;
  box-shadow: 0 0 12px #34d399;
}

/* Effet survol carte */
.card {
  transition: all 0.3s ease;
  background: rgba(17, 24, 39, 0.85);
  border: 1px solid rgba(52, 211, 153, 0.15);
  box-shadow: 0 0 10px rgba(52, 211, 153, 0.05);
}

.card:hover {
  transform: translateY(-5px);
  box-shadow: 0 0 25px rgba(52, 211, 153, 0.2);
  border-color: rgba(52, 211, 153, 0.4);
}
</style>
