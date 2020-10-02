Developer Resources
===================

Online API
^^^^^^^^^^

The IAR digital decision support tool has been integrated into the existing
OMSSS API, which PHNs are already integrating into their systems. While the
stand-alone online interface may be used separately. OMSSS provides an
automatable mechanism to both capture the eight domain scores and return
the derived resulting recommended level of care. This service may be utilised
by organisations wanting to easily integrate the capture of the scores and/or
the computation of the recommended level of care into their own local systems.
The mechanism for doing this will be via a request over the internet to the API
service from the organisation’s local system. The Online API:

* Does not require the capture of any identifying information other than the
  organisation making the request;
* Requires the integrator to use an API key linked to their organisation;
* Allows submission of the eight domain scores;
* Processes the entered scores and return the recommended level of care;
* Meets Australian Government security requirements.

Documentation regarding use of the OMSSS REST API is available at
https://api.omsss.online/.

Reference implementations
^^^^^^^^^^^^^^^^^^^^^^^^^
The reference implementations have been developed as software libraries. The
libraries consumes the eight domain scores and returns the derived recommended
level of care via an implementation of the scoring algorithm.

The reference implementations can be used by third party developers to
understand how to best create a local implementation of the scoring algorithm.
This might be desirable where a different programming language to those used in
the reference implementations is a local requirement. It may also be
integrated into local systems. This method of integration does not require the
integrator to send data to an external system over the internet. The reference
implementation:

* Implements the scoring algorithm required to consume the 8 domain scores and
  return the resulting recommended level of care;
* Includes documentation for developers;
* Includes examples of use;
* Includes a test suite to ensure accuracy.

Test data set
^^^^^^^^^^^^^
A test data set has been developed covering all possible combinations of domain
ratings and the associated derived level of care. The test data set may be used
by third party developers who wish to implement the scoring algorithm
themselves.

Requesting access
^^^^^^^^^^^^^^^^^
In order to access to the developer resources including the API you must agree
to electronically sign an Integrator Agreement. In order to initiate the
agreement process send an email to support@strategicdata.com.au noting the
organisation you represent and the resources you wish to gain access to.

Access to the API is granted via the provision of an Integration Key. The
reference implementations and test data set are hosted on a private github.com
repository, access is granted by adding a user to that repository.
