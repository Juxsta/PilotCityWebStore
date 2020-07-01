<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      dark
    >
      <div
      class="d-flex align-center"
      style="cursor:pointer"
      @click="$router.push({name:'Shop'})">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src="https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F0889c6bc-6749-41aa-b530-ce9cb268a2aa%2FPilotcity_logo.png?table=block&id=168baf74-f958-4561-b3dc-90a50539b549&width=5120&cache=v2g"
          transition="scale-transition"
          width="40"
        />

        <h2 class="ma-2 text-h4">PilotCity</h2>
      </div>
      <v-spacer />
      <v-menu offset-y>
        <template v-slot:activator="{on, attrs}">
          <v-btn small
          color="primary"
          class="mr-6"
          v-on="on"
          v-bind="attrs"
          height="40px"
          width="auto"
          :ripple="false">
            <v-icon class="mr-2">mdi-account-circle-outline</v-icon>Hi, Jerold
          </v-btn>
        </template>
        <v-list>
          <v-list-item
            dense
            v-for="(item, index) in accountItems"
            :key="index">
              <v-list-item-icon class="mr-3">
                <v-icon>mdi-truck-delivery</v-icon>
              </v-list-item-icon>
              <v-list-item-title
              class="text-subtitle-2">
                {{ item.title }}
              </v-list-item-title>
          </v-list-item>
          <v-divider />
        </v-list>
      </v-menu>

       <v-menu offset-y>
        <template v-slot:activator="{on, attrs}">
          <v-btn
          class="mr-3"
          :ripple="false"
          icon x-small
          v-on="on"
          v-bind="attrs">
            <v-icon>mdi-cart</v-icon>
          </v-btn>
        </template>
        <v-list>
          <v-list-item
            dense
            v-for="(item, index) in shoppingCart"
            :key="index">
              <v-list-item-title
              class="text-subtitle-2">
                {{ item.title }}
              </v-list-item-title>
          </v-list-item>
          <v-divider />
        </v-list>
      </v-menu>
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
    accountItems: [
      {
        title: 'view orders',
        route: 'orders',
      },
    ],
    shoppingCart: [
      {
        id: '1234',
        img: 'URL',
        title: 'Black hoodie',
      },
    ],
  }),
});
</script>
<style lang="scss">
body,html {
  width: 100%;
  height: 100%;
  font-size: 12px;
  word-break: keep-all;
  overflow: auto;
  font-family: 'Raleway', sans-serif;
}
.v-card__title{
  word-break: keep-all !important;
}
</style>
