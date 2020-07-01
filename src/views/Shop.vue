<template>
  <v-container fluid class="shop pa-0">
    <v-system-bar/>
    <v-row no-gutters>
      <v-col
        class="flex-grow-0 ">
        <Sidebar />
      </v-col>
      <v-col>
        <div class="shop__container">
          <v-card
          tile
          v-for="(product, index) in shopItems"
          :key="product.title+index" class="shop__card"
          @click="$router.push({name:'Product', params: {product_id: '12345'}})">
            <v-img
            aspect-ratio=".5"
            :src="product.img"
            height="332px"
            :alt="product.desc"
              class="align-end">
              <v-card-title style="color: #fff">{{ product.title }}</v-card-title>
            </v-img>
            <v-card-subtitle>{{ product.price }}</v-card-subtitle>
            <v-card-text>{{ product.desc }}</v-card-text>
            <v-card-actions class="flex-wrap">
              <v-chip v-for="tag in product.tags" :key="tag" >{{ tag }}</v-chip>
            </v-card-actions>
          </v-card>
        </div>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import Vue from 'vue';
import Sidebar from '@/components/shop/Sidebar.vue';
// TODO: Checkout sequence
// TODO: Log in page
// TODO: Sign up page
export default Vue.extend({
  name: 'Shop',
  components: {
    Sidebar,
  },
  data: () => ({
    shopItems: [
      {
        title: 'PilotCity T-shirt (black)',
        img: 'https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F5e3a3d02-8cde-44e1-9bad-a1c2d6cc676c%2F30726142_1862614897121943_5654503115823513600_n.jpg?table=block&id=739d06d7-86b4-4f74-9614-f09110d04caf&width=5120&cache=v2',
        desc: 'Plain black pocket tee with PilotCity\'s logo on it with a pickle on it',
        price: '$25',
        tags: [
          'black',
          'pocket-tee',
          'simple',
          'plain',
        ],
      },
      {
        title: 'PilotCity Hoodie (black)',
        img: 'https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F5e3a3d02-8cde-44e1-9bad-a1c2d6cc676c%2F30726142_1862614897121943_5654503115823513600_n.jpg?table=block&id=739d06d7-86b4-4f74-9614-f09110d04caf&width=5120&cache=v2',
        desc: 'Plain black zip up jacket with PilotCity\'s logo on the back',
        price: '$25',
        tags: [
          'black',
          'zipper',
          'simple',
        ],
      },
      {
        title: 'PilotCity Hoodie (black)',
        img: 'https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F5e3a3d02-8cde-44e1-9bad-a1c2d6cc676c%2F30726142_1862614897121943_5654503115823513600_n.jpg?table=block&id=739d06d7-86b4-4f74-9614-f09110d04caf&width=5120&cache=v2',
        desc: 'Plain black zip up jacket with PilotCity\'s logo on the back',
        price: '$25',
        tags: [
          'black',
          'zipper',
          'simple',
        ],
      },
      {
        title: 'PilotCity Hoodie (black)',
        img: 'https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F5e3a3d02-8cde-44e1-9bad-a1c2d6cc676c%2F30726142_1862614897121943_5654503115823513600_n.jpg?table=block&id=739d06d7-86b4-4f74-9614-f09110d04caf&width=5120&cache=v2',
        desc: 'Plain black zip up jacket with PilotCity\'s logo on the back',
        price: '$25',
        tags: [
          'black',
          'zipper',
          'simple',
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

<style lang="scss">
 .shop{
   min-height: calc(100vh - 64px);
   width: 100%;
 }
 .shop{
   &__container{
    display: grid;
    grid-template-columns: repeat(3, 1fr);
   }
   &__sidebar.v-card{
     max-width: 15vw;
   }
 }
 .shop__container{
   & .shop__card{
     max-width: 100%;
     margin: 1rem;
     & .v_image__image{
       max-width: 100%;
     }
   }
 }
 @media (max-width: 1263px){
   .shop{
     &__container{
      grid-template-columns: repeat(2, 1fr);
    }
    &__sidebar.v-card{
      max-width: 33vw;
    }
   }
 }
 @media (max-width: 599px){
   .shop{
     &__container{
      grid-template-columns: 1fr;
    }
    &__sidebar.v-card{
      max-width: 50vw;
    }
   }
 }
</style>
