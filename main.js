mongo = new Mongo("localhost");
newDB = mongo.getDB("assignment");

db.createCollection("Members", {
    validator: {
       $jsonSchema: {
          bsonType: "object",
          required: [ "members_username", "members_password" ],
          properties: {
            members_username: {
               bsonType: "string",
               description: "must be a string and is required"
            },
            members_password: {
               bsonType: "string",
               description: "must be a string and is required"
            },
            "profile.members_profile_username" : {
                bsonType: "string",
                description: "must be a string and is required"
            },
            "profile.members_profile_about" : {
                bsonType: "string",
                description: "must be a string and is not required"
            },
            "profile.members_profile_email": {
                bsonType: "string",
                pattern: "^.+@.+$",
                description: "must be a string and is required"
            },
            "profile.members_profile_dateofbirth": {
                bsonType: "date",
                description: "must be a datetime value"
            },
            "profile.members_profile_sex": {
                bsonType: "string",
                description: "must be a string and is not required"
            }
        }
    }
}
});

db.createCollection("Messages", {
    validator: {
       $jsonSchema: {
          bsonType: "object",
          required: [ "message_author", "message_recipient" ],
          properties: {
            message_author: {
               bsonType: "string",
               description: "must be a string and is required"
            },
            message_recipient: {
               bsonType: "string",
               description: "must be a string and is required"
            },
            message_messagetype: {
                bsonType: "string",
                description: "must be a string and is not required"
            },
            message_date: {
                bsonType: "date",
                description: "must be a datevalue"
            },
            message_message: {
                bsonType: "string",
                description: "must be a string and is not required"
            }
          }
       }
    }
});

db.createCollection("Friends", {
    validator: {
       $jsonSchema: {
          bsonType: "object",
          required: [ "friends_username", "friends_friend" ],
          properties: {
            friends_username: {
               bsonType: "string",
               description: "must be a string and is required"
            },
            friends_friend: {
               bsonType: "string",
               description: "must be a string and is required"
            },
          }
       }
    }
});

collections = newDB.getCollectionNames();
printjson(collections);