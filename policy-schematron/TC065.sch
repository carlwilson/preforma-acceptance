<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
  <sch:pattern>
    <sch:rule context="/report/jobs/job">
      <sch:assert test="not(validationReport[@profileName='PDF/A-1A validation profile' and @isCompliant='false'])">File belongs to class TC065</sch:assert>
      <sch:assert test="not(validationReport[@profileName='PDF/A-2A validation profile' and @isCompliant='false'])">File belongs to class TC065</sch:assert>
      <sch:assert test="not(validationReport[@profileName='PDF/A-3A validation profile' and @isCompliant='false'])">File belongs to class TC065</sch:assert>
	</sch:rule>
  </sch:pattern>
</sch:schema>
