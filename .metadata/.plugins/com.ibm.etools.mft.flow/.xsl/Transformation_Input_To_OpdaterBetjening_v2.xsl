<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsl wsdl ns9 ns2 ns13 ns4 SOAP-ENC ns12 ns5 ns21 ns24 ns18 ns29 soap ns1 ns19 ns26 ns16 ns20 ns11 ns31 ns30 insurance monitor ns17 ns7 ns27 xsd ns22 ns15 ns10 auto3 ns25 ns3 ns6 ns8 common ns28 ns0 ns14 ns23 soap12 tns ora bpws xref ehdr xp20 orcl hwf ids" version="1.0" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:auto3="http://www.trygvesta.net/dk/message/product/auto/v3" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:common="http://www.trygvesta.net/dk/message/common/v1" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:insurance="http://www.trygvesta.net/dk/message/product/insurance/v1" xmlns:monitor="http://www.trygvesta.net/dk/message/common/monitor/v2" xmlns:ns0="http://www.trygvesta.net/dk/service/business/product/auto/v1" xmlns:ns1="http://www.trygvesta.net/dk/data/common/monitor/v1" xmlns:ns10="http://www.trygvesta.net/dk/data/product/v2" xmlns:ns11="http://www.trygvesta.net/dk/data/product/v1" xmlns:ns12="http://www.trygvesta.net/dk/data/common/v1" xmlns:ns13="http://www.trygvesta.net/dk/data/moneyprovision/v3" xmlns:ns14="http://www.trygvesta.net/dk/data/moneyprovision/v2" xmlns:ns15="http://www.trygvesta.net/dk/data/moneyprovision/v1" xmlns:ns16="http://www.trygvesta.net/dk/data/party/v12" xmlns:ns17="http://www.trygvesta.net/dk/data/category/v2" xmlns:ns18="http://www.trygvesta.net/dk/data/category/v1" xmlns:ns19="http://www.trygvesta.net/dk/data/claim/v4" xmlns:ns2="http://www.trygvesta.net/dk/data/common/error/v1" xmlns:ns20="http://www.trygvesta.net/dk/data/physicalobject/v3" xmlns:ns21="http://www.trygvesta.net/dk/data/physicalobject/v2" xmlns:ns22="http://www.trygvesta.net/dk/data/contactpoint/v5" xmlns:ns23="http://www.trygvesta.net/dk/data/physicalobject/v1" xmlns:ns24="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v5" xmlns:ns25="http://www.trygvesta.net/dk/data/contactpoint/v3" xmlns:ns26="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v4" xmlns:ns27="http://www.trygvesta.net/dk/data/contactpoint/v2" xmlns:ns28="http://www.trygvesta.net/dk/data/contactpoint/v1" xmlns:ns29="http://www.trygvesta.net/dk/data/contactpoint/v14" xmlns:ns3="http://www.trygvesta.net/dk/data/place/v1" xmlns:ns30="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v1" xmlns:ns31="http://www.trygvesta.net/dk/data/contactpoint/v12" xmlns:ns4="http://www.trygvesta.net/dk/data/product/v16" xmlns:ns5="http://www.trygvesta.net/dk/data/party/v3" xmlns:ns6="http://www.trygvesta.net/dk/data/party/v2" xmlns:ns7="http://www.trygvesta.net/dk/data/product/v3" xmlns:ns8="http://www.trygvesta.net/dk/data/product/auto/v1" xmlns:ns9="http://www.trygvesta.net/dk/data/party/v1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:tns="http://www.trygvesta.net/service/application/mainframe/dk/dop/bil/v2" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <tns:OpdaterBetjening>
      <DOP-NOEGLE-IN>
        <DOP-NOEGLE-TYPE>
          <xsl:value-of select="/auto3:UpdateFurtherRequest/ns12:Key/ns12:KeyCode"></xsl:value-of>
        </DOP-NOEGLE-TYPE>
        <DOP-NOEGLE-VAERDI>
          <xsl:value-of select="/auto3:UpdateFurtherRequest/ns12:Key/ns12:KeyValue"></xsl:value-of>
        </DOP-NOEGLE-VAERDI>
        <PRODUKT-TYPE>
          <xsl:value-of select="/auto3:UpdateFurtherRequest/ns18:ProductGroupCode"></xsl:value-of>
        </PRODUKT-TYPE>
      </DOP-NOEGLE-IN>
      <W-GP-IN>
        <xsl:if test="/auto3:UpdateFurtherRequest/ns11:StartDate">
          <xsl:if test="/auto3:UpdateFurtherRequest/ns11:StartDate != &quot;&quot;">
            <GAELDER-FRA-DATO>
              <xsl:value-of select="/auto3:UpdateFurtherRequest/ns11:StartDate"></xsl:value-of>
            </GAELDER-FRA-DATO>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateFurtherRequest/ns11:StartDate">
          <xsl:if test="/auto3:UpdateFurtherRequest/ns11:StartDate != &quot;&quot;">
            <GAELDER-FRA-DATO-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </GAELDER-FRA-DATO-C>
          </xsl:if>
        </xsl:if>
      </W-GP-IN>
    </tns:OpdaterBetjening>
  </xsl:template>
</xsl:stylesheet>