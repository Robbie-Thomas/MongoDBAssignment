mongo = new Mongo("localhost");
assignmentDB = mongo.getDB("assignment");
userColl = assignmentDB.getCollection('Members');
cursor = userColl.find(
    {members_role: 
        ["Admin", "Moderator"] 
    })
modOrAdmin = cursor.toArray();
printjson(modOrAdmin)