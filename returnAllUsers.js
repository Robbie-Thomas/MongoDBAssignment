mongo = new Mongo("localhost");
assignmentDB = mongo.getDB("assignment");

userColl = assignmentDB.getCollection("Members");

cursor = userColl.find();
user = cursor.toArray();
printjson(user);