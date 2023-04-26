
Feature: Remove from cart
    As a user i want to be able to remove items from the cart so I can buy the remaining items.

Background: 
    Given that I am on the start page

Scenario: Remove "1" "Bordslampa" from the cart
    And that I have searched for "Bordslampa"
    When I click the buy button "2" times
    Then there should be "2" "Bordslampa" left in the cart
    And I click the removeOne button "1" times
    Then there should be "1" "Bordslampa" left in the cart

Scenario: Remove "2" "Golvlampa" from the cart
    And that I have searched for "Golvlampa"
    When I click the buy button "3" times
    Then there should be "3" "Golvlampa" left in the cart
    And I click the removeOne button "2" times
    Then there should be "1" "Golvlampa" left in the cart  

Scenario: Remove "5" "Spotlight" from the cart
    And that I have searched for "Spotlight"
    When I click the buy button "9" times
    Then there should be "9" "Spotlight" left in the cart
    And I click the removeOne button "5" times
    Then there should be "4" "Spotlight" left in the cart 

Scenario: Remove "7" "Lampett" from the cart
    And that I have searched for "Lampett"
    When I click the buy button "8" times
    Then there should be "8" "Lampett" left in the cart
    And I click the removeOne button "7" times
    Then there should be "1" "Lampett" left in the cart          