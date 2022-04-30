## DML
[Classe da Atividade](../force-app/main/default/classes/ExercicioDML.cls)

- [x] 1 - Criar um Método que atualize o valor da Oportunidade
- [x] 2 - Criar um método que receba o Id de um Cliente PJ e mude o campo Ativo para false
- [x] 3 - Criar um método que receba o Id de uma Parcela e atualize o campo Status para Paga
- [x] 4 - Criar um método que receba o Id de uma Parcela e delete o registro
- [x] 5 - Criar um método que crie um Contato para o Cliente PJ

## Laço de Repetição e Collections

- [ ] 5 - Revisar para confirmar

- [ ] 6 - Fazer Mapa dos Dados Bancários com um Boolean aplicado na aula de hoje



## Conceitos Básicos da Linguagem

- [ ] 1 - Crie um método que retorne um mapa com os dados bancários por CNPJ de conta.



- [ ] 2 - Crie um método que receba uma lista de inteiros e devolva uma lista com os valores pares. Ex.: Use o método Math.mod que retorna o resto de uma divisão.
[Salesforce Help](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm#apex_System_Math_mod)



- [ ] 3 - Crie um método que faça a comparação dos itens de dois sets e retorne a quantidade de itens que são comuns entre elas.
Parâmetros do método
- set1 (Set<String>)
- set2 (Set<String>)
Retorno do método:
- Um número que indica a quantidade de itens repetidos



- [ ] 4 - Crie um método que receba uma lista de inteiro como parâmetro e retorne o maior valor dessa lista.



- [ ] 5 - Crie um método que receba uma lista de inteiro e retorne uma outra lista com todos os valores multiplicados por 2

## Triggers

- [ ] 1 - Refazer desafio do Trailhead de Trigger de uma maneira nova utilizando coleções

Exercícios - Apex Trigger



- [ ] 1 - Crie um Apex Trigger que, ao criar um registro de Contrato (Contract), crie um registro de Tarefa (Task), caso a Conta (Account) vinculada não possua um registro de Dados Bancários (DadosBancarios__c):
* OwnerId = Proprietário da conta vinculado no caso
* WhatId = Conta vinculada ao caso
* ActivityDate = Data atual
* Subject = Necessário cadastrar os dados bancários do cliente



- [ ] 2 - Crie um Apex Trigger que, ao ativar um Contrato (Contract) (Status = Activated), valide se a Conta (Account) vinculada possui um registro de Dados Bancários (DadosBancarios__c) ativo. Caso não possua, exibir uma mensagem que ele não pode ativar um Contrato (Contract) sem ter um registro de Dados Bancários (DadosBancarios__c) ativo. Obs.: Utilizar o método addError.



- [ ] 3 - Crie um Apex Trigger que, ao criar ou atualizar um registro de Caso (Case) com o tipo “Sinistro”, valide se a conta vinculada possui um Contrato (Contract) ativo. Caso não possua, exibir uma mensagem que ele não pode abrir um sinistro sem um Contrato (Contract) ativo. Obs.: Utilizar o método addError.



- [ ] 4 - Crie um Apex Trigger que, ao criar um registro de Dados Bancários (DadosBancarios__c) ativo, inative todos os outros registros de Dados Bancários ativos do cliente, menos o que acabou de ser ativado.



- [ ] 5 - Crie um Apex Trigger que, ao criar um registro de oportunidade (Opportunity), verifique se o Contato (Contact) não foi preenchido e se a Conta (Account) vinculada possui apenas 1 Contato (Contact). Caso isso aconteça, vincule automaticamente esse Contato (Contact) na Oportunidade (Opportunity).

