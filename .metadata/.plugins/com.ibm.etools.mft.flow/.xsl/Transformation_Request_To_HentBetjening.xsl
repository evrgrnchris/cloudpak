<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsl wsdl ns8 ns2 ns12 ns4 soapenc ns11 ns5 ns20 ns23 ns17 ns27 soap ns1 ns18 ns15 ns19 ns10 ns28 ns29 insurance monitor ns16 ns7 ns25 xsd ns21 ns14 ns9 auto3 ns24 ns3 ns6 common ns26 ns0 ns13 ns22 soap12 tns ora bpws xref ehdr xp20 orcl hwf ids" version="1.0" xmlns:auto3="http://www.trygvesta.net/dk/message/product/auto/v3" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:common="http://www.trygvesta.net/dk/message/common/v1" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:insurance="http://www.trygvesta.net/dk/message/product/insurance/v1" xmlns:monitor="http://www.trygvesta.net/dk/message/common/monitor/v2" xmlns:ns0="http://www.trygvesta.net/dk/service/business/product/auto/v1" xmlns:ns1="http://www.trygvesta.net/dk/data/common/monitor/v1" xmlns:ns10="http://www.trygvesta.net/dk/data/product/v1" xmlns:ns11="http://www.trygvesta.net/dk/data/common/v1" xmlns:ns12="http://www.trygvesta.net/dk/data/moneyprovision/v3" xmlns:ns13="http://www.trygvesta.net/dk/data/moneyprovision/v2" xmlns:ns14="http://www.trygvesta.net/dk/data/moneyprovision/v1" xmlns:ns15="http://www.trygvesta.net/dk/data/party/v12" xmlns:ns16="http://www.trygvesta.net/dk/data/category/v2" xmlns:ns17="http://www.trygvesta.net/dk/data/category/v1" xmlns:ns18="http://www.trygvesta.net/dk/data/claim/v4" xmlns:ns19="http://www.trygvesta.net/dk/data/physicalobject/v3" xmlns:ns2="http://www.trygvesta.net/dk/data/common/error/v1" xmlns:ns20="http://www.trygvesta.net/dk/data/physicalobject/v2" xmlns:ns21="http://www.trygvesta.net/dk/data/contactpoint/v5" xmlns:ns22="http://www.trygvesta.net/dk/data/physicalobject/v1" xmlns:ns23="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v5" xmlns:ns24="http://www.trygvesta.net/dk/data/contactpoint/v3" xmlns:ns25="http://www.trygvesta.net/dk/data/contactpoint/v2" xmlns:ns26="http://www.trygvesta.net/dk/data/contactpoint/v1" xmlns:ns27="http://www.trygvesta.net/dk/data/contactpoint/v14" xmlns:ns28="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v1" xmlns:ns29="http://www.trygvesta.net/dk/data/contactpoint/v12" xmlns:ns3="http://www.trygvesta.net/dk/data/place/v1" xmlns:ns4="http://www.trygvesta.net/dk/data/product/v16" xmlns:ns5="http://www.trygvesta.net/dk/data/party/v3" xmlns:ns6="http://www.trygvesta.net/dk/data/party/v2" xmlns:ns7="http://www.trygvesta.net/dk/data/product/v3" xmlns:ns8="http://www.trygvesta.net/dk/data/party/v1" xmlns:ns9="http://www.trygvesta.net/dk/data/product/v2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://www.trygvesta.net/service/application/mainframe/dk/dop/bil/v2" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <tns:HentBetjening>
      <DOP-NOEGLE-IN>
        <DOP-NOEGLE-TYPE>
          <xsl:value-of select="/auto3:GetInstanceRequest/ns11:Key/ns11:KeyCode"></xsl:value-of>
        </DOP-NOEGLE-TYPE>
        <DOP-NOEGLE-VAERDI>
          <xsl:value-of select="/auto3:GetInstanceRequest/ns11:Key/ns11:KeyValue"></xsl:value-of>
        </DOP-NOEGLE-VAERDI>
        <PRODUKT-TYPE>
          <xsl:value-of select="/auto3:GetInstanceRequest/ns17:ProductGroupCode"></xsl:value-of>
        </PRODUKT-TYPE>
      </DOP-NOEGLE-IN>
      <W-SDPK-IN>
        <xsl:if test="/auto3:GetInstanceRequest/ns5:PartnerType != &quot;&quot;">
          <PARTNER-TYPE>
            <xsl:value-of select="/auto3:GetInstanceRequest/ns5:PartnerType"></xsl:value-of>
          </PARTNER-TYPE>
        </xsl:if>
        <xsl:if test="/auto3:GetInstanceRequest/ns5:PartnerName != &quot;&quot;">
          <PARTNER-NAVN>
            <xsl:value-of select="/auto3:GetInstanceRequest/ns5:PartnerName"></xsl:value-of>
          </PARTNER-NAVN>
        </xsl:if>
        <xsl:if test="/auto3:GetInstanceRequest/ns5:PartnerCode != &quot;&quot;">
          <PARTNER-KODE>
            <xsl:value-of select="/auto3:GetInstanceRequest/ns5:PartnerCode"></xsl:value-of>
          </PARTNER-KODE>
        </xsl:if>
        <xsl:if test="/auto3:GetInstanceRequest/ns5:PartnerType != &quot;&quot;">
          <PARTNER-TYPE-C>
            <xsl:text disable-output-escaping="no">X</xsl:text>
          </PARTNER-TYPE-C>
        </xsl:if>
        <xsl:if test="/auto3:GetInstanceRequest/ns5:PartnerName != &quot;&quot;">
          <PARTNER-NAVN-C>
            <xsl:text disable-output-escaping="no">X</xsl:text>
          </PARTNER-NAVN-C>
        </xsl:if>
        <xsl:if test="/auto3:GetInstanceRequest/ns5:PartnerCode != &quot;&quot;">
          <PARTNER-KODE-C>
            <xsl:text disable-output-escaping="no">X</xsl:text>
          </PARTNER-KODE-C>
        </xsl:if>
      </W-SDPK-IN>
      <W-SDWV-IN>
        <xsl:if test="/auto3:GetInstanceRequest/ns16:MarketSegmentCode != &quot;&quot;">
          <VINDUES-KONCEPT-TYPE>
            <xsl:value-of select="/auto3:GetInstanceRequest/ns16:MarketSegmentCode"></xsl:value-of>
          </VINDUES-KONCEPT-TYPE>
        </xsl:if>
        <xsl:if test="/auto3:GetInstanceRequest/ns16:MarketSegmentCode != &quot;&quot;">
          <VINDUES-KONCEPT-TYPE-C>
            <xsl:text disable-output-escaping="no">X</xsl:text>
          </VINDUES-KONCEPT-TYPE-C>
        </xsl:if>
      </W-SDWV-IN>
    </tns:HentBetjening>
  </xsl:template>
</xsl:stylesheet>