package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class JavaStepDefs {
    @Given("I say Hellow world")
    public void iSayHellowWorld() {
    }

    @And("I print url for {string}")
    public void iPrintUrlFor(String site) {
        //add supprt for yahoo, cruises, other sites.
        if (site.equalsIgnoreCase("google")) {
            System.out.println("https://www.google.com/");
        } else if (site.equalsIgnoreCase("quote")) {
            System.out.println("https://www.cruisesinc.com/cruisemain.do");
        } else {
            System.out.println("Not supported site");
        }
    }
}