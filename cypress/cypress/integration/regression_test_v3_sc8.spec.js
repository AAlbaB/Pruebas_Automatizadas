import { password, userName } from "../support/constants";
import {login, createAPost, checkIfPostExists, logout, deleteAPost, updateAPost} from "../support/utilsv3"

const postTitle = 'The pets blog'

Cypress.on('uncaught:exception', (err, runnable) => {
    return false;
});

describe('Ghost v3 testing', () => {
    beforeEach(() => {
        login(userName, password);
    })

    it('Test scenario #8', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost()
        createAPost('A new post 2', 'A new content')
        updateAPost()
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });
});