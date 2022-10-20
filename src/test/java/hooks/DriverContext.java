package hooks;

import org.openqa.selenium.WebDriver;

public class DriverContext extends CurrentDriver {
    private static final ThreadLocal<WebDriver> localWebDriverThreadLocal = new ThreadLocal<>();
    public static WebDriver getLocalWebDriver() {
        return localWebDriverThreadLocal.get();
    }
    public static void setLocalWebDriverThreadLocal(WebDriver driverThreadLocal) {
        localWebDriverThreadLocal.set(driverThreadLocal);
    }
}
