mongo = new Mongo("localhost");
assignmentDB = mongo.getDB("assignment");
assignmentColl = assignmentDB.getCollection('Members');
cursor = assignmentColl.find({"members_role" : {$ne: null}});
roles = cursor.toArray();
printjson(roles);


