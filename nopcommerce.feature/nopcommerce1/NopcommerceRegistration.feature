Feature: Nopcommerce Registration
  As a User
       I want check the Registration page

  Background: I am on Nopcommerce Registration page
     Given  I open Google Chrome Browser
     And    I enter first name "<First Name>"
     And    I enter last name "<Last Name>"
     And    I enter email address "<Email>"
     And    I enter password "<Password>"
     And    I enter confirm password "<Confirm Password>"
     And    Click on Regitration button
     Then   I can see an error message "<error message>"

    Examples:

      | First Name | Last Name | Email            | Password | Confirm Password | error message                              |  |  |
      | ""         | bakshi    | bakshi@gmail.com | 456789   | 456789           | please enter first name                    |  |  |
      | Rohan      | ""        | bakshi@gmail.com | 456789   | 456789           | please enter last name                     |  |  |
      | Rohan      | bakshi    | ""               | 456789   | 456789           | please enter valid email                   |
      | Rohan      | bakshi    | bakshi@gmail.com | ""       | 456789           | password is required                       |
      | Rohan      | bakshi    | bakshi@gmail.com | 456789   | ""               | confirm password is required               |
      | Rohan      | bakshi    | bakshi@gmail.com | 456789   | 46789            | password and confirm password do not match |
      | Rohan      | bakshi    | bakshi@gmail.com | 45689    | 45689            | minimum 6 character password is required   |
      | ""         | ""        | ""               | ""       | ""               | Mandatory (*) filed is required            |

    Scenario: I should be able to select any one redio button from Gender Label of Your Personal Details section
       Given   I am on Gender label of Your personal detail section
       When    I select "Male" radio button
       And     I select "Female" radio button
       Then    I am able to select any one of the radio button

      Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
        Given I am on Date of Birth field of Your Personal Detail section
        When  I select day "<Day>"
        And   I select month "<Month>"
        Then  I am able to select Day, Month and year from drop down list

        Examples:
          | Day | Month    | Year |
          | 11  | November | 1989 |

        Scenario:  I should be able to check and uncheck the Newletter box on Option section
           Given I am on Newsletter label on Options section
           When  I click on Newsletter Checkbox
           And  I again click on Newsletter Chechbox
           Then I was able to check and uncheck the box next to Newsletter label

          Scenario: I should be able to register with valid mandatory (*) field data on registration page
            When I enter first name "Rohan"
            And  I enter last name "bakshi"
            And I enter email "bakshi@gmail.com"
            And I enter password "456789"
            And I enter Confirm password "456789"
            And I click on Register button
            Then I was able to register successfully
