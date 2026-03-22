## Vector DB Use Case
A normal keyword-based search would not be sufficient for a law firm handling large contracts because it relies on exact word matching. 
There are possibilities that contracts or documents may have synonyms, similar words or phrases which means that some words may be missed if exact keywords are not used

A Vector database solves this problem by understanding the meaning of the text instead of just matching words. It searchs data based on embeddings. These databases enable similarity(semantic) search i.e. retunrs data that is close in meaning, not just an exact word match.

In this system, each section of contract or document is converted into embeddings and then stored in vector databse. Basically, it converts words into numbers representing its meaning. ANd when a query is raised, it converts the input query(in normal language) into embeddings and then compare this with the embeddings stored in the database to return the results similar to the input. 

This makes searching faster and hence saving the time, provides more accurate results and therefore reduce the risk of missing any important information.
