# Cria usuário padrão para o projeto
User.destroy_all
User.create(name: 'William Franklin', email: 'wilfrank84@gmail.com', password: 'testeteste')