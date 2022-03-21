REQUEST_FILE=authTokenRequest.xml
echo soap login request
curl -X POST -d @$REQUEST_FILE https://login.salesforce.com/services/Soap/c/52.0 --header "Content-Type: text/xml; charset=UTF-8;" -H "SOAPAction: login" > authTokenResponse.xml