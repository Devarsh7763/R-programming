library(rvest)
library(dplyr)
link="https://timesofindia.indiatimes.com/entertainment/telugu/tollywood/top-20-best-telugu-movies-of-all-time"
reader=read_html(link)
name=reader%>%html_nodes(".topten_movies_content h2")%>%html_text()
rating=reader%>%html_nodes(".topten_ratemovie span")%>%html_text()
gaming=data.frame(name,rating,stringsAsFactors=FALSE)
print(gaming)
#print(wow)