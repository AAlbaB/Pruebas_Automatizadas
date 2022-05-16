import { checkIfPostDoesNotExist, checkIfPostExists, createAPost, deleteAPost, login, logout, updateAPost } from "../support/utils";
import { password, userName, baseUrl } from "../support/constants";

const postTitle = 'The pets blog';

Cypress.on('uncaught:exception', (err, runnable) => {
    return false;
});


describe('Ghost testing', () => {
    beforeEach(() => {
       login(userName, password);
    })

    it('Test scenario #10', () => {
        createAPost(postTitle, 'Pets are awesome')
        logout()
        login(userName, password)
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });
});