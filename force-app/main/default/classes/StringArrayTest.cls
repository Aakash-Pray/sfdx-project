public class StringArrayTest {
    public static string[] generateStringArray(Integer n){
        string[] myArr = new string[n];
        for(integer i = 0; i< n; i++){
            myArr[i] = 'Test '+i;
        }
        return myArr;
    }
}