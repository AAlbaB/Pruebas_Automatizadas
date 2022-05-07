import { login } from "../support/utils";
import { password, userName, baseUrl } from "../support/constants";

describe('Testing basic post creation', () => {
    beforeEach(() => {
       login(userName, password);
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