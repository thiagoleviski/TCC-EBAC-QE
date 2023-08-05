import listaProdutos from "../pageObjects/4.page";

const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor")

Given("que estou na pagina da EBAC-SHOP", () => {
  cy.visit(`${url}`)
});

When("eu estou na lista de produtos", () => {
  cy.visit(`${url}/produtos/`)
});

When("clico no ícone {}", (tipo) =>{
  listaProdutos.escolhendoVisualizacao(tipo)
})

Then("a visualização se torna em {}", (resultado)=>{
  listaProdutos.resultadoVisualizacao(resultado)
});

When("clico no item {} da lista de ordenação", (tipo) => {
  
})
Then("a ordem dos produtos se torna {}", (resultado) => {
  
})