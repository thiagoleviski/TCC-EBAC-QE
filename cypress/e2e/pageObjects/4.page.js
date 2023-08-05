import { elements } from "../elementMapping/elements";

const listaProdutos  = {
    escolhendoVisualizacao: (tipo)=>{
        switch (tipo) {
            case "Grid":
                cy.get(elements.grid).click()
                break;
            case "List":
                cy.get(elements.list).click()
                break;
        }
    },
    resultadoVisualizacao: (resultado)=>{
        switch (resultado) {
            case "quadros":
                cy.get(elements.gridView).should('be.visible')
                break;
            case "lista":
                cy.get(elements.listView).should('be.visible')
                break;
        }
    },
    ordemVisualizacao: (tipo)=>{
        switch (tipo) {
            case "popularidade":
                cy.get(elements.ordem).click()
                cy.select('Ordenar por popularidade')
                break;
            case "média de classificação":
                cy.get(elements.ordem).click()
                cy.select('Ordenar por média de classificação')
                break;
            case "mais recente":
                cy.get(elements.ordem).click()
                cy.select('Ordenar por mais recente')
                break;
            case "preço: maior para menor":
                cy.get(elements.ordem).click()
                cy.select('Ordenar por preço: menor para maior')
                break;
            case "preço: menor para maior":
                cy.get(elements.ordem).click()
                cy.select('Ordenar por preço: maior para menor')
                break;                
        }
    },
    ordemResultado: (tipo)=>{
        switch (tipo) {
            case "mais populares":
                cy.get('span:contains("orderby: popularity")').should('be.visible')
                break;
            case "melhores classificados primeiro":
                cy.get('span:contains("orderby: rating")').should('be.visible')
                break;
            case "mais novos primeiro ":
                cy.get('span:contains("orderby: date")').should('be.visible')
                break;
            case "maior preço primeiro":
                cy.get('span:contains("orderby: price low to high")').should('be.visible')
                break;
            case "menor preço primeiro":
                cy.get('span:contains("orderby: price high to low")').should('be.visible')
                break;                
        }
    },
};
module.exports = listaProdutos;