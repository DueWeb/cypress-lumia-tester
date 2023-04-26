Feature: Add to cart
    As a user I want to be able to add products
    to the cart, so that I can buy them.

Background: 
    Given that I am on the start page

Scenario Outline: Adding "<quantity>" "<product>" to the cart
    And that I have searched for "<product>"
    When I click the buy button "<quantity>" times
    Then there should be "<quantity>" "<product>" added in the cart

    Examples:
      | product    |  quantity |
      | Bordslampa |  2        | 
      | Golvlampa  |  3        | 
      | Spotlight  |  9        | 
      | Lampett    |  7        | 

Scenario: Adding "2" "Bordslampa" to the cart
    And that I have searched for "Bordslampa"
    When I click the buy button "2" times
    Then there should be "2" "Bordslampa" added in the cart

Scenario: Adding "3" "Golvlampa" to the cart
    And that I have searched for "Golvlampa"
    When I click the buy button "3" times
    Then there should be "3" "Golvlampa" added in the cart

Scenario: Adding "9" "Spotlight" to the cart
    And that I have searched for "Spotlight"
    When I click the buy button "9" times
    Then there should be "9" "Spotlight" added in the cart

Scenario: Adding "7" "Lampett" to the cart
    And that I have searched for "Lampett"
    When I click the buy button "7" times
    Then there should be "7" "Lampett" added in the cart
