
new_df <- data.frame('song' = 'test', 'elements'= ('test'))

for (i in 1:274){
  song<-taylor_all_songs[[5]][[i]]
  lyricdf<-taylor_all_songs[[29]][[i]]
  elementlist<- list(lyricdf$element)
  elem <- sapply(elementlist,function(x) paste(unlist(x),collapse=", "))

  #df2 = data.frame('song' = song, 'elements' = elementlist)
  #new_df <- rbind(new_df, df2)
  new_df[nrow(new_df) + 1,] = c(song, elem)
}

new_df

write.csv(new_df, "C:\\Users\\lilyg\\OneDrive\\Desktop\\finalproj\\ts\\taylor_components.csv", row.names=FALSE)
