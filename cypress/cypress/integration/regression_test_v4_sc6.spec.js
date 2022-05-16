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

    it('Test scenario #6', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost()
        logout()
        login(userName, password)
        deleteAPost()
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostDoesNotExist(postUrl)
        })
    });
});