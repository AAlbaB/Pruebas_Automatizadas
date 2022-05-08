import { checkIfPostDoesNotExist, checkIfPostExist, createAPost, deleteAPost, login, logout, updateAPost } from "../support/utils";
import { password, userName, baseUrl } from "../support/constants";

const postTitle = 'The pets blog';

describe('Ghost testing', () => {
    beforeEach(() => {
       login(userName, password);
    })
    
    it('Test scenario #1', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost(postTitle)
        deleteAPost(postTitle)
        createAPost('A new post')
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExist(postUrl)
        })
    });

    it('Test scenario #2', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost(postTitle)
        logout()
        login(userName, password)
        createAPost('A new post')
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExist(postUrl)
        })
    });

    it('Test scenario #3', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost(postTitle)
        createAPost('A new post 2')
        updateAPost('A new post 2')

        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExist(postUrl)
        })
    });

    it('Test scenario #4', () => {
        createAPost(postTitle, 'Pets are awesome')
        logout()
        login(userName, password)
        updateAPost(postTitle)
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExist(postUrl)
        })
    });

});