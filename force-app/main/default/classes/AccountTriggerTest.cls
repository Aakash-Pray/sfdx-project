@isTest
public class AccountTriggerTest {
    testMethod static void testAccountsBeforeInsertTrigger(){
        list<account> newAccounts = new list<account>();
        for(integer i = 0; i < 200; i++){
            Account acc = new Account();
            acc.name = 'test account';
            acc.BillingState = 'CA';
            acc.ShippingState = '--';
            newAccounts.add(acc);
        }
        insert newAccounts;
        
        newAccounts = [select id, billingstate, shippingstate from account where id in: newAccounts];
        
        
        for(account acc : newAccounts){
            system.debug('acc: '+ acc);
            system.assertEquals(true, (acc.BillingState == acc.ShippingState));
        }
    }
}