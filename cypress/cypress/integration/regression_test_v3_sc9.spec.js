import { password, userName } from "../support/constants";
import {login, createAPost, deleteAPost, checkIfPostExists, logout} from "../support/utilsv3"

const postTitle = 'The pets blog'

Cypress.on('uncaught:exception', (err, runnable) => {
    return false;
});

describe('Ghost v3 testing', () => {
    beforeEach(() => {
        login(userName, password);
    })

    it('Test scenario #9', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost()
        createAPost('A new post 2', 'Test')
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });
});