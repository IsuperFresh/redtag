@isTest
public class TestRestrictContactByName {
      @isTest
    public static void testContact(){
        Contact ct = new Contact();
        ct.LastName = 'INVALIDNAME';
        Database.SaveResult res = Database.insert(ct,false);
        System.assertEquals('The Last name "INVALIDNAME" is not allowed DML',res.getErrors()[0].getMessage());
    }
    
    
    
    
    
    
    
}