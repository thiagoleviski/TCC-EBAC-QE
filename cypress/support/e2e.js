import { elements } from '../e2e/elementMapping/elements'

url = Cypress.config("baseUrl")
user = Cypress.config("env.user")
password = Cypress.config("env.password")

before(() => {
    cy.visit(`${url}/minha-conta/`)
    cy.get(elements.emailRegister).type("admin@admin.com.br")
    cy.get(elements.passwordRegister).type("admin")
    cy.get(elements.submit).click()
    cy.get('li:contains(Erro)').then((val)=>{
        if(val){
            cy.get(elements.emailLogin).type("admin@admin.com.br")
            cy.get(elements.passwordLogin).type("admin")
            cy.get(elements.login).click()
            cy.visit(`${url}`)
        }else{cy.visit(`${url}`)}
    })
});

after(() => {
    cy.visit(`${url}/minha-conta/`)
    cy.get('a:contains(Logout)').click()
});