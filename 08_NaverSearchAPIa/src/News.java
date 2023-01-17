
public class News {
   private String title;
   private String originallink;
   private String link;
   private String description;
   private String pubDate; //"EEE, d MMM yyyy HH:mm:ss Z"

   @Override
   public String toString() {
   	return "News [title=" + title + ", originallink=" + originallink + ", link=" + link + ", description=" + description
   			+ ", pubDate=" + pubDate + "]";
   }
   public News(String title, String originallink, String link, String description, String pubDate) {
   	super();
   	this.title = title;
   	this.originallink = originallink;
   	this.link = link;
   	this.description = description;
   	this.pubDate = pubDate;
   }
   public News() {
   	super();
   	// TODO Auto-generated constructor stub
   }
   
   public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getOriginallink() {
	return originallink;
}
public void setOriginallink(String originallink) {
	this.originallink = originallink;
}

public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getPubDate() {
	return pubDate;
}
public void setPubDate(String pubDate) {
	this.pubDate = pubDate;
}

}
