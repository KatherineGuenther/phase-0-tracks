* What are some common HTTP status codes?

200 : Success. Standard response for a successful HTTP request.  Other codes in the 2xx "family" include 204 (no content delivered) and 206 (partial content delivered).

404: Not found.  Most common client-side error.  Other error codes in the 4xx family include 401 (unauthorized) and 403 (forbidden).

500: Internal server error.  A catch-all for server-side errors.


* What is the difference between a GET request and a POST request? When might each be used?

A GET method requests data while a POST method submits data.  GET is used for reading data.  The same URL could be requested repeatedly with no side effects.  POST is used for writing data.  Multiple identical POST requests probably would have undesired side effects.


* Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a piece of data sent from a server to a user's browser to help track information about a user's state during a session.
