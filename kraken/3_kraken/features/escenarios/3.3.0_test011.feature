Feature: Login	Crear post	Editar post	Eliminar post	Logout	Verificar

@user1 @web
Scenario: Eliminar post luego de crear y editar

  #Login
    Given I navigate to page "<LOGIN_URL1>"
    And I wait for 3 seconds
    And I login with "<USERNAME1>" and "<PASSWORD1>"
    And I wait for 5 seconds

  #Create post
    When I navigate to page "<POST_EDITOR_URL1>"
    And I wait for 2 seconds
    And I write a post "Test Post title" and "Test Post body"
    And I wait for 1 seconds
    Then I validate if the post was published
    And I wait for 1 seconds

  #Edit post
    When I navigate to page "<POSTS_URL1>"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I edit a post "Test Edited Post title"
    And I wait for 2 seconds
    Then I validate if the post was published
    And I wait for 2 seconds

  #Delete post
    When I navigate to page "<POSTS_URL1>"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    Then I delete post

  #Logout
    When I navigate to page "<HOME_URL1>"
    And I wait for 4 seconds
    And I sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "<GHOST_URL1>"
    And I wait for 3 seconds
    And I check if the post "Test Post title" was published on user page
    And I wait for 3 seconds