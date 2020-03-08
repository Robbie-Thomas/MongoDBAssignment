mongo = new Mongo("localhost");
assignmentDB = mongo.getDB("assignment");

msgColl = assignmentDB.getCollection("Messages");

cursor = msgColl.find();
message = cursor.toArray();
printjson(message);