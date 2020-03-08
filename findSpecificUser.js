mongo = new Mongo("localhost");
assignmentDB = mongo.getDB("assignment");

userColl = assignmentDB.getCollection("Members");

cursor = userColl.find({members_username: {$eq: "steve"}});

specUser = cursor.toArray();
printjson(specUser);