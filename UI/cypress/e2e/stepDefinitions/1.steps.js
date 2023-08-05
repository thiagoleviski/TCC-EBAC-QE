import addItem from "../pageObjects/1.page";

const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor")

Given("que escolhi o produto que quero comprar na página da EBAC-SHOP", () => {
  addItem.escolhendoProduto();
});

When("eu escolho {} produtos", (quantidade) => {
  addItem.configurandoProduto(quantidade);
});

Then("{} adicionar minha compra ao carrinho", (resultado)=>{
  addItem.resultadoEscolhendoProduto(resultado);
});