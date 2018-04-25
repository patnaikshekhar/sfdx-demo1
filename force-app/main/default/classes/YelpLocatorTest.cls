@isTest
private class YelpLocatorTest {

    @isTest
    static void testServiceIsNotCalledWhenTermIsNotPassed() {
        Test.startTest();
        String res = YelpLocator.search('');
        System.assertEquals(null, res);
        Test.stopTest();
    }

    @isTest
    static void testServiceIsCalledWhenTermIsPassed() {
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator('Indian'));
        Test.startTest();
        String res = YelpLocator.search('Indian');
        System.assertNotEquals(null, res);
        Test.stopTest();
    }

    class MockHttpResponseGenerator implements HttpCalloutMock {

        String term;

        public MockHttpResponseGenerator(String term) {
            this.term = term;
        }

        public HTTPResponse respond(HTTPRequest req) {
            System.assertEquals('https://th-yelp-locator.herokuapp.com/search?term=' + term, req.getEndpoint());
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setBody('{"location": { "latitude": 39.7701723 }, bizArray: [ { "name": "Swagat Fine Indian Cuisine" }] }');
            res.setStatusCode(200);
            return res;
        }
    }
}