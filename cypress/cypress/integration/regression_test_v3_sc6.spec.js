import { password, userName } from "../support/constants";
import {login, createAPost, updateAPost, deleteAPost, checkIfPostDoesNotExist, logout} from "../support/utilsv3"

const postTitle = 'The pets blog'

Cypress.on('uncaught:exception', (err, runnable) => {
    return false;
});

describe('Ghost v3 testing', () => {
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