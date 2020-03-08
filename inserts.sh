db.Messages.insertMany([{message_author: 'Tim',message_recipient: 'Luke',message_messagetype: 'P',message_date: new Date("Jan 18, 2019"), message_message: 'test message 1'},
{message_author: 'Luke',message_recipient: 'Emily',message_messagetype: 'P',message_date: new Date("Jan 18, 2019"), message_message: 'test message 2'},
{message_author: 'Emily',message_recipient: 'Luke',message_messagetype: 'P',message_date: new Date("Jan 18, 2019"), message_message: 'test message 3'},
{message_author: 'Jordon',message_recipient: 'Cal',message_messagetype: 'P',message_date: new Date("Jan 18, 2019"), message_message: 'test message 4'},
{message_author: 'Brad',message_recipient: 'Rob',message_messagetype: 'P',message_date: new Date("Jan 18, 2019"), message_message: 'test message 5'},
{message_author: 'Cal',message_recipient: 'Rob',message_messagetype: 'P',message_date: new Date("Jan 18, 2019"), message_message: 'test message 6'}]);

db.Friends.insertMany([{friends_username: 'Rob', friends_friend: 'Luke',},
{friends_username: 'Luke', friends_friend: 'Tim',},
{friends_username: 'Luke', friends_friend: 'Emily',},
{friends_username: 'Emily', friends_friend: 'Luke',},
{friends_username: 'Emily', friends_friend: 'Jordon',},
{friends_username: 'Jordon', friends_friend: 'Emily',},
{friends_username: 'Jordon', friends_friend: 'Brad',},
{friends_username: 'Cal', friends_friend: 'Jordon',},
{friends_username: 'Jordon', friends_friend: 'Cal',},
{friends_username: 'Brad', friends_friend: 'Cal',},
{friends_username: 'Cal', friends_friend: 'Brad',}]);

db.Members.insertMany([{members_username: 'Luke', members_password: 'testpass', profile: {"profile.members_profile_username": 'Luke', "profile.members_profile_about": 'Hi my name is Luke', "profile.members_profile_email": 'sdasda@gmail.com', "profile.members_profile_dateofbirthl": "1993-10-11T00:00:00Z","profile.members_profile_sex": 'M'}},
{members_username: 'Emily', members_password: '1236', members_profile: {"profile.members_profile_username": 'Emily', "profile.members_profile_about": 'Hi my name is Emily', "profile.members_profile_email": 'ghfghfgh@gmail.com', "profile.members_profile_dateofbirth": "1992-10-11T00:00:00Z","profile.members_profile_sex": 'F'}},
{members_username: 'Jordon', members_password: '1237', members_profile: {"profile.members_profile_username": 'Jordon', "profile.members_profile_about": 'Hi my name is Jordon', "profile.members_profile_email": 'jkljlj@gmail.com', "profile.members_profile_dateofbirth": "1999-10-11T00:00:00Z","profile.members_profile_sex": 'M'}},
{members_username: 'Brad', members_password: '1238', members_profile: {"profile.members_profile_username": 'Brad', "profile.members_profile_about": 'Hi my name is Brad', "profile.members_profile_email": 'iuouiou@gmail.com', "profile.members_profile_dateofbirth": "1991-10-11T00:00:00Z","profile.members_profile_sex": 'M'}},
{members_username: 'Cal', members_password: '1239', members_profile: {"profile.members_profile_username": 'Cal', "profile.members_profile_about": 'Hi my name is Cal', "profile.members_profile_email": 'vbnvnvbn@gmail.com', "profile.members_profile_dateofbirth": "1997-10-11T00:00:00Z","profile.members_profile_sex": 'M'}},
{members_username: 'Rob', members_password: '12311', members_profile: {"profile.members_profile_username": 'Rob', "profile.members_profile_about": 'Hi my name is Robbie', "profile.members_profile_email": 'sdasdasd@gmail.com', "profile.members_profile_dateofbirth": "1998-10-11T00:00:00Z","profile.members_profile_sex": 'M'}}]);


db.Members.insert({
    members_username: "steve",
    members_password: "password123",
    profile: {
        "profile.members_profile_username": "steve1234",
        "profile.members_profile_about": "I'm steve l love college",
        "profile.members_profile_email": "stevetheman@gmail.com",
        "profile.members_profile_dateofbirth": "2016-10-11T00:00:00Z",
        "profile.members_profile_sex": "M"
    } 
});

db.Friends.insert({
    friends_username: 'Luke',
    friends_friend: 'Tim'
});

db.Messages.insert({
    message_author: "Cal",
    message_recipient: "Rob",
    message_messagetype: "P",
    message_date: new Date("Jan 18, 2019"),
    message_message: "Test message number eight"}
);


== Indexes ==
db.Members.createIndex({"members_username": 1});

db.Friends.createIndex({"friends_username": 1});
db.Friends.createIndex({"friends_friend": 1});

db.Messages.createIndex({"message_author": 1});
db.Messages.createIndex({"message_recipient":1});