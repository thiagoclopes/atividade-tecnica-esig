# ATIVIDADE TÉCNICA

## Descrição
O projeto consiste em criar um script que realize um dump e restore de um banco de dados PostgreSQL, além de verificar o status das instâncias do JBoss e Tomcat em um ambiente de teste.

## Pré-requisitos
- [Docker](https://www.docker.com/get-started)
- [Java JDK 11](https://www.oracle.com/br/java/technologies/javase/jdk11-archive-downloads.html)
- [JBoss](https://www.wildfly.org/downloads/)
- [Apache Tomcat](http://tomcat.apache.org/)

1. **Configuração das variáveis de ambiente:**
   - Defina a variável de ambiente "JAVA_HOME" para o diretório de instalação do JDK.
   - Configure também as variáveis "JBOSS_HOME" e "CATALINA_HOME" para apontarem respectivamente para os diretórios de instalação do JBoss e do Tomcat.

2. **Iniciar o Contêiner PostgreSQL:**
   - Utilize o Docker Desktop para baixar e executar a imagem do PostgreSQL.
   - Defina o nome do contêiner, a porta do host e as variáveis de ambiente POSTGRES_USER e POSTGRES_PASSWORD.
   - Verifique se o contêiner está em execução com o comando "docker ps" no terminal.

3. **Criar um Banco de Dados:**
   - Acesse o contêiner PostgreSQL através do comando "docker exec -it nome_do_container psql -U postgres".
   - Crie um banco de dados utilizando o comando "CREATE DATABASE nome_do_banco_de_dados;".
   - Utilize comandos como "\l" para listar bancos de dados disponíveis, "\c nome_do_banco" para acessar um banco específico, "\dt" para listar tabelas e "\q" para sair do shell psql.

4. **Configurando e Testando os Scripts:**
   - Edite os arquivos "dump_db" e "restore_db" com as configurações do seu banco de dados PostgreSQL.
   - Execute os scripts para realizar o dump e restore do banco de dados e verifique a criação e restauração dos arquivos.

5. **Alterar a porta do Tomcat:**
   - No arquivo "server.xml" do Tomcat, altere a porta padrão de 8080 para 8081 para evitar conflitos com o JBoss.

6. **Iniciar os Servidores:**
   - Execute os scripts "check_jboss.bat" e "check_tomcat.bat" para verificar se os servidores JBoss e Tomcat estão em funcionamento. Caso estejam inativos por mais de 1 minuto, os scripts iniciam automaticamente.
