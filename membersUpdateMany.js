mongo = new Mongo("localhost");
assignmentDB = mongo.getDB("assignment");
assignmentDB.runCommand( { getLastError: 1, w: 1, j: true, wtimeout: 1000 } );
assignmentColl = assignmentDB.getCollection('Members');
Rob = assignmentColl.findOne({members_username : 'Rob'});
printjson(Rob);
assignmentColl.update({members_username : 'Cal'},
                        {$set : {members_role : ["Admin"]}}
);
assignmentColl.update({members_username : 'Luke'},
                        {$set : {members_role : ["Moderator"]}}
);
Rob = assignmentColl.findOne({members_username : 'Rob'});
// prints after update
printjson(Rob);