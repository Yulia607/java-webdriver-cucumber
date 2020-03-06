package definitions;

import cucumber.api.java.en.Given;

public class JavaThreeStepDefs {
    @Given("I say I can do it")
    public void iSayICanDoIt() {

        String var1 = "'Do not stop";
        String var2 = "when you are tired";
        String var3 = "stop when you are done'";
        System.out.println("print the saying" + " " + var1  + " " + var2 + " " + var3);

    }
}
