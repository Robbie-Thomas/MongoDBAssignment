mongo = new Mongo("localhost");
wordsDB = mongo.getDB("assignment");
messagesCol = wordsDB.getCollection("Messages");
results = messagesCol.mapReduce(
    function() {emit (this.message_author, this.message_message);},
    function(key, values){
        result = {count: values.length};
        for(var i=0; i<values.length; i++){
            if (values[i].message_message) {
                results.message_message += values[i].message_message;
            }
        }
        return result;
    },
    {out:{inline:1}}
);
for(i in results.results){
    print(JSON.stringify(results.results[i]));
}