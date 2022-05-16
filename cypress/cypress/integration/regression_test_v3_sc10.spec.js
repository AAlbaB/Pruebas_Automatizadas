import { password, userName } from "../support/constants";
import {login, createAPost, logout, checkIfPostExists} from "../support/utilsv3"

const postTitle = 'The pets blog'

Cypress.on('uncaught:exception', (err, runnable) => {
    return false;
});

describe('Ghost v3 testing', () => {
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