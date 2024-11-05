<template>
  <div class="container">
    <h3>Endereços</h3>
    <button @click="irParaNovoEndereco" class="btn btn-primary btn-sm">
      Novo Endereço
    </button>
    <table class="table">
      <thead>
        <tr>
          <th>ID</th>
          <th>Rua</th>
          <th>Cidade</th>
          <th>CEP</th>
          <th>Ações</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="address in addresses" :key="address.id">
          <td>{{ address.id }}</td>
          <td>{{ address.rua }}</td>
          <td>{{ address.cidade }}</td>
          <td>{{ address.cep }}</td>
          <td>
            <button
              @click="deletarEndereco(address.id)"
              class="btn btn-danger btn-sm"
            >
              Deletar
            </button>
            <button
              @click="editarEndereco(address.id)"
              class="btn btn-primary btn-sm"
            >
              Editar
            </button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import Address from '@/interface/interface.js'; 

export default {
  name: 'ListaEndereco',
  data() {
    return {
      addresses: [],
    };
  },
  methods: {
    async carregaTodosEnderecosInicial() {
      try {
        const response = await fetch("http://localhost:8025/address", {
          method: "GET",
        });
        const data = await response.json();
        this.addresses = data.map(
          (item) => new Address(item.id, item.rua, item.cidade, item.cep)
        );
      } catch (error) {
        console.error("Erro ao carregar endereços:", error);
      }
    },
    async deletarEndereco(id) {
      try {
        await fetch(`http://localhost:8025/address/${id}`, {
          method: "DELETE",
        });
        this.addresses = this.addresses.filter((address) => address.id !== id);
      } catch (error) {
        console.error("Erro ao deletar endereço:", error);
      }
    },
    editarEndereco(id) {
      this.$router.push({ name: "EditarEndereco", params: { id } });
    },
    irParaNovoEndereco() {
      this.$router.push({ name: "NovoEndereco" });
    },
  },
  created() {
    this.carregaTodosEnderecosInicial();
  },
};
</script>

<style scoped>
.table {
  width: 100%;
  margin-top: 20px;
}
.btn {
  margin-bottom: 10px;
  margin-right: 5px;
}
</style>
