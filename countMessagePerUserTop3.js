mongo = new Mongo("localhost");
assignmentDB = mongo.getDB("assignment");
messageColl = assignmentDB.getCollection("Messages");
results = messageColl.aggregate(
        {
            $group:{"_id": "$message_author",
            messages:{$push: "$Message"},
            count:{$sum: 1}}},

            {$sort: {count: -1}},
            {$limit: 3}
        
);
results.forEach(function(item){
    print(JSON.stringify(item));
});