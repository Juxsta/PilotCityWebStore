<template>
  <v-navigation-drawer
  class="shop__sidebar"
  style="height: calc(100vh - 144px)"
  :absolute="size=='xs'||size=='sm'||size=='md'?true:false">
    <v-card height="100%">
      <v-list-item>
        <v-list-item-icon>
          <v-icon>mdi-cart-outline</v-icon>
        </v-list-item-icon>

        <v-list-item-title>Store</v-list-item-title>
      </v-list-item>
      <v-divider/>
      <v-list>
        <v-list-group
        v-for="(category, index) in categories"
        :key="category.name+index">
          <template v-slot:activator>
            <v-list-item two-line>
              <v-list-item-content>
                <v-list-item-title>{{category.name}}</v-list-item-title>
                <v-list-item-subtitle>{{category.desc}}</v-list-item-subtitle>
              </v-list-item-content>
            </v-list-item>
          </template>
          <v-list-item
          v-for="(item, index) in category.items"
          :key="item+index" sub-group>
            <v-list-item-title>
              <div class="ml-6 d-flex align-center">
                <v-checkbox
                class="align-center"
                :ripple="false"
                v-if="item.type=='checkbox'"/>
                <div>{{item.text}}</div>
              </div>
            </v-list-item-title>
          </v-list-item>
        </v-list-group>
      </v-list>
    </v-card>
  </v-navigation-drawer>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
  data: () => ({
    categories: [
      {
        name: 'Ratings',
        desc: 'Filter by Rating',
        items: [
          { text: '★☆☆☆☆', type: 'checkbox' },
          { text: '★★☆☆☆', type: 'checkbox' },
          { text: '★★★☆☆', type: 'checkbox' },
          { text: '★★★★☆', type: 'checkbox' },
          { text: '★★★★★', type: 'checkbox' },
        ],
      },
    ],
  }),
  computed: {
    size() {
      let size = '';
      size = this.$vuetify.breakpoint.name;
      return size;
    },
  },
});
</script>
