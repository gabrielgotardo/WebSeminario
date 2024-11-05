<template>
  <div class="container">
    <b-card>
      <h3 class="mb-4">Editar Endereço</h3>
      <b-form @submit.prevent="salvarEndereco">
        <b-form-group label="Rua:" label-for="rua">
          <b-form-input
            id="rua"
            v-model="address.rua"
            required
          ></b-form-input>
        </b-form-group>
        <b-form-group label="Cidade:" label-for="cidade">
          <b-form-input
            id="cidade"
            v-model="address.cidade"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group label="CEP:" label-for="cep">
          <b-form-input
            id="cep"
            v-model="address.cep"
            required
          ></b-form-input>
        </b-form-group>

        <b-button type="submit" variant="primary" class="mr-2">
          Salvar
        </b-button>
        <b-button variant="secondary" @click="voltar">
          Cancelar
        </b-button>
      </b-form>
    </b-card>
  </div>
</template>

<script>
import Address from '@/interface/interface.js';

export default {
  name: 'EditarEndereco',
  data() {
    return {
      address: new Address(),
    };
  },
  methods: {
    async salvarEndereco() {
      try {
        const url = `http://localhost:8025/address/${this.address.id}`;
        const response = await fetch(url, {
          method: 'PUT',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(this.address),
        });

        if (response.ok) {
          this.$router.push({ name: 'Home' });
        } else {
          console.error('Erro ao salvar o endereço:', response);
        }
      } catch (error) {
        console.error('Erro ao salvar o endereço:', error);
      }
    },
    voltar() {
      this.$router.push({ name: 'Home' });
    },
    carregaEnderecoAoAbrir() {
      const addressId = this.$route.params.id; 
      if (addressId) {
        fetch(`http://localhost:8025/address/${addressId}`)
          .then(response => response.json())
          .then(data => {
            this.address = new Address(data.id, data.rua, data.cidade, data.cep);
          })
          .catch(error => {
            console.error('Erro ao carregar o endereço:', error);
          });
      }
    },
  },
  created() {
    this.carregaEnderecoAoAbrir(); 
  },
};
</script>

<style scoped>
.mb-4 {
  margin-bottom: 1.5rem;
}
</style>
