List<User> users = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId()];
for(User user : users){
    user.UserPermissionsKnowledgeUser = true;
    update user;
}