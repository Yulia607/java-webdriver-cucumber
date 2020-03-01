@predefined
Feature: Smoke steps
  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
    Scenario: Predefined steps for Bing
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@id='sb_form_q']" should be present
    When I type "Aristotelian logic" into element with xpath "//input[@id='sb_form_q']"
    Then I click on element with xpath "//label[@for='sb_form_go']"
    Then I wait for element with xpath "//ol[@id='b_results']" to be present
    Then element with xpath "//ol[@id='b_results']" should contain text "logic"

  @predefined3
    Scenario: Predefined steps for duckduckgo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "english breakfast tea" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//*[contains(text(),'Assam')]" to be present
    Then element with xpath "//*[contains(text(),'Assam')]" should contain text "Assam"


  @predefined4 
    Scenario: Predefined steps for Yahoo
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo"
    Then element with xpath "//a[@href='https://sports.yahoo.com/']" should be present
    When I click on element with xpath "//a[@href='https://sports.yahoo.com/']"
    Then I wait for element with xpath "//label[@for='search-assist-input']" to be present
    When I type "Basketball" into element with xpath "//input[@name='p']"
    Then I click on element with xpath "//button[@id='search-button']"
    Then element with xpath "//div[@id='web']" should contain text "NBA"

  @predefined5
  Scenario: Predefined steps for gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//a[@href='https://gibiru.com/download-app/#download-app']" should be present
    When I click on element with xpath "//a[@href='https://gibiru.com/download-app/#download-app']"
    Then I wait for 5 sec
    Then I wait for element with xpath "//p//img[@class='alignnone size-full wp-image-371']" to be present

  @predefined6
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com/"
    Then I should see page title contains "Swisscows" 
    Then element with xpath "//input[@name='query']" should be present
    When I type "Moscow" into element with xpath "//input[@name='query']"
    Then I click on element with xpath "//button[@class='search-submit']//*[@class='icon']"
    Then I wait for element with xpath "//article" to be present


  @predefined7
  Scenario: Predefined steps for SearchEncrypt
    Given I open url "https://www.searchencrypt.com/"
    Then I should see page title contains "Search Encrypt"
    Then element with xpath "//div[@class='col-md-12 text-center']//input[@placeholder='Search...']" should be present
    When I type "save forest" into element with xpath "//div[@class='col-md-12 text-center']//input[@placeholder='Search...']"
    Then I click on element with xpath "//div[@class='col-md-12 text-center']//i[@class='search compact']"
    Then element with xpath "//a[@id='imageSearch']" should be present
    
  @predefined8
    Scenario: Predefined steps for Startpage
      Given I open url "https://www.startpage.com/"
      Then I should see page title contains "Startpage"
      Then element with xpath "//input[@id='query']" should be present
      When I type "Bank of America" into element with xpath "//input[@id='query']"
      Then I click on element with xpath "//span[@class='search-form__button-icon']"
      Then element with xpath "//section[@class='w-gl w-gl--default']" should be present

  @predefined9
    Scenario: Predefined steps for Yandex
    Given I open url "https://yandex.com/"
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Books" into element with xpath "//input[@id='text']"
    Then I click on element with xpath "//div[@class='search2__button']"
    Then I wait for 3 sec
    Then I should see page title contains "Books"

    @predefined10
    Scenario: predefined steps for boardreader
    Given I open url "http://boardreader.com/"
      Then I should see page title contains "Boardreader"
      Then element with xpath "//input[@id='title-query']" should be present
      When I type "breeds" into element with xpath "//input[@id='title-query']"
      Then I click on element with xpath "//button[@id='title-submit']"
      Then I wait for 3 sec
      Then I should see page title contains "breed"

  @predefined11
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org/"
    Then I should see page title contains "Ecosia"
    Then element with xpath "//input[@placeholder='Search the web to plant trees...']" should be present
    When I type "Africa" into element with xpath "//input[@placeholder='Search the web to plant trees...']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='mainline-results']" to be present
    Then element with xpath "//div[@class='mainline-results']" should contain text "Asia"

  @predefined12
  Scenario: Predefined steps for Udemy
    Given I open url "https://www.udemy.com/"
    Then I should see page title contains "Online Courses"
    When I mouse over element with xpath "//a[@id='header.browse']"
    Then element with xpath "//span[@class='fx'][text()='Development']" should be present
    When I click on element with xpath "//span[@class='fx'][text()='Development']"
    Then I wait for element with xpath "//body[@id='udemy']//*[@data-courseid='slick-slide slick-active']" to be present

    @predefined13
      Scenario: Predefined steps for Cruises
      Given I open url "https://www.cruisesinc.com/travel/HomePage.html"
      Then I should see page title contains "Cruises"
      When I mouse over element with xpath "//li[@class='topmenu']//span[contains(text(),'Cruises')]"
      And I mouse over element with xpath "//div[contains(text(),'Cruise Lines')]"
      Then element with xpath "//li[@class='topmenu']//ul//li//a[contains(text(),'All Cruise Lines')]" should be present
      When I click on element with xpath "//li[@class='topmenu']//ul//li//a[contains(text(),'All Cruise Lines')]"
      Then element with xpath "//a[@class='btn btn-default dv-btn']" should be present
      When I click on element with xpath "//a[@class='btn btn-default dv-btn']"




      
      
      
      














          


    
    
    
    


    

      



    








     
