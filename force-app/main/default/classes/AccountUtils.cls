public class AccountUtils {
    
    public static list<account> accountsByState(string state){
        list<account> accountsList = [select id,name from account where BillingState =: state];
        return accountsList;
    }

}