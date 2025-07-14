Developer resources
===================

In order to access to the developer resources described below you must agree
to electronically sign an `integrator agreement`_. In order to initiate the
agreement process send an email to support@logicly.com.au noting the
organisation you represent and the resources you wish to gain access to.

Access to the `online APIs`_ is granted via an Integration Key. The
`reference implementations`_ and `test data set`_ are hosted on private
github.com repositories, access is granted by adding a user to those
repositories. Provide a github.com username if you wish to gain access
to those resources.

Online APIs
^^^^^^^^^^^
There are two ways to integrate the IAR-DST into local systems.

Note that while use of neither API requires payment, registration is required.
This process is described in the `Integrator Agreement`_.

Backend API
~~~~~~~~~~~
The IAR-DST backend API is designed to support integrators in implementing
the assessment algorithm within their own systems. 

The API can also be used to access the approved wording for all parts of the
tool in a convenient machine readable JSON format. This avoids the need to
manually copy textual elements of the IAR-DST rating and reporting forms,
minimising the chance of transcription errors. Ideally this should be
implemented such that the UI is rendered dynamically each time it is used
so that any text updates or corrections are incorporated automatically.

This API:

* Does not require the capture of any identifying information other than the
  organisation making the request;
* Does not store any information other than utilisation statistics via Google
  Analytics; 
* Requires the API consumer to use an API key linked to their organisation;
* Allows the API consumer to access structured data suitable for generating
  an IAR-DST rating form;
* Allows the API consumer to submit the eight domain scores;
* Returns the API consumer the calculated recommended level of care;
* Allows the API consumer to access structured data suitable for generating
  an IAR-DST report form;
* Allows the API consumer to test responses to an IAR-DST report form for
  completeness;
* Meets Australian Government security requirements.

See the `IAR-DST API v2 <https://api.iar-dst.online/v2/>`_ for
more information.

UI automation via OMSSS
~~~~~~~~~~~~~~~~~~~~~~~
The OMSSS API allows integrators to make use of the official Australian Government
`IAR-DST interface <https://iar-dst.online>`_ via their own systems and capture
the resulting domain ratings and recommended level of care.

OMSSS provides an automatable mechanism to both capture the eight domain scores
and return the derived resulting recommended level of care. This service may be
utilised by organisations wanting to easily integrate the capture of the scores
and/or the computation of the recommended level of care into their own local
systems. The mechanism for doing this will be via a request over the internet to
the API service from the organisation’s local system.

This API:

* Does not require the capture of any identifying information other than the
  organisation making the request;
* Requires the integrator to use an API key linked to their organisation;
* Allows the API consumer to generate a link to the Australian Government
  `IAR-DST interface <https://iar-dst.online>`_ in "OMSSS mode";
* Allows IAR-DST interface users to submit the eight domain scores and
  associated recommended level of care to OMSSS;
* Allows the API consumer to retrieve the eight domain scores and associated
  recommended level of care from OMSSS;
* Meets Australian Government security requirements.

More information is available via the `OMSSS REST API <https://api.omsss.online/>`_.

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

There are implementations in JavaScript, Ruby, Perl and Python.

See the `main IAR-DST repository <https://github.com/logicly-au/iar-dst>`_.

Test data set
^^^^^^^^^^^^^
A test data set has been developed covering all possible combinations of domain
ratings and the associated derived level of care. The test data set may be used
by third party developers who wish to implement the scoring algorithm
themselves.

See the `v2 test data <https://github.com/logicly-au/iar-dst/tree/main/test-data/v2>`_.

Integrator agreement
^^^^^^^^^^^^^^^^^^^^
.. toctree::
     :maxdepth: 1
     :titlesonly:
   
     developers/integrator-agreement
