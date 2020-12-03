/* global Given, When, Then */

When ("que faço a requisição para api em português com o {} decimal", (num) => {
    cy.request({
        url: `/${num}`,
        method: 'GET',
        failOnStatusCode: false
  }).as('response')
})

When ("que faço a requisição para api em inglês com o {} decimal", (num) => {
    cy.request({
        url: `/en/${num}`,
        method: 'GET',
        failOnStatusCode: false
  }).as('response')
})

Then("vejo status code {int}", (code) => {
    cy.get('@response').its('status').should('be.equal', code)
})

Then("vejo o json em português com {}", (value) => {
    cy.get('@response').its('body.extenso').should('exist')
    cy.get('@response').its('body.extenso').should('be.equal', value)
})

Then("vejo o json em inglês com {}", (value) => {
    cy.get('@response').its('body.full').should('exist')
    cy.get('@response').its('body.full').should('be.equal', value)
})