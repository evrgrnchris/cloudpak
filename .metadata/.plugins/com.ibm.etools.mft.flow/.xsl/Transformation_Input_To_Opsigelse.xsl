<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsl wsdl ns8 ns2 ns12 ns4 soapenc ns11 ns5 ns20 ns23 ns17 ns27 soap ns30 ns1 ns18 ns15 ns19 ns10 ns29 ns28 insurance monitor ns16 ns7 ns25 xsd ns21 ns14 ns9 auto3 ns24 ns3 ns6 common ns26 ns0 ns13 ns22 soap12 sn0 tns ora bpws xref ehdr xp20 orcl hwf ids" version="1.0" xmlns:auto3="http://www.trygvesta.net/dk/message/product/auto/v3" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:common="http://www.trygvesta.net/dk/message/common/v1" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:insurance="http://www.trygvesta.net/dk/message/product/insurance/v1" xmlns:monitor="http://www.trygvesta.net/dk/message/common/monitor/v2" xmlns:ns0="http://www.trygvesta.net/dk/service/business/product/auto/v1" xmlns:ns1="http://www.trygvesta.net/dk/data/common/monitor/v1" xmlns:ns10="http://www.trygvesta.net/dk/data/product/v1" xmlns:ns11="http://www.trygvesta.net/dk/data/common/v1" xmlns:ns12="http://www.trygvesta.net/dk/data/moneyprovision/v3" xmlns:ns13="http://www.trygvesta.net/dk/data/moneyprovision/v2" xmlns:ns14="http://www.trygvesta.net/dk/data/moneyprovision/v1" xmlns:ns15="http://www.trygvesta.net/dk/data/party/v12" xmlns:ns16="http://www.trygvesta.net/dk/data/category/v2" xmlns:ns17="http://www.trygvesta.net/dk/data/category/v1" xmlns:ns18="http://www.trygvesta.net/dk/data/claim/v4" xmlns:ns19="http://www.trygvesta.net/dk/data/physicalobject/v3" xmlns:ns2="http://www.trygvesta.net/dk/data/common/error/v1" xmlns:ns20="http://www.trygvesta.net/dk/data/physicalobject/v2" xmlns:ns21="http://www.trygvesta.net/dk/data/contactpoint/v5" xmlns:ns22="http://www.trygvesta.net/dk/data/physicalobject/v1" xmlns:ns23="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v5" xmlns:ns24="http://www.trygvesta.net/dk/data/contactpoint/v3" xmlns:ns25="http://www.trygvesta.net/dk/data/contactpoint/v2" xmlns:ns26="http://www.trygvesta.net/dk/data/contactpoint/v1" xmlns:ns27="http://www.trygvesta.net/dk/data/contactpoint/v14" xmlns:ns28="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v1" xmlns:ns29="http://www.trygvesta.net/dk/data/contactpoint/v12" xmlns:ns3="http://www.trygvesta.net/dk/data/place/v1" xmlns:ns30="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v4" xmlns:ns4="http://www.trygvesta.net/dk/data/product/v16" xmlns:ns5="http://www.trygvesta.net/dk/data/party/v3" xmlns:ns6="http://www.trygvesta.net/dk/data/party/v2" xmlns:ns7="http://www.trygvesta.net/dk/data/product/v3" xmlns:ns8="http://www.trygvesta.net/dk/data/party/v1" xmlns:ns9="http://www.trygvesta.net/dk/data/product/v2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:sn0="http://www.trygvesta.net/service/application/mainframe/dk/dop/v4" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://namespace.softwareag.com/entirex/xml/mapping" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <sn0:Opsigelse>
      <DOP-NOEGLE-IN>
        <DOP-NOEGLE-TYPE>
          <xsl:value-of select="/auto3:UpdateFurtherRequest/ns11:Key/ns11:KeyCode"></xsl:value-of>
        </DOP-NOEGLE-TYPE>
        <DOP-NOEGLE-VAERDI>
          <xsl:value-of select="/auto3:UpdateFurtherRequest/ns11:Key/ns11:KeyValue"></xsl:value-of>
        </DOP-NOEGLE-VAERDI>
        <PRODUKT-TYPE>
          <xsl:value-of select="/auto3:UpdateFurtherRequest/ns17:ProductGroupCode"></xsl:value-of>
        </PRODUKT-TYPE>
      </DOP-NOEGLE-IN>
      <W-EOPS-IN>
        <xsl:if test="/auto3:UpdateFurtherRequest/ns10:TerminateInsurance != &quot;&quot;">
          <OPSIGELSE>
            <xsl:value-of select="/auto3:UpdateFurtherRequest/ns10:TerminateInsurance"></xsl:value-of>
          </OPSIGELSE>
        </xsl:if>
        <xsl:if test="/auto3:UpdateFurtherRequest/ns9:ClaimRequest != &quot;&quot;">
          <SKADEFORESPOERGSEL>
            <xsl:value-of select="/auto3:UpdateFurtherRequest/ns9:ClaimRequest"></xsl:value-of>
          </SKADEFORESPOERGSEL>
        </xsl:if>
        <TABELs>
          <xsl:for-each select="/auto3:UpdateFurtherRequest/ns23:InsuranceTerminationStructure">
            <TABEL>
              <DOKUMENT-TYPE>
                <xsl:value-of select="ns9:RequestTypeCode"></xsl:value-of>
              </DOKUMENT-TYPE>
              <PRODUKT-GRUPPE-TEKST>
                <xsl:value-of select="ns17:ProductGroupName"></xsl:value-of>
              </PRODUKT-GRUPPE-TEKST>
              <ANDET-SELSKAB-KODE>
                <xsl:value-of select="ns8:ExternalPartyCode"></xsl:value-of>
              </ANDET-SELSKAB-KODE>
              <ANDET-POLICE-IDENT>
                <xsl:value-of select="ns10:ExternalPolicyNumber"></xsl:value-of>
              </ANDET-POLICE-IDENT>
              <OPSIGELSE-DATO>
                <xsl:value-of select="ns10:RequestDate"></xsl:value-of>
              </OPSIGELSE-DATO>
              <OPSIGELSE-AARSAG>
                <xsl:value-of select="ns10:RequestReason"></xsl:value-of>
              </OPSIGELSE-AARSAG>
              <INDREG-NR>
                <xsl:value-of select="../ns28:RegistrationNumber"></xsl:value-of>
              </INDREG-NR>
            </TABEL>
          </xsl:for-each>
        </TABELs>
        <xsl:if test="/auto3:UpdateFurtherRequest/ns10:TerminateInsurance != &quot;&quot;">
          <OPSIGELSE-C>
            <xsl:text disable-output-escaping="no">X</xsl:text>
          </OPSIGELSE-C>
        </xsl:if>
        <xsl:if test="/auto3:UpdateFurtherRequest/ns9:ClaimRequest != &quot;&quot;">
          <SKADEFORESPOERGSEL-C>
            <xsl:text disable-output-escaping="no">X</xsl:text>
          </SKADEFORESPOERGSEL-C>
        </xsl:if>
        <C-TABELs>
          <xsl:for-each select="/auto3:UpdateFurtherRequest/ns23:InsuranceTerminationStructure">
            <C-TABEL>
              <DOKUMENT-TYPE-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </DOKUMENT-TYPE-C>
              <PRODUKT-GRUPPE-TEKST-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </PRODUKT-GRUPPE-TEKST-C>
              <ANDET-SELSKAB-KODE-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </ANDET-SELSKAB-KODE-C>
              <ANDET-POLICE-IDENT-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </ANDET-POLICE-IDENT-C>
              <OPSIGELSE-DATO-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </OPSIGELSE-DATO-C>
              <OPSIGELSE-AARSAG-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </OPSIGELSE-AARSAG-C>
              <INDREG-NR-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </INDREG-NR-C>
            </C-TABEL>
          </xsl:for-each>
        </C-TABELs>
      </W-EOPS-IN>
    </sn0:Opsigelse>
  </xsl:template>
</xsl:stylesheet>