public class AccountHandler {
    
    public static account insertNewAccount(string accname){
        account acc = new account(name = accname);
        try{
            insert acc;
        }catch(dmlexception dme){
            return null;
        }
                
        return acc;
    }

}