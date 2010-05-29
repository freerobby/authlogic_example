Feature: Manage users
  In order to utilize the site
  a visitor
  wants an account
  
  Scenario: Sign Up
    Given I am on the home page
    And I follow "Register"
    
    When I fill in "login" with "JohnSmith"
    And I fill in "password" with "password"
    And I fill in "password confirmation" with "password"
    And I press "Register"
    
    Then I should see "Account registered!"
    And I should see "Logout"
  
  Scenario: Login
    Given I have an account as "JohnSmith" with password "password"
    And I am on the new user session page
    
    When I fill in "login" with "JohnSmith"
    And I fill in "password" with "password"
    And I press "Login"
    
    Then I should see "Login successful!"
  
  Scenario: Logout
    Given I am logged in
    
    When I follow "Logout"
    
    Then I should see "Logout successful!"
    And I should see "Log In"