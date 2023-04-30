export default [
  {
    path: '/',
    component: async () => await import('src/components/HeaderAndFooter.vue'),
    children: [
      { path: '/', component: async () => await import('src/pages/HomePage.vue') },
      { path: '/test', component: async () => await import('src/pages/RouterTest.vue') },
      { path: '/entrar', component: async () => await import('src/pages/PaginaLogin.vue') },
      {
        path: '/cadastro',
        component: async () => await import('src/pages/CadastroEgresso.vue')
      },
      {
        path: '/cadastro-perfil',
        component: async () => await import('src/pages/CadastroPerfil.vue')
      },
      {
        path: '/cadastro-admin',
        component: async () => await import('src/pages/CadastroAdmin.vue')
      },
      {
        path: '/egresso',
        component: async () => await import('src/pages/PerfilEgresso.vue')
      }
    ]
  }
]
