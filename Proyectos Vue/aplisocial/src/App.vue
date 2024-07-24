<template>
  <div id="app">
    <!-- Header -->
    <header>
      <h1>Mi Sitio Web</h1>
    </header>

    <!-- Navbar -->
    <nav>
      <ul>
        <li><router-link to="/home">Inicio</router-link></li>
        <li><router-link to="/about">Acerca de</router-link></li>
        <li><router-link to="/contact">Contacto</router-link></li>
        <!-- Agrega más elementos del menú según tus necesidades -->
      </ul>
    </nav>

    <!-- Section -->
    <router-view></router-view> <!-- Aquí se cargará el contenido de cada página -->
  </div>
</template>

<script>
// Importa los componentes de las páginas
import Inicio from './components/Inicio.vue';
import AcercaDe from './components/AcercaDe.vue';
import Contacto from './components/Contacto.vue';

export default {
  components: {
    Inicio,
    AcercaDe,
    Contacto
  }
}
</script>

<style>
/* Estilos para tu header y navbar */
</style>
