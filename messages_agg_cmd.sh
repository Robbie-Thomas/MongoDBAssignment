db.Messages.aggregate([{$group:{_id: "$message_author", messages:{$push: "$message_message"}, count:{$sum: 1}}}]);
