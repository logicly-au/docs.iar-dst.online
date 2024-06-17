Data Security and Privacy Issues
==================================
   
It is not necessary to transmit or have stored any personally identifying information in order to make use of the digital decision support tools.

In order to generate a recommended level of care rating the stand-alone online decision support tool:

   - Does not require the capture of any identifying information; and
   - Does not require authentication.

When generating a printable report the online decision support tool:

   - Does not transmit or store any information for privacy purposes. This information is only stored on the local computer during the production of the report. Once the report is closed the information cannot be retrieved.
   - Does require that the patient is identified for clinical safety purposes so that the locally saved or printed report is attributable to the correct person.

Note that it is not necessary to use the printable report function to generate a recommended level of care rating.

Similarly, the online API:

   - Does not capture information from the report generation function,
   - Does not require the capture of any identifying information other than the organisation making the request; and
   - Requires the integrator to use an API key linked to their organisation.
   - An integrator MAY send a "label" to the IAR-DST interface to assist the user in identifying who the measure should be completed for. This label is only stored while the data is being collected and is discarded either when the data is retrieved by the integrator or after 7 days. The content of this label is decided by the integrator and the above processes should be considered when deciding what, if anything, should be provided.
