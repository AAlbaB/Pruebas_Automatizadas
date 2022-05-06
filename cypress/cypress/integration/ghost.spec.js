const baseUrl = 'http://localhost:3001/'
const userName = 'hola@miso.com'
const password = 'Misotest2022*'

describe('Testing basic post creation', () => {
    beforeEach(() => {
        cy.visit(baseUrl + 'ghost/')
        cy.wait(700)
        cy.get('form').within(() => {
            cy.get('input[name="identification"]').type(userName)
            cy.get('input[name="password"]').type(password)
            cy.get('button[type="submit"]').click()
        })
        cy.wait(1000)
        cy.url().should('eq', 'http://localhost:3001/ghost/#/dashboard')
    })
    
    it('Create a new post', () => {
        // Basic post creation
        cy.visit(baseUrl + 'ghost/#/editor/post/')
        cy.wait(700)
        cy.get('textarea[placeholder="Post title"]').type("This is a new post")
        cy.get('div[data-placeholder="Begin writing your post..."]').type("This is the description")
        cy.get('div').contains('Publish').click()
        cy.get('button').contains('Publish').click()
        cy.get('.modal-content').within(() => {
            cy.get('button').contains('Publish').click()
        })

        // Check if the post was created

        cy.get('.gh-notification-title').should("have.text", "Published")
    })
});