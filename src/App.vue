<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      dark
    >
      <div class="d-flex align-center">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src="https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F0889c6bc-6749-41aa-b530-ce9cb268a2aa%2FPilotcity_logo.png?table=block&id=168baf74-f958-4561-b3dc-90a50539b549&width=5120&cache=v2g"
          transition="scale-transition"
          width="40"
        />

        <h2 class="ma-2">PilotCity</h2>
      </div>
    </v-app-bar>

    <v-main>
      <router-view />
    </v-main>
  </v-app>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
  name: 'App',

  components: {
  },

  data: () => ({
    //
  }),
});
</script>
