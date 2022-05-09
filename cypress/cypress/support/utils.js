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
    cy.url().should('eq', baseUrl + 'ghost/#/dashboard')
}


export const createAPost = (title, content) => {
    cy.visit(baseUrl + 'ghost/#/editor/post/')
    cy.wait(700)
    cy.get('textarea[placeholder="Post title"]').type(title)
    cy.get('div[data-placeholder="Begin writing your post..."]').type(content)
    cy.get('div').contains('Publish').click()
    cy.get('button').contains('Publish').click()
    cy.get('.modal-content').within(() => {
        cy.get('button').contains('Publish').click()
    })
    cy.get('.gh-notification-title').should("have.text", "Published")
    cy.get('a').contains('View Post').invoke('attr', 'href').then((attr) => {+attr}).as('postUrl');
}

export const getFirstPost = (title) => {
    cy.visit(baseUrl + 'ghost/#/posts')
    cy.wait(700)
    cy.get('h3').contains(title).click()
}

export const updateAPost = (title) => {
    getFirstPost(title)
    cy.get('div[data-placeholder="Begin writing your post..."]').type('Changing the post description')
    cy.get('span').contains('Update').click()
    cy.get('span').contains('Update').click()
    cy.get('.gh-notification-title').should("have.text", "Updated")
}

export const deleteAPost = (title) => {
    getFirstPost(title)
    cy.get('button[title="Settings"]').click()
    cy.get('span').contains(' Delete ').click()
    cy.wait(500)
    cy.get('button[class="gh-btn gh-btn-red gh-btn-icon ember-view"]').click()
    cy.url().should('eq', baseUrl + 'ghost/#/posts')
}

export const logout = () => {
    cy.visit(baseUrl + 'ghost/#/dashboard')
    cy.get('div[class="gh-user-avatar relative"]').click()
    cy.get('a[href="#/signout/"]').click()
    cy.url().should('eq', baseUrl + 'ghost/#/signin')
}

export const checkIfPostDoesNotExist = (postUrl) => {
    cy.request({url: postUrl, failOnStatusCode: false}).its('status').should('equal', 404)
}

export const checkIfPostExists = (postUrl) => {
    cy.request({url: postUrl}).its('status').should('equal', 200)
}