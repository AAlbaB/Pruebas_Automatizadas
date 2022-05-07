import { createAPost, deleteAPost, login, logout, updateAPost } from "../support/utils";
import { password, userName, baseUrl } from "../support/constants";

describe('Testing basic post creation', () => {
    beforeEach(() => {
       login(userName, password);
    })
    
    it('Create a new post and check if was created correctly', () => {
        deleteAPost()
        logout()
    })
});