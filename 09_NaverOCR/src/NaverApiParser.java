import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class NaverApiParser {

	public static String parseOCR(String json) throws ParseException {
		StringBuilder sb = new StringBuilder();
		JSONParser jsonParser = new JSONParser();
		JSONObject rootObj = (JSONObject) jsonParser.parse(json);

		JSONArray images = (JSONArray)rootObj.get("images");
		JSONObject item = (JSONObject) images.get(0);
		JSONArray fields = (JSONArray)item.get("fields");
		
		for(int i = 0; i < fields.size(); i++) {
			JSONObject obj = (JSONObject) fields.get(i);
			String str = (String) obj.get("inferText");
			sb.append(str +"\n");
		}
		return sb.toString();
	}
}
