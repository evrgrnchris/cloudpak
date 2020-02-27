<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsl wsdl soap12 soapenc tns soap xsd common ns8 ns2 ns12 ns4 ns11 ns5 ns20 ns23 ns27 ns17 ns30 ns1 ns18 ns15 ns19 ns10 ns28 ns29 insurance monitor ns16 ns7 ns25 ns21 ns14 ns9 auto3 ns24 ns3 ns31 ns6 ns26 ns0 ns13 ns22 ora bpws xref ehdr xp20 orcl hwf ids" version="1.0" xmlns:auto3="http://www.trygvesta.net/dk/message/product/auto/v3" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:common="http://www.trygvesta.net/dk/message/common/v1" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:insurance="http://www.trygvesta.net/dk/message/product/insurance/v1" xmlns:monitor="http://www.trygvesta.net/dk/message/common/monitor/v2" xmlns:ns0="http://www.trygvesta.net/dk/service/business/product/auto/v1" xmlns:ns1="http://www.trygvesta.net/dk/data/common/monitor/v1" xmlns:ns10="http://www.trygvesta.net/dk/data/product/v1" xmlns:ns11="http://www.trygvesta.net/dk/data/common/v1" xmlns:ns12="http://www.trygvesta.net/dk/data/moneyprovision/v3" xmlns:ns13="http://www.trygvesta.net/dk/data/moneyprovision/v2" xmlns:ns14="http://www.trygvesta.net/dk/data/moneyprovision/v1" xmlns:ns15="http://www.trygvesta.net/dk/data/party/v12" xmlns:ns16="http://www.trygvesta.net/dk/data/category/v2" xmlns:ns17="http://www.trygvesta.net/dk/data/category/v1" xmlns:ns18="http://www.trygvesta.net/dk/data/claim/v4" xmlns:ns19="http://www.trygvesta.net/dk/data/physicalobject/v3" xmlns:ns2="http://www.trygvesta.net/dk/data/common/error/v1" xmlns:ns20="http://www.trygvesta.net/dk/data/physicalobject/v2" xmlns:ns21="http://www.trygvesta.net/dk/data/contactpoint/v5" xmlns:ns22="http://www.trygvesta.net/dk/data/physicalobject/v1" xmlns:ns23="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v5" xmlns:ns24="http://www.trygvesta.net/dk/data/contactpoint/v3" xmlns:ns25="http://www.trygvesta.net/dk/data/contactpoint/v2" xmlns:ns26="http://www.trygvesta.net/dk/data/contactpoint/v1" xmlns:ns27="http://www.trygvesta.net/dk/data/contactpoint/v14" xmlns:ns28="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v1" xmlns:ns29="http://www.trygvesta.net/dk/data/contactpoint/v12" xmlns:ns3="http://www.trygvesta.net/dk/data/place/v1" xmlns:ns30="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v4" xmlns:ns31="http://www.trygvesta.net/dk/data/product/auto/v1" xmlns:ns4="http://www.trygvesta.net/dk/data/product/v16" xmlns:ns5="http://www.trygvesta.net/dk/data/party/v3" xmlns:ns6="http://www.trygvesta.net/dk/data/party/v2" xmlns:ns7="http://www.trygvesta.net/dk/data/product/v3" xmlns:ns8="http://www.trygvesta.net/dk/data/party/v1" xmlns:ns9="http://www.trygvesta.net/dk/data/product/v2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://www.trygvesta.net/service/application/mainframe/dk/dop/bil/v2" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
  <soapenv:Header></soapenv:Header>
  <soapenv:Body>
    <auto3:GetInstanceResponse>
      <ns11:Key>
        <ns11:KeyCode>
          <xsl:value-of select="/tns:HentBetjeningResponse/DOP-NOEGLE-OUT/DOP-NOEGLE-TYPE"></xsl:value-of>
        </ns11:KeyCode>
        <ns11:KeyValue>
          <xsl:value-of select="/tns:HentBetjeningResponse/DOP-NOEGLE-OUT/DOP-NOEGLE-VAERDI"></xsl:value-of>
        </ns11:KeyValue>
      </ns11:Key>
      <ns17:ProductGroupName>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GP-OUT/PRODUKT-TEKST"></xsl:value-of>
      </ns17:ProductGroupName>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/ANVENDELSE-TYPE = &quot;VARE&quot;">
          <ns17:ProductGroupCode>
            <xsl:text disable-output-escaping="no">VAR2</xsl:text>
          </ns17:ProductGroupCode>
        </xsl:when>
        <xsl:otherwise>
          <ns17:ProductGroupCode>
            <xsl:value-of select="/tns:HentBetjeningResponse/DOP-NOEGLE-OUT/PRODUKT-TYPE"></xsl:value-of>
          </ns17:ProductGroupCode>
        </xsl:otherwise>
      </xsl:choose>
      <ns8:RolePlayerId>
        <xsl:value-of select="/tns:HentBetjeningResponse/DOP-NOEGLE-OUT/FFNUMMER"></xsl:value-of>
      </ns8:RolePlayerId>
      <ns8:CivilRegistrationNumber>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/CPR-NR-FOEDSELSDATO"></xsl:value-of>
      </ns8:CivilRegistrationNumber>
      <ns14:PaymentMethodName>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GP-OUT/OPKRAEVNING-TEKST"></xsl:value-of>
      </ns14:PaymentMethodName>
      <ns12:PremiumPaymentFrequency>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GP-OUT/TERMIN-ANTAL"></xsl:value-of>
      </ns12:PremiumPaymentFrequency>
      <ns15:IsCustomerInRKI>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/GA-RKI"></xsl:value-of>
      </ns15:IsCustomerInRKI>
      <ns9:ExcessAmount>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/SELVRISIKO-TEKST-GENE"></xsl:value-of>
      </ns9:ExcessAmount>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/SKADER-SENESTE-3-AAR != &quot;&quot;">
          <ns18:NumberOfClaims>
            <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/SKADER-SENESTE-3-AAR"></xsl:value-of>
          </ns18:NumberOfClaims>
        </xsl:when>
      </xsl:choose>
      <ns3:TariffPostalCode>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/TARIF-POST-NR"></xsl:value-of>
      </ns3:TariffPostalCode>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/UNG-BAG-RATTET = &quot;J&quot;">
          <ns23:YoungDriver>
            <xsl:text disable-output-escaping="no">true</xsl:text>
          </ns23:YoungDriver>
        </xsl:when>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/UNG-BAG-RATTET = &quot;N&quot;">
          <ns23:YoungDriver>
            <xsl:text disable-output-escaping="no">false</xsl:text>
          </ns23:YoungDriver>
        </xsl:when>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/LEASING = &quot;J&quot;">
          <ns23:CarLeased>
            <xsl:text disable-output-escaping="no">true</xsl:text>
          </ns23:CarLeased>
        </xsl:when>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/LEASING = &quot;N&quot;">
          <ns23:CarLeased>
            <xsl:text disable-output-escaping="no">false</xsl:text>
          </ns23:CarLeased>
        </xsl:when>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/ANTAL-AAR-EGEN != &quot;&quot;">
          <ns6:DrivingExperience>
            <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/ANTAL-AAR-EGEN"></xsl:value-of>
          </ns6:DrivingExperience>
        </xsl:when>
      </xsl:choose>
      <ns28:RegistrationNumber>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/INDREG-NR"></xsl:value-of>
      </ns28:RegistrationNumber>
      <ns22:VehicleMakeId>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/VMR-ID"></xsl:value-of>
      </ns22:VehicleMakeId>
      <ns22:VehicleIdentificationNumber>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/STEL-NR"></xsl:value-of>
      </ns22:VehicleIdentificationNumber>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/AARGANG != &quot;0&quot;">
          <ns22:ModelYear>
            <xsl:value-of select="concat(/tns:HentBetjeningResponse/W-GA-OUT/AARGANG,&quot;-01-01&quot;)"></xsl:value-of>
          </ns22:ModelYear>
        </xsl:when>
      </xsl:choose>
      <ns19:MakeAndModel>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/MAERKE"></xsl:value-of>
      </ns19:MakeAndModel>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/TILKOBLING != &quot;&quot;">
          <xsl:choose>
            <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/TILKOBLING = &quot;J&quot;">
              <ns28:CouplingOption>
                <xsl:text disable-output-escaping="no">true</xsl:text>
              </ns28:CouplingOption>
            </xsl:when>
            <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/TILKOBLING = &quot;N&quot;">
              <ns28:CouplingOption>
                <xsl:text disable-output-escaping="no">false</xsl:text>
              </ns28:CouplingOption>
            </xsl:when>
          </xsl:choose>
        </xsl:when>
      </xsl:choose>
      <ns23:EquipmentValue>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/EKSTRAUDSTYR-NUM"></xsl:value-of>
      </ns23:EquipmentValue>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/KM-AARLIG-TEKST != &quot;&quot;">
          <ns23:AnnualMileageText>
            <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/KM-AARLIG-TEKST"></xsl:value-of>
          </ns23:AnnualMileageText>
        </xsl:when>
      </xsl:choose>
      <ns28:RecordedMileage>
        <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/KM-STAND/decimal"></xsl:value-of>
      </ns28:RecordedMileage>
      <xsl:choose>
        <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/KM-STAND-OPLYST-DATO/date != &quot;&quot;">
          <ns22:RecordedMileageDate>
            <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/KM-STAND-OPLYST-DATO/date"></xsl:value-of>
          </ns22:RecordedMileageDate>
        </xsl:when>
      </xsl:choose>
      <xsl:for-each select="/tns:HentBetjeningResponse/W-DA-OUT/TABELs/TABEL">
        <xsl:if test="DAEKNING-TYPE != &quot;&quot;">
          <ns10:Coverage>
            <ns10:CoverageCode>
              <xsl:value-of select="DAEKNING-TYPE"></xsl:value-of>
            </ns10:CoverageCode>
            <ns10:CoverageIndicator>
              <xsl:value-of select="J-N"></xsl:value-of>
            </ns10:CoverageIndicator>
            <ns10:CoverageName>
              <xsl:value-of select="DAEKNING-TEKST"></xsl:value-of>
            </ns10:CoverageName>
          </ns10:Coverage>
        </xsl:if>
      </xsl:for-each>
      <xsl:if test="/tns:HentBetjeningResponse/W-GA-OUT/TRYGDRIVE">
        <xsl:if test="/tns:HentBetjeningResponse/W-GA-OUT/TRYGDRIVE != &quot;&quot;">
          <xsl:choose>
            <xsl:when test="/tns:HentBetjeningResponse/W-GA-OUT/TRYGDRIVE = &quot;J&quot;">
              <ns31:TrygDrive>
                <xsl:text disable-output-escaping="no">true</xsl:text>
              </ns31:TrygDrive>
            </xsl:when>
            <xsl:otherwise>
              <ns31:TrygDrive>
                <xsl:text disable-output-escaping="no">false</xsl:text>
              </ns31:TrygDrive>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </xsl:if>
      <xsl:if test="/tns:HentBetjeningResponse/W-GA-OUT/LEASING-DATO">
        <xsl:if test="/tns:HentBetjeningResponse/W-GA-OUT/LEASING-DATO != &quot;&quot;">
          <ns10:LeasingEndDate>
            <xsl:value-of select="/tns:HentBetjeningResponse/W-GA-OUT/LEASING-DATO"></xsl:value-of>
          </ns10:LeasingEndDate>
        </xsl:if>
      </xsl:if>
    </auto3:GetInstanceResponse>
   </soapenv:Body>
    </soapenv:Envelope>
  </xsl:template>
</xsl:stylesheet>