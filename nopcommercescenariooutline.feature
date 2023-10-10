Feature: Book category

Background: I should be able to see homepage
  Given  I enter the URL "https://demo.nopcommerce.com/" in browser
  And    I am on home page

Scenario Outline: I should be able to see top menu tabs on homepage with categories

  When I am on home page
  Then I should be able to see top menu tabs with "<categories>"

  Examples:
  | categories        |
  | computer          |
  | electronics       |
  | Apparel           |
  | Digital downloads |
  | Books             |
  | Jewellery         |
  | Gift card         |

Scenario Outline: I should be able to see book page with filters

    When  I select book category from top menu tabs on home page
    Then  I should be navigate to book category
    And   I should be able to see "<filters>"

  Examples:
  | filters   |
  | sort by   |
  | display   |
  | the grid  |
  | List tab  |

Scenario Outline: I should be able to see list of terms of each filter
  Given  I am on book page
  When   I click on"<filter>"
  And    I click on any "<option>"
  Then   I should be able to choose any filter option from the list
  And    I should be able to see "<result>"

  Examples:
  | filter               |  option                   |   result                                                          |
  | sort by              | Name : A to Z             | sorted product with the product name in alphabetical order A to Z |
  | sort by              | Name : Z to A             | sorted product with the product name in alphabetical order Z TO A |
  | sort by              | price: low to high        | sorted product with the price in descending order                 |
  | sort by              | price: high to low        | sorted product with the price in ascending order                  |
  | sort by              | Created on                | Recently added product should be show first                       |
  | Display              | 3                         | 3 products in a page                                              |
  | Display              | 6                         | 6 products in a page                                              |
  | Display              | 9                         | 9 products in a page                                              |

Scenario Outline:  I should be able to see product display format according display format type as per given picture in srs document
  Given I am on book page
  When  I click on"<display format icon>"
  Then  I should be able to see product display format according display format type as per given picture in SRS document

  Examples:
  | display format icon |
  | Grid                |
  | List                |