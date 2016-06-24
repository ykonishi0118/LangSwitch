public with sharing class LangSwitchController {
    private static final Map<String, String> lang2key = new Map<String, String>{'English' => 'en_US', 'Japanese' => 'ja', 'Simplified_Chinese' => 'zh_CN'};
        
        @AuraEnabled
        public static void setLang(String lang){

                  User me = [SELECT Id, LanguageLocaleKey FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
                  me.LanguageLocaleKey = lang2key.get(lang);
                  update me;

       }
        
}