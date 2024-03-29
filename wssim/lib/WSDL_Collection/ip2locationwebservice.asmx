<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://ws.fraudlabs.com/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" targetNamespace="http://ws.fraudlabs.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://ws.fraudlabs.com/">
      <s:element name="IP2Location">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="IP" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LICENSE" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="IP2LocationResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="IP2LocationResult" type="tns:IP2LOCATION" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="IP2LOCATION">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="COUNTRYCODE" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="COUNTRYNAME" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="REGION" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CITY" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="LATITUDE" type="s:float" />
          <s:element minOccurs="1" maxOccurs="1" name="LONGITUDE" type="s:float" />
          <s:element minOccurs="0" maxOccurs="1" name="ZIPCODE" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ISPNAME" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DOMAINNAME" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TIME_ZONE" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="NETSPEED" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AREACODE" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="WEATHERSTATION" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="WEATHERSTATIONCODE" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CREDITSAVAILABLE" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MESSAGE" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="IP2LOCATION" nillable="true" type="tns:IP2LOCATION" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="IP2LocationSoapIn">
    <wsdl:part name="parameters" element="tns:IP2Location" />
  </wsdl:message>
  <wsdl:message name="IP2LocationSoapOut">
    <wsdl:part name="parameters" element="tns:IP2LocationResponse" />
  </wsdl:message>
  <wsdl:message name="IP2LocationHttpGetIn">
    <wsdl:part name="IP" type="s:string" />
    <wsdl:part name="LICENSE" type="s:string" />
  </wsdl:message>
  <wsdl:message name="IP2LocationHttpGetOut">
    <wsdl:part name="Body" element="tns:IP2LOCATION" />
  </wsdl:message>
  <wsdl:message name="IP2LocationHttpPostIn">
    <wsdl:part name="IP" type="s:string" />
    <wsdl:part name="LICENSE" type="s:string" />
  </wsdl:message>
  <wsdl:message name="IP2LocationHttpPostOut">
    <wsdl:part name="Body" element="tns:IP2LOCATION" />
  </wsdl:message>
  <wsdl:portType name="Ip2LocationWebServiceSoap">
    <wsdl:operation name="IP2Location">
      <wsdl:input message="tns:IP2LocationSoapIn" />
      <wsdl:output message="tns:IP2LocationSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="Ip2LocationWebServiceHttpGet">
    <wsdl:operation name="IP2Location">
      <wsdl:input message="tns:IP2LocationHttpGetIn" />
      <wsdl:output message="tns:IP2LocationHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="Ip2LocationWebServiceHttpPost">
    <wsdl:operation name="IP2Location">
      <wsdl:input message="tns:IP2LocationHttpPostIn" />
      <wsdl:output message="tns:IP2LocationHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="Ip2LocationWebServiceSoap" type="tns:Ip2LocationWebServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" style="document" />
    <wsdl:operation name="IP2Location">
      <soap:operation soapAction="http://ws.fraudlabs.com/IP2Location" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="Ip2LocationWebServiceHttpGet" type="tns:Ip2LocationWebServiceHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="IP2Location">
      <http:operation location="/IP2Location" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="Ip2LocationWebServiceHttpPost" type="tns:Ip2LocationWebServiceHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="IP2Location">
      <http:operation location="/IP2Location" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="Ip2LocationWebService">
    <wsdl:port name="Ip2LocationWebServiceSoap" binding="tns:Ip2LocationWebServiceSoap">
      <soap:address location="http://ws.fraudlabs.com/ip2locationwebservice.asmx" />
    </wsdl:port>
    <wsdl:port name="Ip2LocationWebServiceHttpGet" binding="tns:Ip2LocationWebServiceHttpGet">
      <http:address location="http://ws.fraudlabs.com/ip2locationwebservice.asmx" />
    </wsdl:port>
    <wsdl:port name="Ip2LocationWebServiceHttpPost" binding="tns:Ip2LocationWebServiceHttpPost">
      <http:address location="http://ws.fraudlabs.com/ip2locationwebservice.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>