@isTest
public class TestBasicService {
    public static testmethod void canAdd() {
        Integer result = BasicService.add(2, 2);
        System.assertEquals(result, 5);
    }
}