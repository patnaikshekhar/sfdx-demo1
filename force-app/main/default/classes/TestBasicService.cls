@isTest
public class TestBasicService {
    public static testmethod void canAdd() {
        Integer result = BasicService.add(2, 3);
        System.assertEquals(result, 5);
    }
}