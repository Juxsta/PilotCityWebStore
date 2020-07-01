<template>
  <v-container class="product-feature d-flex flex-column">
    <!-- TODO: turn the product-feature grid into a component -->
    <div class="product-feature__container">
      <div class="product-feature__title mb-4">
        <v-card-title class="d-flex d-flex-wrap">
          <span class="text-h6 mr-4">{{ product.title }}</span>
          <v-chip
          v-for="tag in product.tags"
          :key="tag">
            {{ tag }}
           </v-chip>
           <span class="text-subtitle-2 ml-2">Product ID: {{productID}}</span>
        </v-card-title>
      </div>
      <div class="product-feature__image">
        <v-img
          aspect-ratio=".5"
          :src="product.img"
          height="524px"
          :alt="product.desc"
          class="align-end">
        </v-img>
      </div>
      <div class="product-feature__card ml-6">
        <v-card
        class="d-flex flex-column justify-end"
        height="100%"
        tile
        >
          <v-card-title>{{ product.price }}</v-card-title>
          <v-divider/>
          <v-card-text class="flex-grow-1">{{ product.desc }}</v-card-text>
         <div class="flex-shrink-1">
            <v-card-actions class="flex-wrap">
              <v-btn small
              color="primary"
              class="mr-6"
              block
              height="40px"
              width="auto"
              :ripple="false">
                <v-icon x-sm class="mr-2">mdi-cart-outline</v-icon>
                Add to Cart
            </v-btn>
            </v-card-actions>
         </div>
        </v-card>
      </div>
    </div>
    <div class="flex-grow-1 product-feature__comments-container mt-6">
      <v-list >
        <!-- TODO: make card components -->
        <v-card class="mb-4">
          <v-list-item three-line>
            <v-list-item-content>
              <v-list-item-title class="text-subtitle-1 d-flex align-end">
                <v-avatar size="40px" color="indigo" class="mr-4">
                  <v-icon dark>mdi-account-circle</v-icon>
                </v-avatar>
                <span>My first Review</span>
                <v-spacer/>
                  <!-- TODO: insert avg. rating here -->
              </v-list-item-title>
              <v-divider/>
              <v-list-item-subtitle class="mt-3">
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                quae ab illo inventore veritatis et quasi architecto beatae vitae
                dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
                aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
                qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui
                dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia
                numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
                voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum
                 iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur,
                 vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
              </v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
        </v-card>
        <v-card class="mb-4">
          <v-list-item three-line>
            <v-list-item-content>
              <v-list-item-title class="text-subtitle-1 d-flex align-end">
                <v-avatar size="40px" color="indigo" class="mr-4">
                  <v-icon dark>mdi-account-circle</v-icon>
                </v-avatar>
                <span>My first Review</span>
                <v-spacer/>
                  <!-- TODO: insert avg. rating here -->
              </v-list-item-title>
              <v-divider/>
              <v-list-item-subtitle class="mt-3">
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                quae ab illo inventore veritatis et quasi architecto beatae vitae
                dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
                aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
                qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui
                dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia
                numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
                voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum
                 iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur,
                 vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
              </v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
        </v-card>
        <v-card>
          <v-list-item three-line>
            <v-list-item-content>
              <v-list-item-title class="text-subtitle-1 d-flex align-end">
                <v-avatar size="40px" color="indigo" class="mr-4">
                  <v-icon dark>mdi-account-circle</v-icon>
                </v-avatar>
                <span>My first Review</span>
                <v-spacer/>
                  <!-- TODO: insert avg. rating here -->
              </v-list-item-title>
              <v-divider/>
              <v-list-item-subtitle class="mt-3">
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                quae ab illo inventore veritatis et quasi architecto beatae vitae
                dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
                aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
                qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui
                dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia
                numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
                voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum
                 iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur,
                 vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
              </v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
        </v-card>
      </v-list>
    </div>
  </v-container>
</template>
<script lang="ts">
import Vue from 'vue';
// TODO: Tie route params to product objects
export default Vue.extend({
  data() {
    return {
    };
  },
  computed: {
    productID(): string {
      return this.$route.params.product_id;
    },
    product() {
      const prod: {} = {
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
      };
      return prod;
    },
  },
});
</script>
<style lang="scss">
  .product-feature{
    min-height: calc(100vh - 64px);
  }
  .product-feature{
    &__container{
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      grid-template-rows: fit-content(20%) repeat(2, 1fr);
    }
    &__card{
      grid-column: 5 / 6;
      grid-row: 1 / 4;
    }
    &__image{
      grid-column: 1 / 5;
      grid-row: 2 / 4;
    }
    &__title{
      grid-column: 1 / 5;
      grid-row: 1 / 1;
    }
    &__comments-container{
      grid-column: 1 / 6;
      grid-row: 3 / 4;
    }
  }
</style>
