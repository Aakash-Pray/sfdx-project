public class AccountTriggerHandler {
    public static void CreateAccounts(list<account> records){
        for(account acc : records){
            acc.shippingState = acc.billingState;
        }
    }
}