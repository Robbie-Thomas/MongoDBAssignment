Message = {messages_author: 'Tim',messages_recipient: 'Luke',messages_messagetype: 'P',messages_datetime: '15-01-2019 11:00:00',messages_message: 'test message 1'};
Message = {messages_author: 'Luke',messages_recipient: 'Emily',messages_messagetype: 'P',messages_datetime: '1-01-2019 12:00:00',messages_message: 'test message 2'};
Message = {messages_author: 'Emily',messages_recipient: 'Luke',messages_messagetype: 'P',messages_datetime: '12-01-2019 13:00:00',messages_message: 'test message 3'};
Message = {messages_author: 'Jordon',messages_recipient: 'Cal',messages_messagetype: 'P',messages_datetime: '13-01-2019 14:00:00',messages_message: 'test message 4'};
Message = {messages_author: 'Brad',messages_recipient: 'Rob',messages_messagetype: 'P',messages_datetime: '5-01-2019 15:00:00',messages_message: 'test message 5'};
Message = {messages_author: 'Cal',messages_recipient: 'Rob',messages_messagetype: 'P',messages_datetime: '7-01-2019 16:00:00',messages_message: 'test message 6'};

Friends = {friends_username: 'Tim', friends_friend: 'Luke',};
Friends = {friends_username: 'Luke', friends_friend: 'Emily',};
Friends = {friends_username: 'Emily', friends_friend: 'Jordon',};
Friends = {friends_username: 'Jordon', friends_friend: 'Brad',};
Friends = {friends_username: 'Brad', friends_friend: 'Cal',};

db.Members.insertMany({members_username: 'Tim', members_password: '1234', profile {members_profiles_username: 'Tim', members_profiles_about: 'Hi my name is Tim', members_profiles_email: 'sdasd@gmail.com', members_profiles_dateofbirth: '25-01-1996 00:00:00',members_profiles_sex: 'M'}, }),
({members_username: 'Luke', members_password: '12345', profile  {members_profiles_username: 'Luke', members_profiles_about: 'Hi my name is Luke', members_profiles_email: 'sdasda@gmail.com', members_profiles_dateofbirth: '23-02-1997 00:00:00',members_profiles_sex: 'M'}, }),
({members_username: 'Emily', members_password: '1236', profile  {members_profiles_username: 'Emily', members_profiles_about: 'Hi my name is Emily', members_profiles_email: 'ghfghfgh@gmail.com', members_profiles_dateofbirth: '5-11-1998 00:00:00',members_profiles_sex: 'F'}, }),
({members_username: 'Jordon', members_password: '1237', profile  {members_profiles_username: 'Jordon', members_profiles_about: 'Hi my name is Jordon', members_profiles_email: 'jkljlj@gmail.com', members_profiles_dateofbirth: '15-12-1992 00:00:00',members_profiles_sex: 'M'}, }),
({members_username: 'Brad', members_password: '1238', profile {members_profiles_username: 'Brad', members_profiles_about: 'Hi my name is Brad', members_profiles_email: 'iuouiou@gmail.com', members_profiles_dateofbirth: '13-06-1997 00:00:00',members_profiles_sex: 'M'}, }),
({members_username: 'Cal', members_password: '1239', profile  {members_profiles_username: 'Cal', members_profiles_about: 'Hi my name is Cal', members_profiles_email: 'vbnvnvbn@gmail.com', members_profiles_dateofbirth: '3-04-1992 00:00:00',members_profiles_sex: 'M'}, }),
({members_username: 'Rob', members_password: '12311', profile  {members_profiles_username: 'Rob', members_profiles_about: 'Hi my name is Robbie', members_profiles_email: 'sdasdasd@gmail.com', members_profiles_dateofbirth: '5-03-1996 00:00:00',members_profiles_sex: 'M'}, });