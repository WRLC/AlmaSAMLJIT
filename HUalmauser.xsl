<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion">
<xsl:template match="/">
 <user> 
  <primary_id><xsl:value-of select="//saml2:AttributeStatement/saml2:Attribute[@Name='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name/primary_id']/saml2:AttributeValue"/></primary_id>
  <first_name><xsl:value-of select="//saml2:AttributeStatement/saml2:Attribute[@Name='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/first_name']/saml2:AttributeValue"/></first_name>
  <middle_name></middle_name>
  <last_name><xsl:value-of select="//saml2:AttributeStatement/saml2:Attribute[@Name='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname/last_name']/saml2:AttributeValue"/></last_name>
  <xsl:choose>
  <xsl:when test="//saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = '00' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = '99' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'AS' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'DU' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'EA' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'ED' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'IX' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'SB' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'SC' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'XT' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'XX'">
    <user_group>huund</user_group>
    <campus_code>HU</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HUF</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-05-04Z</expiry_date>
    <purge_date>2023-05-04Z</purge_date>
  </xsl:when>
  <xsl:when test="//saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'GS' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'SW'">
    <user_group>hugrad</user_group>
    <campus_code>HU</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HUF</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-05-04Z</expiry_date>
    <purge_date>2023-05-04Z</purge_date>
  </xsl:when>
  <xsl:when test="//saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'DN' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'HS' or //saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'PH'">
    <user_group>huhsgrad</user_group>
    <campus_code>HUHS</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HUSL</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-05-04Z</expiry_date>
    <purge_date>2023-05-04Z</purge_date>
  </xsl:when>
  <xsl:when test="//saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'MD'">
    <user_group>huhsmed</user_group>
    <campus_code>HUHS</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HUSL</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-05-04Z</expiry_date>
    <purge_date>2023-05-04Z</purge_date>
  </xsl:when>
  <xsl:when test="//saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'DS'">
    <user_group>hudvgd</user_group>
    <campus_code>HUWC</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HL</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-05-04Z</expiry_date>
    <purge_date>2023-05-04Z</purge_date>
  </xsl:when>
  <xsl:when test="//saml2:AttributeStatement/saml2:Attribute[@Name='hustudentdepartment']/saml2:AttributeValue = 'LW'">
    <user_group>hulaw</user_group>
    <campus_code>HUWC</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HL</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-05-04Z</expiry_date>
    <purge_date>2023-05-04Z</purge_date>
  </xsl:when>
  <xsl:when test="//saml2:AttributeStatement/saml2:Attribute[@Name='extensionattribute3']/saml2:AttributeValue = 'F12' or //saml2:AttributeStatement/saml2:Attribute[@Name='extensionattribute3']/saml2:AttributeValue = 'F9M' or //saml2:AttributeStatement/saml2:Attribute[@Name='extensionattribute3']/saml2:AttributeValue = 'FAC' or //saml2:AttributeStatement/saml2:Attribute[@Name='extensionattribute3']/saml2:AttributeValue = 'FSM'">
    <job_category>WRLCFaculty</job_category>
    <user_group>hufac</user_group>
    <campus_code>HU</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HUF</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-09-30Z</expiry_date>
    <purge_date>2023-09-30Z</purge_date>
  </xsl:when>
  <xsl:when test="//saml2:AttributeStatement/saml2:Attribute[@Name='staffid']">
    <user_group>hustaf</user_group>
    <campus_code>HU</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HUF</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-09-30Z</expiry_date>
    <purge_date>2023-09-30Z</purge_date>
  </xsl:when>
  <xsl:otherwise>
    <user_group>huund</user_group>
    <campus_code>HU</campus_code>
    <rs_libraries>
        <rs_library>
            <code>HUF</code>
        </rs_library>
    </rs_libraries>
    <expiry_date>2022-05-04Z</expiry_date>
    <purge_date>2023-05-04Z</purge_date>
  </xsl:otherwise>
  </xsl:choose>
  <contact_info>
    <emails>
      <email preferred="true" segment_type="External">
        <email_address><xsl:value-of select="//saml2:AttributeStatement/saml2:Attribute[@Name='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress']/saml2:AttributeValue"/></email_address>
        <email_types>
          <email_type>school</email_type>
        </email_types>
      </email>
    </emails>
    <phones/>
  </contact_info>
  <user_identifiers>
    <user_identifier segment_type="External">
      <id_type>UNIV_ID</id_type>
      <value><xsl:value-of select="//saml2:AttributeStatement/saml2:Attribute[@Name='usernamenodomain']/saml2:AttributeValue"/></value>
      <status>ACTIVE</status>
    </user_identifier>
    <xsl:if test="//saml2:AttributeStatement/saml2:Attribute[@Name='studentid']">
    <user_identifier segment_type="External">
      <id_type>INST_ID</id_type>
      <value><xsl:value-of select="//saml2:AttributeStatement/saml2:Attribute[@Name='studentid']/saml2:AttributeValue"/></value>
      <status>ACTIVE</status>
    </user_identifier>
    </xsl:if>
    <xsl:if test="//saml2:AttributeStatement/saml2:Attribute[@Name='staffid']">
    <user_identifier segment_type="External">
      <id_type>INST_ID</id_type>
      <value><xsl:value-of select="//saml2:AttributeStatement/saml2:Attribute[@Name='staffid']/saml2:AttributeValue"/></value>
      <status>ACTIVE</status>
    </user_identifier>
    </xsl:if>
    <xsl:if test="//saml2:AttributeStatement/saml2:Attribute[@Name='librarybarcode']">
    <user_identifier segment_type="External">
      <id_type>BARCODE</id_type>
      <value><xsl:value-of select="//saml2:AttributeStatement/saml2:Attribute[@Name='librarybarcode']/saml2:AttributeValue"/></value>
      <status>ACTIVE</status>
    </user_identifier>
    </xsl:if>
  </user_identifiers>
 </user>
</xsl:template>
</xsl:stylesheet>
