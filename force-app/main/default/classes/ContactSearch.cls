public class ContactSearch {
    
    public static list<contact> searchForContacts (string lastname, string MailingPostalCode ){
        return [select id, name from contact where lastname =: lastname and MailingPostalCode =: MailingPostalCode];
    }

}