<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
  <sch:pattern>
    <sch:rule context="/report/jobs/job">
      <sch:assert test="not(featuresReport/actions/action/@type = 'Rendition')">File belongs to class TC006</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
