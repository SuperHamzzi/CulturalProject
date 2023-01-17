import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class NaverApiParser {
	
	public static List<News> parseNews(String json) throws ParseException{
		List<News> list = new ArrayList<>();
		JSONParser jsonParser = new JSONParser();
		JSONObject rootObj = (JSONObject) jsonParser.parse(json); //제이손 내부 객체들을 가져온다.
		
		JSONArray array = (JSONArray)rootObj.get("items");
		
		for(int i =0; i < array.size(); i++) {
			JSONObject obj = (JSONObject)array.get(i);
			
			   String title = (String) obj.get("title");
			   String originallink =(String) obj.get("originallink");
			   String link =(String) obj.get("link");
			   String description =(String) obj.get("description");
			   String pubDate =(Date) obj.get("pubDate"); //"EEE, d MMM yyyy HH:mm:ss Z"
			   News news = new News(title, originallink,link,description,pubDate);
		}
		
		return null;
	}

}
