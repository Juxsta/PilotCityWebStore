<template>
  <div class="shop">
    <div class="d-flex">
      <v-navigation-drawer permenant>
        <v-list>
          <v-list-item-group>
            <v-list-item twoLine="true" v-for="(item, index) in items" :key="index">
              <v-list-content>
                <v-list-item-title>{{item.name}}</v-list-item-title>
                <v-list-item-subtitle>{{item.desc}}</v-list-item-subtitle>
              </v-list-content>
            </v-list-item>
          </v-list-item-group>
        </v-list>
      </v-navigation-drawer>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Shop',
  components: {
  },
  data: () => ({
    items: [
      {
        name: 'Brands',
        desc: 'Filter by brands',
      },
    ],
  }),
};
</script>
