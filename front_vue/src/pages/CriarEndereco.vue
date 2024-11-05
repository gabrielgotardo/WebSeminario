<template>
  <div class="container">
    <h2>Novo Endereço</h2>
    <b-form @submit.prevent="salvarEndereco">
      <b-form-group label="Rua" label-for="rua">
        <b-form-input
          v-model="address.rua"
          type="text"
          id="rua"
          required
        ></b-form-input>
      </b-form-group>

      <b-form-group label="Cidade" label-for="cidade">
        <b-form-input
          v-model="address.cidade"
          type="text"
          id="cidade"
          required
        ></b-form-input>
      </b-form-group>

      <b-form-group label="CEP" label-for="cep">
        <b-form-input
          v-model="address.cep"
          type="text"
          id="cep"
          required
        ></b-form-input>
      </b-form-group>

      <b-button type="submit" variant="primary" class="mt-3">Salvar</b-button>
      <b-button @click="voltar" type="button" variant="secondary" class="mt-3 ml-2">Cancelar</b-button>
    </b-form>
  </div>
</template>

<script>
import Address from '@/interface/interface.js';

export default {
  name: 'NovoEndereco',
  data() {
    return {
      address: new Address(),
    };
  },
  methods: {
    async salvarEndereco() {
      try {
        await fetch('http://localhost:8025/address', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(this.address),
        });
        this.$router.push('/');
      } catch (error) {
        console.error('Erro ao salvar endereço:', error);
      }
    },
    voltar() {
      this.$router.push('/');
    },
  },
};
</script>

<style scoped>
.container {
  max-width: 600px;
  margin: auto;
  padding-top: 20px;
}
</style>
