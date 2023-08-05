import { elements } from "../elementMapping/elements";

const addItem  = {
    escolhendoProduto: ()=>{
        cy.visit(`${url}`)
        cy.get(elements.item).contains("Augusta Pullover Jacket").click();
    },
    configurandoProduto: (quantidade)=>{        
        cy.wait(2000)
        cy.get(elements.tamanho).click({force:true});
        cy.get(elements.cor).click({force:true});
        cy.get(elements.quantidadeItem).clear().type(quantidade)
        cy.get(elements.comprar).click()
    },
    resultadoEscolhendoProduto: (resultado)=>{
       if(resultado === "consigo"){
       }else{
        cy.contains(elements.msgErro, {force:true}).should('be.visible')
       }
    }
};
module.exports = addItem;