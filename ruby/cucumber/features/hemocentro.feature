Feature: Accessing URL Hemocentro and getting blood supply information

  Scenario: Success acess URL and Get Informations
    Given I am on "http://www.hemocentro.unicamp.br/"
    When accessing url
    Then verify page correct
    When I am looking for blood supply information
    Then I save the information in a .csv