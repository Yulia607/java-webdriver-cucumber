package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class JavaTwoStepDefs {
    @Given("I write java step")
    public void iWriteJavaStep() {
        System.out.println("Hello World");

    }

}
