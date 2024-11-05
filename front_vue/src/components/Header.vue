<template>
  <header>
    <nav class="navbar navbar-dark bg-dark">
      <div class="container d-flex justify-content-between">
        <a class="navbar-brand" href="#">CRUD de Endereços</a>
        <ul class="navbar-nav d-flex flex-row">
          <li class="nav-item mx-2">
            <router-link to="/" class="nav-link">Home</router-link>
          </li>
          <li class="nav-item mx-2">
            <router-link to="/" class="nav-link">Endereços</router-link>
          </li>
          <li class="nav-item mx-2">
            <router-link to="/novo-endereco" class="nav-link">Novo endereço</router-link>
          </li>
        </ul>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  name: 'AppHeader',
};
</script>
