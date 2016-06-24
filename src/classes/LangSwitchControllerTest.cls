@isTest
public class LangSwitchControllerTest {
private static testMethod void myTest() {  
             
        String lang1 = 'English';
        String lang2 = 'Japanese';        
        User u = new User();
        u.Username = 'testd@ms7@ls_lc@example.com';
        u.Alias = 'tmle';
        u.CommunityNickname = 'test';
        u.Email = 'test@example.com';
        u.LastName = 'LastName';
        u.profileid = UserInfo.getProfileId();
        u.emailencodingkey='ISO-8859-1';
        u.languagelocalekey = 'en_US';
        u.localesidkey='en_GB';
        u.timezonesidkey='Europe/London';        
        

        System.runAs(u){
            LangSwitchController.setLang(lang1);
        }
        u = [SELECT LanguageLocaleKey FROM User WHERE Id = :u.Id];
        System.assertEquals(u.LanguageLocaleKey, 'en_US');

        System.runAs(u){
            LangSwitchController.setLang(lang2);
        }
        u = [SELECT LanguageLocaleKey FROM User WHERE Id = :u.Id];
        System.assertEquals(u.LanguageLocaleKey, 'ja');

    }
}