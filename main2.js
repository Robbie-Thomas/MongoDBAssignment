mongo = new Mongo("localhost");
newDB = mongo.getDB("sN");

db.createCollection("Messages", {
    validator: {
       $jsonSchema: {
          bsonType: "object",
          required: [ "author" ],
          properties: {
            messages_author: {
               bsonType: "string",
               description: "must be a string and is required"
            },
            messages_recipient: {
               bsonType: "string",
               description: "must be a string and is not required"
            },
            messages_messagetype: {
                bsonType: "string",
                description: "must be a string and is not required"
            },
            messages_datetime: {
                bsonType: "datetime",
                description: "must be a datetime value"
            },
            messages_message: {
                bsonType: "string",
                description: "must be a string and is not required"
            },
          }
       }
    }
});

collections = newDB.getCollectionNames();
printjson(collections);