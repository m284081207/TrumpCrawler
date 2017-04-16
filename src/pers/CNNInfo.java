package pers;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.*;;

public class CNNInfo
{
	public static String[] article()
	{
		String article[]=new String[25];
		for(int i=0;i<25;i++)
			article[i]="";
		//get whole content
		String url[]=new String[3];
		url[0]="http://searchapp.cnn.com/search/query.jsp?page=1&npp=10&start=1&text=Trump&type=all&bucket=true&sort=date";
		url[1]="http://searchapp.cnn.com/search/query.jsp?page=2&npp=10&start=11&text=Trump&type=all&bucket=true&sort=date";
		url[2]="http://searchapp.cnn.com/search/query.jsp?page=3&npp=10&start=21&text=Trump&type=all&bucket=true&sort=date";
		String content="";
		for(int i=0;i<3;i++)
			content+=spider(url[i]);
		
		//use regular expression to find the articles
		content=content.replaceAll("\"description\":", "\n\"description\":");
		Pattern pattern =Pattern.compile("\"description\":\"(.*)\",\"thumbnail\"");
	    Matcher matcher=pattern.matcher(content);
	    int j=0;
	    while(matcher.find()&&j<25)
	    {
	       article[j]=matcher.group(1); 
	       j++;
	    }		
		return article;
	}
	public static String spider(String URL)
	{
		String result = "";
		BufferedReader in = null;
		try
		{
			URL realUrl = new URL(URL);
			URLConnection connection = realUrl.openConnection();
			connection.connect();
			in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line;
			while ((line = in.readLine()) != null)
			{
				result += line;
			}
		} catch (Exception e)
		{
			System.out.println("Something wrong in connection!" + e);
			e.printStackTrace();
		} 
		finally
		{
			try
			{
				if (in != null)
				{
					in.close();
				}
			} catch (Exception e2)
			{
				e2.printStackTrace();
			}
		}
		return result;
	}
}