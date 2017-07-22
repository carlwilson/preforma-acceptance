<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
  <sch:pattern>
    <sch:rule context="/report/jobs/job">
      <sch:assert test="not(validationReport/details/rule[@clause='6.1.3' and @testNumber='2'])">File belongs to class TC035</sch:assert>
  	  <sch:assert test="not(taskResult/exceptionMessage = 'Exception: The PDF stream appears to be encrypted. caused by exception: Reader::init(...)encrypted pdf is not supported')">File belongs to class TC035</sch:assert>
	</sch:rule>
  </sch:pattern>
</sch:schema>
