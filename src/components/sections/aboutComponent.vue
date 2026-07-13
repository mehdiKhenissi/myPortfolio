<script setup>
import mmk_cv from "@/assets/img/mmk_cv.pdf";
</script>
<template>
  <div class="grid grid-cols-9">
    <div class="col-span-7 col-start-2 max-sm:p-3 sm:p-4 md:p-6">
      <div class="grid max-sm:grid-cols-1 sm:grid-cols-1 md:grid-cols-2 gap-4">
        <div class="bg-transparent flex items-center justify-center">
          <div class="h-full flex flex-col items-center justify-center">
            <p class="text-emerald-200 text-2xl font-bold uppercase">
              Mohamed Mehdi Khenissi
            </p>
            <p class="text-emerald-500 text-2xl font-bold uppercase">
              Développeur web Fullstuck PHP
            </p>
            <div class="mt-5">
              <img
                src="@/assets/img/mypicture.png"
                alt="My picture"
                class="w-full h-100 object-contain mask-b-from-50% mask-t-from-80%"
              />
            </div>
            <ul class="flex gap-5 mt-5">
              <li class="bg-blue-500 rounded-lg">
                <a
                  href="https://www.linkedin.com/in/mehdi-khenissi-482432107/"
                  target="_blank"
                  ><img
                    src="@/assets/img/linkedin_icone.png"
                    class="w-12 object-cover"
                    title="Linkedin"
                    alt="linkedin"
                /></a>
              </li>
              <li class="bg-gray-100 rounded-lg">
                <a :href="mmk_cv" target="_blank"
                  ><img
                    src="@/assets/img/download_cv.png"
                    class="w-12 object-cover rounded-lg"
                    title="CV"
                    alt="cv"
                /></a>
              </li>
              <li class="bg-gray-100 rounded-lg">
                <a href="https://github.com/mehdiKhenissi/" target="_blank"
                  ><img
                    src="@/assets/img/github_icone.png"
                    class="w-15 object-cover rounded-lg"
                    title="github"
                    alt="github"
                /></a>
              </li>
            </ul>
          </div>
        </div>
        <!-- ... -->
        <div class="bg-transparent p-5 flex items-center justify-center">
          <p
            class="font-mono text-white text-base/9 font-bold text-lg tracking-wide"
          >
            <span class="text-emerald-500">Ingénieur informatique</span>, je
            suis animé par une passion profonde pour la création d’expériences
            digitales uniques et performantes.
            <br />
            Depuis plus de <span class="text-emerald-500">9 ans</span>, je
            transforme des idées en solutions web robustes et sur-mesure,
            explorant sans cesse de nouvelles technologies et méthodes pour
            repousser les limites de ce qui est possible. <br /><br />
            Mon expertise couvre un large éventail d’outils et de langages – de
            <span class="text-emerald-500">Symfony</span> et
            <span class="text-emerald-500">PHP</span> à
            <span class="text-emerald-500">Vue JS</span>,<span class="text-emerald-500">React JS</span>,<span
              class="text-emerald-500"
              >JavaScript</span
            >
            et <span class="text-emerald-500">SQL</span> – mais c’est ma
            capacité à apprendre rapidement et à m’adapter aux évolutions du web
            qui me distingue véritablement. <br /><br />
            Chaque projet pour moi est une aventure : un terrain où technique,
            créativité et stratégie se rencontrent pour révéler des solutions
            élégantes et intelligentes. J’aime plonger dans la complexité,
            décoder les défis et trouver des réponses inattendues, celles qui
            apportent un vrai impact à la fois pour les utilisateurs et pour les
            équipes avec lesquelles je collabore. Au fil des années, j’ai appris
            que la technologie n’est pas seulement un outil, mais un moyen de
            raconter une histoire, de créer des expériences mémorables et de
            tisser des liens invisibles entre les idées et ceux qui les
            découvrent.
            <br /><br />
            <!-- <span class="text-emerald-500">Curieux</span>,
            <span class="text-emerald-500">passionné</span> et
            <span class="text-emerald-500"
              >toujours en quête de nouveaux horizons</span
            >, je cherche toujours à contribuer à des projets qui stimulent
            l’imagination, repoussent les standards et invitent à l’innovation. -->
          </p>
        </div>
      </div>
    </div>
  </div>
  <!-- STACK TECHNIQUE -->
  <div class="grid grid-cols-9 relative">
    <!-- <div class="relative bg-gray-900 text-white p-8 rounded-lg shadow-lg">
      <div
        class="absolute top-0 left-0 right-0 h-2 bg-transparent shadow-[0_-10px_30px_5px_rgba(99,102,241,0.7)] rounded-t-lg"
      ></div>

    </div> -->
    <div
      class="relative col-span-7 col-start-2 bg-gradient-to-b from-gray-900 to-gray-950 rounded-xl shadow-[0_0_30px_5px_rgba(94,233,181,0.6)]"
    >
    <!-- <div class="absolute top-0 left-0 right-0 bg-transparent shadow-[0_-10px_30px_5px_rgba(94,233,181,0.7)] rounded-t-lg"></div> -->
      <p
        class="text-3xl text-emerald-200 text-center font-bold py-6 rounded-tl-xl rounded-tr-xl"
      >
        Mon terain de jeux techniques
      </p>
      <div class="grid min-sm:grid-cols-5 md:grid-cols-10 gap-4 p-6">
        <div class="">
          <img
            src="@/assets/img/stack_technique/php.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="php"
          />
        </div>
        <div class="">
          <img
            src="@/assets/img/stack_technique/sql.svg"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="sql"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/symfony.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="symfony"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/javascript.webp"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="javascript"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/jquery.jpg"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="jquery"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/html.webp"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="html"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/ajax.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="ajax"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/twig.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="twig"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/css_3.webp"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="css 3"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/api_rest.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)] p-2"
            alt="api"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/vue_js.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="vue 3"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/api_platform.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Api platform"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/tailwind.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="tailwind css"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/bootstrap.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="sql"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/git.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Git"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/docker.svg"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="sql"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/wordpress.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Wordpress"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/mysql.svg"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="sql"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/sqlite.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Sqlite"
          />
        </div>
        <div class="">
          <img
            src="@/assets/img/stack_technique/mongodb.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Mongodb"
          />
        </div>
        <div class="min-sm:hidden md:inline md:col-span-3"></div>
        <div>
          <img
            src="@/assets/img/stack_technique/logo-react-js.webp"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Jquery"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/jquery.jpg"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Jquery"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/uml.png"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="UML"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/scrum.avif"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Agile scrum"
          />
        </div>
        <div>
          <img
            src="@/assets/img/stack_technique/cycle_v.webp"
            class="w-full h-35 object-contain rounded-lg bg-gray-900 shadow-[0_0_30px_1px_rgba(94,233,181,0.6)]"
            alt="Cycle en v"
          />
        </div>
      </div>
    </div>
  </div>
</template>
<style scoped></style>
