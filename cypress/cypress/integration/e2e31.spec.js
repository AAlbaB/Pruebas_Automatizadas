// <reference types="cypress" />

const baseUrl = 'http://localhost:2368/';
const userName = 'df.ramirezr1@uniandes.edu.co';
const password = 'pruebas2022'



context('Testing basic Ghost registration', () => {
    beforeEach(()=>{
       cy.visit(baseUrl+'ghost/')
        cy.wait(1000)
    })
   

    it('entrar correctamente con el usuario asignado', () => { 
        cy.contains('Email address')
        cy.contains('Password')
        cy.wait(1000)       
        cy.get('form').within(() => {
            cy.get('input[id="ember7"]').type(userName).should('have.value', userName)
            cy.get('input[id="ember9"]').type(password).should('have.value', password)
            cy.contains('Sign in →').click()
        })
    })
})