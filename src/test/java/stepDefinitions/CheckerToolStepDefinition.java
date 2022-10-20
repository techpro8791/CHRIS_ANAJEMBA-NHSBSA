package stepDefinitions;

import org.junit.Assert;
import org.openqa.selenium.By;
import pageObjects.JsonHelper;
import hooks.DriverContext;
import io.cucumber.java.en.Given;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.json.simple.parser.ParseException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.io.IOException;

public class CheckerToolStepDefinition extends DriverContext {

    private WebDriver driver;

    @Given("^I launch the \"(.*)\" in \"(.*)\" type$")
    public void openEnvironmentInBrowser(String environment, String browserType) {
        System.out.println("I have opened " + environment + " in " + browserType + " type");

        if (browserType.equalsIgnoreCase("chrome")) {
            WebDriverManager.chromedriver().setup();
            driver = new ChromeDriver();
        } else if (browserType.equalsIgnoreCase("firefox")) {
            WebDriverManager.firefoxdriver().setup();
            driver = new FirefoxDriver();
        }

        driver.get(environment);
        driver.manage().window().maximize();
        DriverContext.setLocalWebDriverThreadLocal(driver);
    }

    @Given("^I verify the \"(.*)\" page \"(.*)\"$")
    public void verifyPageTitle(String page, String locator) throws IOException, ParseException {
        String actualTitle = CurrentDriver().getTitle();

        String data = JsonHelper.read(page, locator);
        System.out.println("I verify the page title " + data);
        Assert.assertEquals(actualTitle.trim(), data.trim());
    }

    @Given("^I click the \"(.*)\" (?:button|link|radio button)? on \"(.*)\" page$")
    public void performClick(String locator, String page) throws IOException, ParseException {

        String data = JsonHelper.read(page, locator);
        CurrentDriver().findElement(By.id(data)).click();
        System.out.println("I click the " + locator + " (?:button|link|radio button)? on " + data + " page");
        System.out.println(data);
    }

    @Given("^I fill the \"(.*)\" (?:text box|text field)? on \"(.*)\" page with \"(.*)\"$")
    public void enterText(String locator, String page, String text) throws IOException, ParseException {

        String data = JsonHelper.read(page, locator);
        CurrentDriver().findElement(By.id(data)).clear();
        CurrentDriver().findElement(By.id(data)).sendKeys(text);
        System.out.println("I fill the " + locator + " (?:text box|text field)? on " + data + " page with " + text);

    }

    @Given("^I should verify \"(.*)\" text on \"(.*)\" page as \"(.*)\"$")
    public void verifyText(String locator, String page, String text) throws IOException, ParseException {

        String data = JsonHelper.read(page, locator);
        String actualText = CurrentDriver().findElement(By.xpath(data)).getText();
        System.out.println("I should verify the " + locator + " text on " + data + " page as " + text);
        Assert.assertEquals(actualText.trim(), text.trim());
    }
}
