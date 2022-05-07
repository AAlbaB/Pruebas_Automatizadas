import { baseUrl } from "./constants"

export const login = (userName, password) => {
    cy.visit(baseUrl + 'ghost/')
    cy.wait(700)
    cy.get('form').within(() => {
        cy.get('input[name="identification"]').type(userName)
        cy.get('input[name="password"]').type(password)
        cy.get('button[type="submit"]').click()
    })
    cy.wait(1000)
    cy.url().should('eq', 'http://localhost:3001/ghost/#/dashboard')
}