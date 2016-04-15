#
# Feature: Simple Product
#
# Created with BDD Editor on: 13 April, 2016
#
# Please follow us at @bddeditor AND if you find this tool useful please share with friends and colleagues!
#

@Wip 
Feature: Simple Product
  As A Product Manager
  I want to be able to create a simple product
  So That I can keep track of my product set

  Scenario: Create multiple products with price
    Given Products
      |   SKU    | Name  | Description | Net Price | VAT rate | VAT  | Gross Price | Colour |      Image      |
      | 12345678 | Linda | Fancy dress |   9.16    |    20    | 1.83 |    10.99    |  Grey  | FancyDressImage |
      | 12345679 | Jane  |    Skirt    |   10.00   |    0     | 0.00 |    10.00    |  Pink  |   ChildsSkirt   |
    When I set up the product
    Then the products are created
      |   SKU    | Name  | Description | Net Price | VAT rate | VAT  | Gross Price | Colour |      Image      |
      | 12345678 | Linda | Fancy dress |   9.16    |    20    | 1.83 |    10.99    |  Grey  | FancyDressImage |
      | 12345679 | Jane  |    Skirt    |   10.00   |    0     | 0.00 |    10.00    |  Pink  |   ChildsSkirt   |

  Scenario: Create single product with price
    Given Product
      |   SKU    | Name  | Description | Net Price | VAT rate | VAT  | Gross Price | Colour |      Image      |
      | 12345678 | Linda | Fancy dress |   9.16    |    20    | 1.83 |    10.99    |  Grey  | FancyDressImage |
    When I set up the product
    Then the product is created
      |   SKU    | Name  | Description | Net Price | VAT rate | VAT  | Gross Price | Colour |      Image      |
      | 12345678 | Linda | Fancy dress |   9.16    |    20    | 1.83 |    10.99    |  Grey  | FancyDressImage |

  Scenario: Create a new simple product - something goes wrong
    Given A product create request has been made
    When the product can?t be set up
    Then the product create request is logged
      |      Date Time      |   User    |   SKU    | Name  | Description | Net Price | VAT rate | VAT  | Gross Price | Colour |      Image      |
      | 2015-05-27 12:13:35 | jmitchell | 12345678 | Linda | Fancy dress |   9.16    |    20    | 1.83 |    10.99    |  Grey  | FancyDressImage |
