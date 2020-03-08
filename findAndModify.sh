db.Members.findAndModify({
    query: { members_username : 'Luke'},
    update: {$set: { 'members_role': ["Moderator"]}}
});