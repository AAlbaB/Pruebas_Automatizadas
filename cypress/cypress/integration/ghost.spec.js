import { checkIfPostDoesNotExist, checkIfPostExists, createAPost, deleteAPost, login, logout, updateAPost } from "../support/utils";
import { password, userName, baseUrl } from "../support/constants";

const postTitle = 'The pets blog';

describe('Ghost testing', () => {
    beforeEach(() => {
       login(userName, password);
    })

    it('Test scenario #1', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost()
        deleteAPost()
        createAPost('A new post', 'A new description')
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExist(postUrl)
        })
    });

    it('Test scenario #2', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost()
        logout()
        login(userName, password)
        createAPost('A new post')
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

    it('Test scenario #3', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost(postTitle)
        createAPost('A new post 2', 'A new description 2')
        updateAPost()

        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

    it('Test scenario #4', () => {
        createAPost(postTitle, 'Pets are awesome')
        logout()
        login(userName, password)
        updateAPost()
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

    it('Test scenario #5', () => {
        createAPost(postTitle, 'Pets are awesome')
        logout()
        login(userName, password)
        deleteAPost()
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostDoesNotExist(postUrl)
        })
    });

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

    it('Test scenario #11', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost()
        deleteAPost()
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostDoesNotExist(postUrl)
        })
    });

    it('Test scenario #12', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost()
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

    it('Test scenario #13', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost()
        createAPost('A new post 2', 'A new description')
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

    it('Test scenario #14', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost()
        createAPost('A new post 2', 'A new description')
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

    it('Test scenario #15', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost()
        deleteAPost()
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostDoesNotExist(postUrl)
        })
    });

    it('Test scenario #16', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost()
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostDoesNotExist(postUrl)
        })
    });

    it('Test scenario #17', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost()
        deleteAPost()
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostDoesNotExist(postUrl)
        })
    });

    it('Test scenario #18', () => {
        createAPost(postTitle, 'Pets are awesome')
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

    it('Test scenario #19', () => {
        createAPost(postTitle, 'Pets are awesome')
        updateAPost()
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostExists(postUrl)
        })
    });

    it('Test scenario #20', () => {
        createAPost(postTitle, 'Pets are awesome')
        deleteAPost()
        
        cy.get('@postUrl').then((postUrl) => {
            logout()
            checkIfPostDoesNotExist(postUrl)
        })
    });
});