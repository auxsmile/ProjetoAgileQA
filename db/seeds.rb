# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    roles = Role.create!([{name: "Analista de Qualidade"},
                        {name: "Consultor"},
                        {name: "Desenvolvedor"},
                        {name: "Especilista do Domínio"},
                        {name: "Gerente de Processo"},
                        {name: "Gerente de Projeto"},
                        {name: "Product Owner"},
                        {name: "Scrum Master"},
                        {name: "Testador"},
                        ])
                        
    procedure = Procedure.create!([{name: "Extreme Programming(XP)", description: "- Comunicação: foca a comunicação direta entre os envolvidos no projeto, reduzindo ao máximo a documentação formal;
- Simplicidade: objetiva realizar as tarefas da maneira mais simples possível e com menor custo, inclusive para mudanças futuras, evitando o desenvolvimento prévio de funcionalidades que posteriormente poderão não ser utilizadas;
- Feedback: permite uma maior interação e conhecimento sobre o sistema entre os envolvidos (programadores e cliente);
- Coragem: a melhoria de um projeto pode estar relacionada a atitudes corajosas como alterar o código escrito, reescrever o código, entre outras."}])

    pratice = Pratice.create!([{name:"O jogo do planejamento", description:"o planejamento utiliza-se de casos de uso simplificados (estórias) levantados com a participação da equipe de desenvolvimento (técnico) e do cliente (negócio), estimulados pela figura do gerente, que utiliza como métrica a razão entre o tempo estimado para desenvolver e o tempo realmente gasto (que deve ser menor)."},
                              {name:"Releases pequenos", description:"os releases devem ser de curta duração, estimulando sua frequência e, em decorrência disto, a constante comunicação entre os envolvidos e o melhoramento do sistema."},
                              {name:"Metáfora", description:"utilização de uma metáfora (exemplo ou modelo) que auxilie na compreensão do sistema pelos envolvidos (programadores e clientes), oferecendo uma visão geral sobre o sistema."},
                              {name:"Projeto simples", description:"o projeto deve satisfazer os problemas atuais, implementando as funcionalidades já definidas e dispensando o investimento na resolução prévia de problemas que ainda estão por vir"},
                              {name:"Testes constantes", description:"inclui a aplicação de testes para verificação de cada parte produzida pelos programadores (teste de unidade) e testes para verificação do sistema como um todo, junto ao cliente (teste funcional)."},
                              {name:"Refatoramento", description:"melhoria do projeto do código já definido, por meio da aplicação de uma série de passos, visando uma melhor adaptação do projeto a mudanças"},
                              {name:"Programação em pares", description:"o código é produzido por um par de programadores em um mesmo computador, os quais se alternam nos papéis de codificador, que elabora os algoritmos e a lógica de programação, e de observador, que pensa em melhorar, simplificar e corrigir o código produzido."},
                              {name:"Propriedade coletiva do código", description:"a equipe trabalha de forma unida, prevalecendo a busca pela qualidade e melhoria do código e do sistema como um todo."},
                              {name:"Integração contínua", description:"integrações podem ser realizadas a qualquer tempo, desde que não existam erros nas novas funcionalidades."},
                              {name:"Semana de quarenta horas", description:"existe a possibilidade de que a carga horária da equipe exceda quarenta horas semanais, observando, porém, a carga tolerável que não gere insatisfação entre seus membros."},
                              {name:"Cliente no local", description:"requer a inclusão na equipe de uma pessoa da parte do cliente, que domine ou, ao menos, detenha os conceitos principais sobre o negócio ao qual o sistema se destina, para auxiliar na definição das funcionalidades e na utilização do software."},
                              {name:"Padrões de codificação", description:"a utilização de padrões é imprescindível para garantir o desenvolvimento em equipe, já que todos possuem acesso e poder de alteração sobre o código."}])
                              