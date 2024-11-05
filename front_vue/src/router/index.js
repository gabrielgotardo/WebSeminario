import { createRouter, createWebHistory } from 'vue-router';
import Lista from '../pages/ListaEndereco.vue';
import NovoEndereco from '../pages/CriarEndereco.vue';
import EditarEndereco from '../pages/EditarEndereco.vue';

const routes = [
  { path: '/', name: 'Home', component: Lista },
  { path: '/novo-endereco', name: 'NovoEndereco', component: NovoEndereco },
  { path: '/editar-endereco/:id', name: 'EditarEndereco', component: EditarEndereco }
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
