package pageObjects;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class JsonHelper {

    public static String read(String currentPage, String locatorId) throws IOException, ParseException {
        String filePath = "src/test/java/pageObjects/CheckerTool.json";
        JSONParser jsonParser = new JSONParser();
        FileReader fileReader = new FileReader(filePath);

        String result = "";
        Object object = jsonParser.parse(fileReader);
        JSONObject page = (JSONObject) object;

        JSONArray data = (JSONArray) page.get(currentPage);

        String arr[] = new String[data.size()];

        for (int index = 0; index < data.size(); index++) {
            JSONObject locatorKey = (JSONObject) data.get(index);
            String locator = (String) locatorKey.get(locatorId);

            result = locator;
        }
        return result;

    }


}
