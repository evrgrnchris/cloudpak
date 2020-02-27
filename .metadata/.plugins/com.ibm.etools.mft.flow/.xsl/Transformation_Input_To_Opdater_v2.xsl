<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xsl wsdl ns9 ns2 ns13 SOAP-ENC ns4 ns12 ns5 ns21 ns24 ns29 ns18 soap ns1 ns19 ns26 ns16 ns20 ns11 ns31 ns30 insurance monitor ns17 ns7 ns27 xsd ns22 ns15 ns10 auto3 ns25 ns3 ns6 ns8 common ns28 ns0 ns14 ns23 soap12 tns ora bpws xref ehdr xp20 orcl hwf ids" version="1.0" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:auto3="http://www.trygvesta.net/dk/message/product/auto/v3" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:common="http://www.trygvesta.net/dk/message/common/v1" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:insurance="http://www.trygvesta.net/dk/message/product/insurance/v1" xmlns:monitor="http://www.trygvesta.net/dk/message/common/monitor/v2" xmlns:ns0="http://www.trygvesta.net/dk/service/business/product/auto/v1" xmlns:ns1="http://www.trygvesta.net/dk/data/common/monitor/v1" xmlns:ns10="http://www.trygvesta.net/dk/data/product/v2" xmlns:ns11="http://www.trygvesta.net/dk/data/product/v1" xmlns:ns12="http://www.trygvesta.net/dk/data/common/v1" xmlns:ns13="http://www.trygvesta.net/dk/data/moneyprovision/v3" xmlns:ns14="http://www.trygvesta.net/dk/data/moneyprovision/v2" xmlns:ns15="http://www.trygvesta.net/dk/data/moneyprovision/v1" xmlns:ns16="http://www.trygvesta.net/dk/data/party/v12" xmlns:ns17="http://www.trygvesta.net/dk/data/category/v2" xmlns:ns18="http://www.trygvesta.net/dk/data/category/v1" xmlns:ns19="http://www.trygvesta.net/dk/data/claim/v4" xmlns:ns2="http://www.trygvesta.net/dk/data/common/error/v1" xmlns:ns20="http://www.trygvesta.net/dk/data/physicalobject/v3" xmlns:ns21="http://www.trygvesta.net/dk/data/physicalobject/v2" xmlns:ns22="http://www.trygvesta.net/dk/data/contactpoint/v5" xmlns:ns23="http://www.trygvesta.net/dk/data/physicalobject/v1" xmlns:ns24="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v5" xmlns:ns25="http://www.trygvesta.net/dk/data/contactpoint/v3" xmlns:ns26="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v4" xmlns:ns27="http://www.trygvesta.net/dk/data/contactpoint/v2" xmlns:ns28="http://www.trygvesta.net/dk/data/contactpoint/v1" xmlns:ns29="http://www.trygvesta.net/dk/data/contactpoint/v14" xmlns:ns3="http://www.trygvesta.net/dk/data/place/v1" xmlns:ns30="http://www.trygvesta.net/dk/data/physicalobject/vehicle/v1" xmlns:ns31="http://www.trygvesta.net/dk/data/contactpoint/v12" xmlns:ns4="http://www.trygvesta.net/dk/data/product/v16" xmlns:ns5="http://www.trygvesta.net/dk/data/party/v3" xmlns:ns6="http://www.trygvesta.net/dk/data/party/v2" xmlns:ns7="http://www.trygvesta.net/dk/data/product/v3" xmlns:ns8="http://www.trygvesta.net/dk/data/product/auto/v1" xmlns:ns9="http://www.trygvesta.net/dk/data/party/v1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:tns="http://www.trygvesta.net/service/application/mainframe/dk/dop/bil/v2" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <tns:OpdaterBetjening>
      <DOP-NOEGLE-IN>
        <DOP-NOEGLE-TYPE>
          <xsl:value-of select="/auto3:UpdateRequest/ns12:Key/ns12:KeyCode"></xsl:value-of>
        </DOP-NOEGLE-TYPE>
        <DOP-NOEGLE-VAERDI>
          <xsl:value-of select="/auto3:UpdateRequest/ns12:Key/ns12:KeyValue"></xsl:value-of>
        </DOP-NOEGLE-VAERDI>
        <xsl:if test="/auto3:UpdateRequest/ns9:RolePlayerId">
          <xsl:if test="/auto3:UpdateRequest/ns9:RolePlayerId != &quot;&quot;">
            <FFNUMMER>
              <xsl:value-of select="/auto3:UpdateRequest/ns9:RolePlayerId"></xsl:value-of>
            </FFNUMMER>
          </xsl:if>
        </xsl:if>
        <PRODUKT-TYPE>
          <xsl:value-of select="/auto3:UpdateRequest/ns18:ProductGroupCode"></xsl:value-of>
        </PRODUKT-TYPE>
      </DOP-NOEGLE-IN>
      <W-GP-IN>
        <xsl:if test="/auto3:UpdateRequest/ns18:ProductGroupCode = &quot;VAR2&quot;">
          <ANVENDELSE-TYPE>
            <xsl:text disable-output-escaping="no">VARE</xsl:text>
          </ANVENDELSE-TYPE>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns11:StartDate">
          <xsl:if test="/auto3:UpdateRequest/ns11:StartDate != &quot;&quot;">
            <GAELDER-FRA-DATO>
              <xsl:value-of select="/auto3:UpdateRequest/ns11:StartDate"></xsl:value-of>
            </GAELDER-FRA-DATO>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns15:PaymentMethodName">
          <xsl:if test="/auto3:UpdateRequest/ns15:PaymentMethodName != &quot;&quot;">
            <OPKRAEVNING-TEKST>
              <xsl:value-of select="/auto3:UpdateRequest/ns15:PaymentMethodName"></xsl:value-of>
            </OPKRAEVNING-TEKST>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns13:PremiumPaymentFrequency">
          <xsl:if test="/auto3:UpdateRequest/ns13:PremiumPaymentFrequency != &quot;&quot;">
            <TERMIN-ANTAL>
              <xsl:value-of select="/auto3:UpdateRequest/ns13:PremiumPaymentFrequency"></xsl:value-of>
            </TERMIN-ANTAL>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns4:RenewalDate">
          <xsl:if test="/auto3:UpdateRequest/ns4:RenewalDate != &quot;&quot;">
            <HOVEDFORFALD>
               <!--  <xsl:value-of select='fn:format-date(/auto3:UpdateRequest/ns4:RenewalDate,"[D01][M01]")'/>   -->

             <xsl:value-of select="concat(substring(/auto3:UpdateRequest/ns4:RenewalDate,6,2) ,substring(/auto3:UpdateRequest/ns4:RenewalDate,9,2))"></xsl:value-of>
            </HOVEDFORFALD>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns18:ProductGroupCode = &quot;VAR2&quot;">
          <PRODUKT-TYPE-C>
            <xsl:text disable-output-escaping="no">X</xsl:text>
          </PRODUKT-TYPE-C>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns11:StartDate">
          <xsl:if test="/auto3:UpdateRequest/ns11:StartDate != &quot;&quot;">
            <GAELDER-FRA-DATO-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </GAELDER-FRA-DATO-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns15:PaymentMethodName">
          <xsl:if test="/auto3:UpdateRequest/ns15:PaymentMethodName != &quot;&quot;">
            <OPKRAEVNING-TEKST-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </OPKRAEVNING-TEKST-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns13:PremiumPaymentFrequency">
          <xsl:if test="/auto3:UpdateRequest/ns13:PremiumPaymentFrequency != &quot;&quot;">
            <TERMIN-ANTAL-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </TERMIN-ANTAL-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns4:RenewalDate">
          <xsl:if test="/auto3:UpdateRequest/ns4:RenewalDate != &quot;&quot;">
            <HOVEDFORFALD-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </HOVEDFORFALD-C>
          </xsl:if>
        </xsl:if>
      </W-GP-IN>
      <W-GA-IN>
        <xsl:if test="/auto3:UpdateRequest/ns30:RegistrationNumber">
          <xsl:if test="/auto3:UpdateRequest/ns30:RegistrationNumber != &quot;&quot;">
            <INDREG-NR>
              <xsl:value-of select="/auto3:UpdateRequest/ns30:RegistrationNumber"></xsl:value-of>
            </INDREG-NR>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns23:VehicleIdentificationNumber">
          <xsl:if test="/auto3:UpdateRequest/ns23:VehicleIdentificationNumber != &quot;&quot;">
            <STEL-NR>
              <xsl:value-of select="/auto3:UpdateRequest/ns23:VehicleIdentificationNumber"></xsl:value-of>
            </STEL-NR>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:CarLeased">
          <xsl:choose>
            <xsl:when test="/auto3:UpdateRequest/ns24:CarLeased = &quot;true&quot;">
              <LEASING>
                <xsl:text disable-output-escaping="no">J</xsl:text>
              </LEASING>
            </xsl:when>
            <xsl:when test="/auto3:UpdateRequest/ns24:CarLeased = &quot;false&quot;">
              <LEASING>
                <xsl:text disable-output-escaping="no">N</xsl:text>
              </LEASING>
            </xsl:when>
          </xsl:choose>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns23:ModelYear">
          <xsl:if test="/auto3:UpdateRequest/ns23:ModelYear != &quot;&quot;">
            <AARGANG>
              <xsl:value-of select="substring-before(/auto3:UpdateRequest/ns23:ModelYear,&quot;-&quot;)"></xsl:value-of>
            </AARGANG>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns3:TariffPostalCode">
          <xsl:if test="/auto3:UpdateRequest/ns3:TariffPostalCode != &quot;&quot;">
            <TARIF-POST-NR>
              <xsl:value-of select="/auto3:UpdateRequest/ns3:TariffPostalCode"></xsl:value-of>
            </TARIF-POST-NR>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns23:VehicleMakeId">
          <xsl:if test="/auto3:UpdateRequest/ns23:VehicleMakeId != &quot;&quot;">
            <VMR-ID>
              <xsl:value-of select="/auto3:UpdateRequest/ns23:VehicleMakeId"></xsl:value-of>
            </VMR-ID>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns10:ExcessAmount">
          <xsl:if test="/auto3:UpdateRequest/ns10:ExcessAmount != &quot;&quot;">
            <SELVRISIKO-TEKST-GENE>
              <xsl:value-of select="/auto3:UpdateRequest/ns10:ExcessAmount"></xsl:value-of>
            </SELVRISIKO-TEKST-GENE>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns9:CivilRegistrationNumber">
          <xsl:if test="/auto3:UpdateRequest/ns9:CivilRegistrationNumber != &quot;&quot;">
            <CPR-NR-FOEDSELSDATO>
              <xsl:value-of select="/auto3:UpdateRequest/ns9:CivilRegistrationNumber"></xsl:value-of>
            </CPR-NR-FOEDSELSDATO>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns19:NumberOfClaims">
          <xsl:if test="/auto3:UpdateRequest/ns19:NumberOfClaims != &quot;&quot;">
            <SKADER-SENESTE-3-AAR>
              <xsl:value-of select="/auto3:UpdateRequest/ns19:NumberOfClaims"></xsl:value-of>
            </SKADER-SENESTE-3-AAR>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:AnnualMileageText">
          <xsl:if test="/auto3:UpdateRequest/ns24:AnnualMileageText != &quot;&quot;">
            <KM-AARLIG-TEKST>
              <xsl:value-of select="/auto3:UpdateRequest/ns24:AnnualMileageText"></xsl:value-of>
            </KM-AARLIG-TEKST>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns30:RecordedMileage">
          <xsl:if test="/auto3:UpdateRequest/ns30:RecordedMileage != &quot;&quot;">
            <KM-STAND>
              <decimal>
                <xsl:value-of select="translate(/auto3:UpdateRequest/ns30:RecordedMileage,&quot;.&quot;,&quot;&quot;)"></xsl:value-of>
              </decimal>
            </KM-STAND>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns23:RecordedMileageDate">
          <xsl:if test="/auto3:UpdateRequest/ns23:RecordedMileageDate != &quot;&quot;">
            <KM-STAND-OPLYST-DATO>
              <date>
                <xsl:value-of select="/auto3:UpdateRequest/ns23:RecordedMileageDate"></xsl:value-of>
              </date>
            </KM-STAND-OPLYST-DATO>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns6:DrivingExperience">
          <xsl:if test="/auto3:UpdateRequest/ns6:DrivingExperience != &quot;&quot;">
            <ANTAL-AAR-EGEN>
              <xsl:value-of select="/auto3:UpdateRequest/ns6:DrivingExperience"></xsl:value-of>
            </ANTAL-AAR-EGEN>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:YoungDriver">
          <xsl:choose>
            <xsl:when test="/auto3:UpdateRequest/ns24:YoungDriver = &quot;true&quot;">
              <UNG-BAG-RATTET>
                <xsl:text disable-output-escaping="no">J</xsl:text>
              </UNG-BAG-RATTET>
            </xsl:when>
            <xsl:when test="/auto3:UpdateRequest/ns24:YoungDriver = &quot;false&quot;">
              <UNG-BAG-RATTET>
                <xsl:text disable-output-escaping="no">N</xsl:text>
              </UNG-BAG-RATTET>
            </xsl:when>
          </xsl:choose>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns30:CouplingOption">
          <xsl:choose>
            <xsl:when test="/auto3:UpdateRequest/ns30:CouplingOption = &quot;true&quot;">
              <TILKOBLING>
                <xsl:text disable-output-escaping="no">J</xsl:text>
              </TILKOBLING>
            </xsl:when>
            <xsl:when test="/auto3:UpdateRequest/ns30:CouplingOption = &quot;false&quot;">
              <TILKOBLING>
                <xsl:text disable-output-escaping="no">N</xsl:text>
              </TILKOBLING>
            </xsl:when>
          </xsl:choose>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:EquipmentValue">
          <xsl:if test="/auto3:UpdateRequest/ns24:EquipmentValue != &quot;&quot;">
            <EKSTRAUDSTYR-NUM>
              <xsl:value-of select="/auto3:UpdateRequest/ns24:EquipmentValue"></xsl:value-of>
            </EKSTRAUDSTYR-NUM>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns26:VariantId">
          <xsl:if test="/auto3:UpdateRequest/ns26:VariantId != &quot;&quot;">
            <MODELVARIANT-ID>
              <xsl:value-of select="/auto3:UpdateRequest/ns26:VariantId"></xsl:value-of>
            </MODELVARIANT-ID>
          </xsl:if>
        </xsl:if>
        <xsl:choose>
          <xsl:when test="/auto3:UpdateRequest/ns8:TrygDrive = &quot;true&quot;">
            <TRYGDRIVE>
              <xsl:text disable-output-escaping="no">J</xsl:text>
            </TRYGDRIVE>
          </xsl:when>
          <xsl:when test="/auto3:UpdateRequest/ns8:TrygDrive = &quot;false&quot;">
            <TRYGDRIVE>
              <xsl:text disable-output-escaping="no">N</xsl:text>
            </TRYGDRIVE>
          </xsl:when>
        </xsl:choose>
        <xsl:if test="/auto3:UpdateRequest/ns30:RegistrationNumber">
          <xsl:if test="/auto3:UpdateRequest/ns30:RegistrationNumber != &quot;&quot;">
            <INDREG-NR-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </INDREG-NR-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns23:VehicleIdentificationNumber">
          <xsl:if test="/auto3:UpdateRequest/ns23:VehicleIdentificationNumber != &quot;&quot;">
            <STEL-NR-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </STEL-NR-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:CarLeased">
          <xsl:if test="/auto3:UpdateRequest/ns24:CarLeased != &quot;&quot;">
            <LEASING-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </LEASING-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns23:ModelYear">
          <xsl:if test="/auto3:UpdateRequest/ns23:ModelYear != &quot;&quot;">
            <AARGANG-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </AARGANG-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns3:TariffPostalCode">
          <xsl:if test="/auto3:UpdateRequest/ns3:TariffPostalCode != &quot;&quot;">
            <TARIF-POST-NR-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </TARIF-POST-NR-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns23:VehicleMakeId">
          <xsl:if test="/auto3:UpdateRequest/ns23:VehicleMakeId != &quot;&quot;">
            <VMR-ID-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </VMR-ID-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns10:ExcessAmount">
          <xsl:if test="/auto3:UpdateRequest/ns10:ExcessAmount != &quot;&quot;">
            <SELVRISIKO-TEKST-GENE-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </SELVRISIKO-TEKST-GENE-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns9:CivilRegistrationNumber">
          <xsl:if test="/auto3:UpdateRequest/ns9:CivilRegistrationNumber != &quot;&quot;">
            <CPR-NR-FOEDSELSDATO-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </CPR-NR-FOEDSELSDATO-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns19:NumberOfClaims">
          <xsl:if test="/auto3:UpdateRequest/ns19:NumberOfClaims != &quot;&quot;">
            <SKADER-SENESTE-3-AAR-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </SKADER-SENESTE-3-AAR-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:AnnualMileageText">
          <xsl:if test="/auto3:UpdateRequest/ns24:AnnualMileageText != &quot;&quot;">
            <KM-AARLIG-TEKST-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </KM-AARLIG-TEKST-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns30:RecordedMileage">
          <xsl:if test="/auto3:UpdateRequest/ns30:RecordedMileage != &quot;&quot;">
            <KM-STAND-C>
              <string>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </string>
            </KM-STAND-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns23:RecordedMileageDate">
          <xsl:if test="/auto3:UpdateRequest/ns23:RecordedMileageDate != &quot;&quot;">
            <KM-STAND-OPLYST-DATO-C>
              <string>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </string>
            </KM-STAND-OPLYST-DATO-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns6:DrivingExperience">
          <xsl:if test="/auto3:UpdateRequest/ns6:DrivingExperience != &quot;&quot;">
            <ANTAL-AAR-EGEN-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </ANTAL-AAR-EGEN-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:YoungDriver">
          <xsl:if test="/auto3:UpdateRequest/ns24:YoungDriver != &quot;&quot;">
            <UNG-BAG-RATTET-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </UNG-BAG-RATTET-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns30:CouplingOption">
          <xsl:if test="/auto3:UpdateRequest/ns30:CouplingOption != &quot;&quot;">
            <TILKOBLING-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </TILKOBLING-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:EquipmentValue">
          <xsl:if test="/auto3:UpdateRequest/ns24:EquipmentValue != &quot;&quot;">
            <EKSTRAUDSTYR-NUM-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </EKSTRAUDSTYR-NUM-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns26:VariantId">
          <xsl:if test="/auto3:UpdateRequest/ns26:VariantId != &quot;&quot;">
            <MODELVARIANT-ID-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </MODELVARIANT-ID-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns8:TrygDrive">
          <xsl:if test="/auto3:UpdateRequest/ns8:TrygDrive != &quot;&quot;">
            <TRYGDRIVE-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </TRYGDRIVE-C>
          </xsl:if>
        </xsl:if>
      </W-GA-IN>
      <W-SP-IN>
        <xsl:if test="/auto3:UpdateRequest/ns17:MarketSegmentCode">
          <xsl:if test="/auto3:UpdateRequest/ns17:MarketSegmentCode != &quot;&quot;">
            <FORDELSAFTALER>
              <xsl:value-of select="/auto3:UpdateRequest/ns17:MarketSegmentCode"></xsl:value-of>
            </FORDELSAFTALER>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns16:IsCustomerInRKI">
          <xsl:if test="/auto3:UpdateRequest/ns16:IsCustomerInRKI != &quot;&quot;">
            <RKI>
              <xsl:value-of select="/auto3:UpdateRequest/ns16:IsCustomerInRKI"></xsl:value-of>
            </RKI>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns17:MarketSegmentCode">
          <xsl:if test="/auto3:UpdateRequest/ns17:MarketSegmentCode != &quot;&quot;">
            <FORDELSAFTALER-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </FORDELSAFTALER-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns16:IsCustomerInRKI">
          <xsl:if test="/auto3:UpdateRequest/ns16:IsCustomerInRKI != &quot;&quot;">
            <RKI-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </RKI-C>
          </xsl:if>
        </xsl:if>
      </W-SP-IN>
      <W-DA-IN>
        <TABELs>
          <xsl:for-each select="/auto3:UpdateRequest/ns11:Coverage">
            <TABEL>
              <J-N>
                <xsl:value-of select="ns11:CoverageIndicator"></xsl:value-of>
              </J-N>
              <DAEKNING-TEKST>
                <xsl:value-of select="ns11:CoverageName"></xsl:value-of>
              </DAEKNING-TEKST>
              <DAEKNING-TYPE>
                <xsl:value-of select="ns11:CoverageCode"></xsl:value-of>
              </DAEKNING-TYPE>
            </TABEL>
          </xsl:for-each>
        </TABELs>
        <C-TABELs>
          <xsl:for-each select="/auto3:UpdateRequest/ns11:Coverage">
            <C-TABEL>
              <J-N-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </J-N-C>
              <DAEKNING-TEKST-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </DAEKNING-TEKST-C>
              <DAEKNING-TYPE-C>
                <xsl:text disable-output-escaping="no">X</xsl:text>
              </DAEKNING-TYPE-C>
            </C-TABEL>
          </xsl:for-each>
        </C-TABELs>
      </W-DA-IN>
      <W-GER-IN>
        <xsl:if test="/auto3:UpdateRequest/ns24:GetRecommendations">
          <xsl:if test="/auto3:UpdateRequest/ns24:GetRecommendations != &quot;&quot;">
            <GET-RECOMMENDATION>
              <xsl:value-of select="/auto3:UpdateRequest/ns24:GetRecommendations"></xsl:value-of>
            </GET-RECOMMENDATION>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:Street">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:Street != &quot;&quot;">
            <GADENAVN>
              <xsl:value-of select="/auto3:UpdateRequest/ns31:PostalAddress/ns25:Street"></xsl:value-of>
            </GADENAVN>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:HouseNumber">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:HouseNumber != &quot;&quot;">
            <HUSNR>
              <xsl:value-of select="/auto3:UpdateRequest/ns31:PostalAddress/ns25:HouseNumber"></xsl:value-of>
            </HUSNR>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:ToHouseNumber">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:ToHouseNumber != &quot;&quot;">
            <HUSNR-TIL>
              <xsl:value-of select="/auto3:UpdateRequest/ns31:PostalAddress/ns25:ToHouseNumber"></xsl:value-of>
            </HUSNR-TIL>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:FloorNumber">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:FloorNumber != &quot;&quot;">
            <ETAGE>
              <xsl:value-of select="/auto3:UpdateRequest/ns31:PostalAddress/ns25:FloorNumber"></xsl:value-of>
            </ETAGE>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:UnitNumber">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:UnitNumber != &quot;&quot;">
            <SIDE-DOER>
              <xsl:value-of select="/auto3:UpdateRequest/ns31:PostalAddress/ns25:UnitNumber"></xsl:value-of>
            </SIDE-DOER>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:PostalCode">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:PostalCode != &quot;&quot;">
            <POSTNR>
              <xsl:value-of select="/auto3:UpdateRequest/ns31:PostalAddress/ns25:PostalCode"></xsl:value-of>
            </POSTNR>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:City">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:City != &quot;&quot;">
            <BYNAVN>
              <xsl:value-of select="/auto3:UpdateRequest/ns31:PostalAddress/ns25:City"></xsl:value-of>
            </BYNAVN>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns22:Country">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns22:Country != &quot;&quot;">
            <LANDE-NAVN>
              <xsl:value-of select="/auto3:UpdateRequest/ns31:PostalAddress/ns22:Country"></xsl:value-of>
            </LANDE-NAVN>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns29:UniqueAddressId">
          <xsl:if test="/auto3:UpdateRequest/ns29:UniqueAddressId != &quot;&quot;">
            <KVHX-ID>
              <xsl:value-of select="/auto3:UpdateRequest/ns29:UniqueAddressId"></xsl:value-of>
            </KVHX-ID>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns24:GetRecommendations">
          <xsl:if test="/auto3:UpdateRequest/ns24:GetRecommendations != &quot;&quot;">
            <GET-RECOMMENDATION-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </GET-RECOMMENDATION-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:Street">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:Street != &quot;&quot;">
            <GADENAVN-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </GADENAVN-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:HouseNumber">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:HouseNumber != &quot;&quot;">
            <HUSNR-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </HUSNR-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:ToHouseNumber">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:ToHouseNumber != &quot;&quot;">
            <HUSNR-TIL-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </HUSNR-TIL-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:FloorNumber">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:FloorNumber != &quot;&quot;">
            <ETAGE-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </ETAGE-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:UnitNumber">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:UnitNumber != &quot;&quot;">
            <SIDE-DOER-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </SIDE-DOER-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:PostalCode">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:PostalCode != &quot;&quot;">
            <POSTNR-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </POSTNR-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:City">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns25:City != &quot;&quot;">
            <BYNAVN-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </BYNAVN-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns22:Country">
          <xsl:if test="/auto3:UpdateRequest/ns31:PostalAddress/ns22:Country != &quot;&quot;">
            <LANDE-NAVN-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </LANDE-NAVN-C>
          </xsl:if>
        </xsl:if>
        <xsl:if test="/auto3:UpdateRequest/ns29:UniqueAddressId">
          <xsl:if test="/auto3:UpdateRequest/ns29:UniqueAddressId != &quot;&quot;">
            <KVHX-ID-C>
              <xsl:text disable-output-escaping="no">X</xsl:text>
            </KVHX-ID-C>
          </xsl:if>
        </xsl:if>
      </W-GER-IN>
    </tns:OpdaterBetjening>
  </xsl:template>
</xsl:stylesheet>