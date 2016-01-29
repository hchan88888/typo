Feature: Access New Categories
  As a blog administrator
  I want to be able to access new categories page

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access page for new categories from dashboard
    Then I should see "Categories"
    And I follow "Categories"
    Then I should see "Categories"
    And I should see "Permalink"
    And I should see "Keywords"
    And I should see "Description"
    And I should see "Name"


  Scenario: Successfully access page for new categories from new article
    Given I am on the new article page
    And I follow "New Category"
    Then I should see "Categories"
    And I should see "Permalink"
    And I should see "Keywords"
    And I should see "Description"
    And I should see "Name"

    