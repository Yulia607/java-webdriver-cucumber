@quote
Feature: Functional test

  @quote1
  Scenario: Quote responsive design
    Given I open url "https://skryabin.com/market/quote.html"
    And I resize window to 1260 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And element with xpath "//b[@id='currentDate']" should be displayed
    And element with xpath "//b[@id='currentTime']" should be displayed
    When I resize window to 800 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And element with xpath "//b[@id='currentDate']" should be displayed
    And element with xpath "//b[@id='currentTime']" should be displayed
    When I resize window to 400 and 1024
    Then element with xpath "//b[@id='location']" should not be displayed
    And element with xpath "//b[@id='currentDate']" should not be displayed
    And element with xpath "//b[@id='currentTime']" should not be displayed
    When I resize window to 1260 and 1024

  @quate2
  Scenario: Username field
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//*[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    When I type "b" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    And I wait for 3 sec

  @quate3
  Scenario: Email field
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "123tester" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should contain text "Please enter a valid email address."
    When I clear element with xpath "//input[@name='email']"
    When I type "123tester@gmail.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed

  @quate4
  Scenario: Password field
    Given I open url "https://skryabin.com/market/quote.html"
    Then element with xpath "//input[@id='password']" should have attribute "value" as ""
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    When I type "password" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled

  @quate5
  Scenario: Name Field
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@id='name']"
    And element with xpath "//div[@aria-describedby='nameDialog']" should be displayed
    When I type "Julia" into element with xpath "//input[@id='firstName']"
    When I type "Tester" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[text()='Julia']"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "JuliaTester"
    
  @quate6
  Scenario: Privacy Policy
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='name-error']" should be enabled

  @quate7
  Scenario: Date of birth
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@id='dateOfBirth']"
    And I click on element with xpath "//select[@*='selectMonth']/option[6]"
    And I click on element with xpath "//select[@*='selectYear']/option[@value='1990']"
    And I click on element with xpath "//td[@data-handler='selectDay']/a[text()='7']"
    Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "06/07/1990"
    
    
    @quate8
    Scenario: Form submit
      Given I open url "https://skryabin.com/market/quote.html"
      When I type "Julia" into element with xpath "//input[@name='username']"
      And I type "tester@gmail.com" into element with xpath "//input[@name='email']"
      And I type "tester" into element with xpath "//input[@id='password']"
      And I type "Julia Tester" into element with xpath "//input[@id='name']"
      And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//legend[@class='applicationResult']" should have text as "Submitted Application"
      Then element with xpath "//div[@id='quotePageResult']" should contain text "Julia"
      Then element with xpath "//div[@id='quotePageResult']" should contain text "tester@gmail.com"
      Then element with xpath "//div[@id='quotePageResult']" should contain text "tester"
      Then element with xpath "//div[@id='quotePageResult']" should contain text "Julia Tester"
      Then element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "thrue"
      Then element with xpath "//b[@name='password']" should contain text "[entered]"











    
      
      
      

