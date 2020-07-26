# Flow Soap Calculator

This is a sample flow soap calculator that leverages an online soap test webservice `http://tempuri.org` for performing simple calculations. Note that tempuri.org is the test default namespace URI used by microsoft development products.  
>Each XML Web Service needs a unique namespace in order for client applications to distinguish it from other services on the Web.  By default, ASP.Net Web Services use http://tempuri.org/ for this purpose.  While this suitable for XML Web Services under development, published services should use a unique, permanent namespace.

The apex was generated using WsdlToApex from the SOAPDemo.wsdl file.

The flow uses an invocable method "calculate" to output the result of the webservice in the flow.