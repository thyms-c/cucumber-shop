Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 10 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Duck" with price 10.21 and stock of 1000 exits

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    And product "Bread" stock should be 8

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And product "Bread" stock should be 8
    And I buy "Jam" with quantity 1
    And product "Jam" stock should be 9
    Then total should be 121.00
    And I buy "Duck" with quantity 1
    And product "Duck" stock should be 999
    Then total should be 131.21
