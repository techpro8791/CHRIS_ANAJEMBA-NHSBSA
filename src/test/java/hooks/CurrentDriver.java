package hooks;

import org.openqa.selenium.WebDriver;

public class CurrentDriver {
    public static WebDriver driver;

    public static WebDriver CurrentDriver() {
        driver = DriverContext.getLocalWebDriver();
        return driver;
    }
}
