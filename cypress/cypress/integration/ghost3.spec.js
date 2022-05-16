import { password, userName } from "../support/constants";
import {login, createAPost, updateAPost, deleteAPost, checkIfPostDoesNotExist, logout, checkIfPostExists} from "../support/utilsv3"

const postTitle = 'The pets blog'

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

    it('Test scenario #7', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost()
        createAPost('A new post 2', 'A new content')
        updateAPost()
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

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

    it('Test scenario #9', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost()
        createAPost('A new post 2', 'Test')
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

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