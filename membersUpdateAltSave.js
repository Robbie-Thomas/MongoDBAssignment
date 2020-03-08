steve = {
    members_username: 'steve',
    members_password: "password123",
    profile: {
        "profile.members_profile_username": "steve123",
        "profile.members_profile_about": "I'm steve I don't like college",
        "profile.members_profile_email": "steve123@college.com",
        "profile.members_profile_dateofbirth": "2016-10-11T00:00:00Z",
        "profile.members_profile_sex": "M"
    },
    members_role : ["Admin", "Moderator"]
}

mongo = new Mongo("localhost");
assignmentDB = mongo.getDB("assignment");
assignmentDB.runCommand( { getLastError: 1, w: 1, j: true, wtimeout: 1000 } );
assignmentColl = assignmentDB.getCollection('Members');

assignmentColl.save({
    steve
})