public class ContactAndLeadSearch {
    
    public static List<List< SObject>> searchContactsAndLeads (string io){
        return [FIND :io IN All Fields Returning Lead(firstname,lastname), contact(firstname,lastname)];
    }

}