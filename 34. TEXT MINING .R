# TEXT MINING 

library(NLP)
library(tm)
library(wordcloud)
library(wordcloud2)

tf=readLines(file.choose())
head(tf) # top six lines 

# cleaing data 


cl<-tolower(tf) # uppercase changing to lower case 
head(cl)

cl1<-gsub(pattern = "\\W",replacement =" ",cl ) # removing punctuation marks  , gsub fun , replacing all punctuation with white space 
head(cl1)

cl1

cl2<-gsub(pattern = "\\d",replacement =" ",cl1 ) # removing digits 
head(cl2)

stopwords() # what is stopwords shown here

cl3=removeWords(cl2,words = c(stopwords(),'ai'))  # to remove stopwords , ai word will also be removed 
head(cl3)

cl4<-gsub(pattern = '\\b[A-z]\\b{1}',replacement = " ",cl3) # to remove single letter using '\\b[A-z]\\b{1}'
head(cl4)

cl5<-stripWhitespace(cl4) # remove all white spaces 
head(cl5)

cl6=strsplit(cl5," ") # split each and every word 
head(cl6)
cl6

# wf = table(c16)  #to generate frequency, hufe data , if having equal values we can use table 


w=unlist(cl6) #to generate frequency 
wordcloud(w)
wordcloud(w,min.freq = 10) # that word will be shown only which will be repeated more than 10 times 
# wordcloud2(w)


#----------------------------------------------------------------------------------------------------------------------


text=readLines(file.choose())
text

doc<-Corpus(VectorSource(text)) # structure for managing a document in text mining 
doc
 
s=content_transformer(function(x,pattern)gsub(pattern," ",x)) # transform our text using fun content_transformer

d1=tm_map(doc,s,'/')  # mapping , when dealing with corpus then only we can use this , slash pattern will be replaced by white space 
d2 =tm_map(doc,s,'@') # @ will be replaced with white space 
d3=tm_map(d2,content_transformer(tolower)) # from d2 txt , everything will be transformed to lower 
d3

inspect(d3) # to see the content , using inspect 

d4=tm_map(d3,removeNumbers) # removing numbers , direct funtion removeNumbers used  under tm_map 

d5=tm_map(d4,removeWords,stopwords('english')) # to remove stropword , based on english language 

inspect(d5)

d6=tm_map(d5,removePunctuation) # removing Punctuation 

inspect(d6)

d7=tm_map(d6,stripWhitespace) #  removal of extra while space 

d8=tm_map(d7,stemDocument) # to stem your words , like main word for eg in deeply main in deep . so will remove ly 

inspect(d8)


#=====================================================================================================================================


# termdocument matrix - will give freq of each and every word in docs 


dtm=TermDocumentMatrix(d8) 
dtm

inspect(dtm)

DocumentTermMatrix(d8) # function 

df=DocumentTermMatrix(d8)

inspect(df)

m=as.matrix(dtm)
m

v=sort(rowSums(m),decreasing = TRUE)
v

d=data.frame(word=names(v),freq=v)
d
head(d)

wordcloud(d$word)
wordcloud(words=d$word,freq = d$freq)
wordcloud(words=d$word,freq = d$freq,min.freq = 1)
wordcloud(words=d$word,freq = d$freq,min.freq = 1,max.words = 10)
findFreqTerms(dtm,lowfreq = 2)
findAssocs(dtm,terms = 'son',corlimit = .3)
barplot(d[1:10,]$freq,names.arg = d[1:10,]$word)
m


#=====================================================================================================================================


#clustering
dis=dist(m,method = 'euclidean')
dis
grp=hclust(dis,method = 'complete')
grp
plot(grp)
