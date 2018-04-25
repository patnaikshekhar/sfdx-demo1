public with sharing class YelpLocator {
    
    // Searches Yelp
    public static String search(String term) {
        if (term != '' && term != null) {
            String url = 'https://th-yelp-locator.herokuapp.com/search?term=' + term;
            HttpRequest req = new HttpRequest();
            Http http = new Http();
            req.setMethod('GET');    
            req.setEndpoint(url);
            HTTPResponse res = http.send(req);
            return res.getBody();   
        } else {
            return null;
        }
    }
}
