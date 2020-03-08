mongo = new Mongo('localhost');
wordsDB = mongo.getDB('sN');
members = sN.getCollection('messages');

Message = {
    messages_author: 'rob',
    messages_recipient: 'cal',
    messages_messagetype: 'M',
    messages_datetime: '15-01-2019 00:00:00',
    messages_message: 'test message'
};
Members = {
    members_username: 'robbie1995',
    members_password: '123',
    members_profiles = {
        members_profiles_username: 'robbie1995',
        members_profiles_about: 'Hi my name is robbie',
        members_profiles_email: 'robbie1995@gmail.com',
        members_profiles_dateofbirth: '25-07-1995 00:00:00',
        members_profiles_sex: 'M'
    },
};
Friends = {
    friends_username: '',
    friends_friend: '',
};

