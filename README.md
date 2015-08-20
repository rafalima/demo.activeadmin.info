<h1>Pré-requistos</h1>
<ol>
  <li>Instalar <a target="_BLANK" href="https://github.com/sstephenson/rbenv">Rbenv</a></li>
  <li>Instalar Ruby 2.2.0
    <ul>
      <li><a target="_BLANK" href="http://rubyinstaller.org/">windows installer</a></li>
      <li><a target="_BLANK" href="https://github.com/sstephenson/rbenv#installing-ruby-versions">unix</a></li>
    </ul>
  </li>
  <li>PostgreSql</li>
  <li>Instalar o <a target="_BLANK" href="http://bundler.io/">bundler</a></li>
</ol>

<h1>Rodando a aplicação</h1>
<ol>
  <li>Baixar o repostitório</li>
  <li>Executar "bundle install" no root do projeto para instalar todas as dependências definidas no Gemfile</li>
  <li>Executar "rake db:schema:load" para criar todas as tabelas do banco</li>
  <li>Executar "rake db:seed" para criar vários dados (produtos e usuários)</li>
  <li>Executar "rails s" para subir a aplicação.</li>
  <li>No browser, acessar o seguinte endereço: "http://localhost:3000"</li>
</ol>

<hr />

<h1>Requirement</h1>
<ol>
  <li>Install <a target="_BLANK" href="https://github.com/sstephenson/rbenv">Rbenv</a></li>
  <li>Install Ruby 2.2.0
    <ul>
      <li><a target="_BLANK" href="http://rubyinstaller.org/">Windows installer</a></li>
      <li><a target="_BLANK" href="https://github.com/sstephenson/rbenv#installing-ruby-versions">unix</a></li>
    </ul>
  </li>
  <li>Install <a target="_BLANK" href="http://bundler.io/">bundler</a></li>
</ol>

<h1>Running the application</h1>
<ol>
  <li>Download the code</li>
  <li>Execute "bundle install" on the root of the project to install all dependencies defined in the Gemfile</li>
  <li>Execute "rake db:schema:load" to create the database tables</li>
  <li>Execute "rake db:seed" to populate the database (products and users)</li>
  <li>Execute "rails s" to start the application</li>
  <li>Access "http://localhost:3000"</li>
</ol>



