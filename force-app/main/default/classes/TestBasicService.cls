@isTest
public class TestBasicService {
    // Test whether add is possible
    public static testmethod void canAdd() {
        Integer result = BasicService.add(2, 5);
        System.assertEquals(result, 7);
    }
}