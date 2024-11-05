<template>
  <div id="app">
    <AppHeader />
    <router-view />
  </div>
</template>

<script>
import AppHeader from './components/Header.vue';
import router from './router';

export default {
  name: 'App',
  components: { AppHeader },
  router,
};
</script>

<style>
#app {
  margin-top: 40px;
}
</style>
