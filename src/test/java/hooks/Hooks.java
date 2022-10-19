package hooks;

import io.cucumber.java.After;

public class Hooks extends  CurrentDriver{

    @After
    public void Dispose(){
        CurrentDriver().quit();
    }
}
