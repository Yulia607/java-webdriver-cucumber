package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class JavaTwoStepDefs {
    @Given("I write java step")
    public void iWriteJavaStep() {
        System.out.println("Hello World");


        String var1 = "Hello World!";
        var1 = "Say hello";
        System.out.println(var1);
    }

    @And("I say {string}")
    public void iSay(String message) {
        System.out.println(message);


        String firstName = "Julia";
        String lastName = "Tester";
        System.out.println(firstName.toUpperCase());
        System.out.println(firstName.length());
    }

    @And("I perform actions with {string} and {string}")
    public void iPerformActionsWithAnd(String str1, String str2) {
        System.out.println(str1);
        System.out.println(str2);
        System.out.println(str1.toUpperCase());
        System.out.println(str2.toUpperCase());
        System.out.println(str1.length());
        System.out.println(str2.length());
        System.out.println(str1.equals(str2));
        System.out.println("str1 equals ignore case str2? " + str1.equalsIgnoreCase(str2));
        System.out.println("str1 contains str2?" + str1.contains(str2));

        int i = 5;
        System.out.println("var i = " + i);

        int j = 5;
        System.out.println("var j = " + j);
        double d = 3;
        System.out.println(10.0 / 3);


// Here starts my homework //

        String firstName = "James";
        String lastName = "Bond";
        System.out.println("write First and Last name" + firstName + lastName);


        // Homework for day5

    }

    @And("I print if number {int} is positive")
    public void iPrintIfNumberIsPositive(int number) {
        if (number < 0) {
            System.out.println("number is negative");
        } else {
            System.out.println("number is positive");
        }
    }

    @And("I print {string} th day of the week")
    public void iPrintThDayOfTheWeek(String arg0) {
    }
}
    



