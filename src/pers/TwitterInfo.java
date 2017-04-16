package pers;

import twitter4j.*;
import twitter4j.conf.ConfigurationBuilder;

import java.util.ArrayList;

public class TwitterInfo {
	public static String[] article() {
		ConfigurationBuilder cb = new ConfigurationBuilder();
		cb.setOAuthAccessToken("853457434345480192-t5GIGUbMzgZRsLWBI7coYJmzoJjzDRa");
		cb.setOAuthAccessTokenSecret("X0CSYfnMZUyIKOs4gHHiB14tcXvAiJ6mzIEHpL63CNMbj");
		cb.setOAuthConsumerKey("p5999f55IZu8Iey9pIEbz8NdQ");
		cb.setOAuthConsumerSecret("CydS18on544aejc8qLNrpRvXf9hWBn2nHLrfZcHWxjTd4I1UC8");
		Twitter twitter = new TwitterFactory(cb.build()).getInstance();
		
		String[] article=new String[25];
		for(int i=0;i<25;i++)
			article[i]="";
		
		Paging pg = new Paging();
		int numberOfTweets = 40;//every time the API only allows 20 tweets gathered
		long lastID = Long.MAX_VALUE;
		ArrayList<Status> tweets = new ArrayList<Status>();
		while (tweets.size () < numberOfTweets) {
			try {
			    tweets.addAll(twitter.getUserTimeline("@realDonaldTrump",pg));
			    for (Status t: tweets) 
			      if(t.getId() < lastID) lastID = t.getId();
			}
			catch (TwitterException te) {
			    System.out.println("Couldn't connect: " + te);
			}; 
			pg.setMaxId(lastID-1);
		}
		for(int i=0;i<25;i++){
			article[i]=tweets.get(i).toString();
		}
		return article;
	}
}

