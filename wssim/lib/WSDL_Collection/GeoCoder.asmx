<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://www.serviceobjects.com/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" targetNamespace="http://www.serviceobjects.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.serviceobjects.com/">
      <s:element name="GetGeoLocation">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Address" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetGeoLocationResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetGeoLocationResult" type="tns:Location" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="Location">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="tns:Err" />
          <s:element minOccurs="0" maxOccurs="1" name="Latitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Longitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Zip" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Tract" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Block" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Level" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LevelDescription" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Err">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Desc" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Number" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Location" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetGeoLocationByZipPlusFour">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetGeoLocationByZipPlusFourResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetGeoLocationByZipPlusFourResult" type="tns:Location" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetGeoLocationByZipPlusTwo">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetGeoLocationByZipPlusTwoResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetGeoLocationByZipPlusTwoResult" type="tns:Location" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetGeoLocationByCityState">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetGeoLocationByCityStateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetGeoLocationByCityStateResult" type="tns:Location" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBestMatch">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Address" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBestMatchResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetBestMatchResult" type="tns:Location" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBestMatch_V2">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Address" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBestMatch_V2Response">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetBestMatch_V2Result" type="tns:Location" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBestMatch_V3">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Address" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBestMatch_V3Response">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetBestMatch_V3Result" type="tns:Location_V3" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="Location_V3">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="tns:Err" />
          <s:element minOccurs="0" maxOccurs="1" name="Latitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Longitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Zip" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Tract" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Block" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Level" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LevelDescription" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="StateFIPS" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CountyFIPS" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Debug" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetZipInfo">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetZipInfoResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetZipInfoResult" type="tns:ZipCodeInfo" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ZipCodeInfo">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="tns:Err" />
          <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="County" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AreaCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CityAbbreviation" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CityType" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CountyFIPS" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="StateFIPS" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TimeZone" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DayLightSavings" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MSA" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MD" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CBSA" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PMSA" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DMA" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Latitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Longitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Zip" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CityAlternativeName" type="tns:ArrayOfString" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetGeoLocationWorldwide">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Region" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Country" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetGeoLocationWorldwideResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetGeoLocationWorldwideResult" type="tns:ArrayOfGeocodeCityWorldwideInfo" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfGeocodeCityWorldwideInfo">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="GeocodeCityWorldwideInfo" nillable="true" type="tns:GeocodeCityWorldwideInfo" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="GeocodeCityWorldwideInfo">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Region" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Country" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Latitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Longitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="tns:Err" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetReverseLocation">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Latitude" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Longitude" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetReverseLocationResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetReverseLocationResult" type="tns:ReverseAddress" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ReverseAddress">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="tns:Err" />
          <s:element minOccurs="0" maxOccurs="1" name="Address" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Zip" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="County" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetDistanceToWater">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Latitude" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Longitude" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetDistanceToWaterResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetDistanceToWaterResult" type="tns:DistanceToWaterInfo" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="DistanceToWaterInfo">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="tns:Err" />
          <s:element minOccurs="0" maxOccurs="1" name="MilesToWater" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Latitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Longitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ClosestWaterLatitude" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ClosestWaterLongitude" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetDistanceToWaterByAddress">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Address" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetDistanceToWaterByAddressResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetDistanceToWaterByAddressResult" type="tns:DistanceToWaterInfo" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetDistance">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="FromLatitude" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FromLongitude" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ToLatitude" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ToLongitude" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetDistanceResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetDistanceResult" type="tns:DistanceBetweenInfo" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="DistanceBetweenInfo">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="tns:Err" />
          <s:element minOccurs="0" maxOccurs="1" name="MilesBetween" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="KilometersBetween" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="FeetBetween" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="Location" nillable="true" type="tns:Location" />
      <s:element name="Location_V3" nillable="true" type="tns:Location_V3" />
      <s:element name="ZipCodeInfo" nillable="true" type="tns:ZipCodeInfo" />
      <s:element name="ArrayOfGeocodeCityWorldwideInfo" nillable="true" type="tns:ArrayOfGeocodeCityWorldwideInfo" />
      <s:element name="ReverseAddress" nillable="true" type="tns:ReverseAddress" />
      <s:element name="DistanceToWaterInfo" nillable="true" type="tns:DistanceToWaterInfo" />
      <s:element name="DistanceBetweenInfo" nillable="true" type="tns:DistanceBetweenInfo" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetGeoLocationSoapIn">
    <wsdl:part name="parameters" element="tns:GetGeoLocation" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationSoapOut">
    <wsdl:part name="parameters" element="tns:GetGeoLocationResponse" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusFourSoapIn">
    <wsdl:part name="parameters" element="tns:GetGeoLocationByZipPlusFour" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusFourSoapOut">
    <wsdl:part name="parameters" element="tns:GetGeoLocationByZipPlusFourResponse" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusTwoSoapIn">
    <wsdl:part name="parameters" element="tns:GetGeoLocationByZipPlusTwo" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusTwoSoapOut">
    <wsdl:part name="parameters" element="tns:GetGeoLocationByZipPlusTwoResponse" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByCityStateSoapIn">
    <wsdl:part name="parameters" element="tns:GetGeoLocationByCityState" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByCityStateSoapOut">
    <wsdl:part name="parameters" element="tns:GetGeoLocationByCityStateResponse" />
  </wsdl:message>
  <wsdl:message name="GetBestMatchSoapIn">
    <wsdl:part name="parameters" element="tns:GetBestMatch" />
  </wsdl:message>
  <wsdl:message name="GetBestMatchSoapOut">
    <wsdl:part name="parameters" element="tns:GetBestMatchResponse" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V2SoapIn">
    <wsdl:part name="parameters" element="tns:GetBestMatch_V2" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V2SoapOut">
    <wsdl:part name="parameters" element="tns:GetBestMatch_V2Response" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V3SoapIn">
    <wsdl:part name="parameters" element="tns:GetBestMatch_V3" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V3SoapOut">
    <wsdl:part name="parameters" element="tns:GetBestMatch_V3Response" />
  </wsdl:message>
  <wsdl:message name="GetZipInfoSoapIn">
    <wsdl:part name="parameters" element="tns:GetZipInfo" />
  </wsdl:message>
  <wsdl:message name="GetZipInfoSoapOut">
    <wsdl:part name="parameters" element="tns:GetZipInfoResponse" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationWorldwideSoapIn">
    <wsdl:part name="parameters" element="tns:GetGeoLocationWorldwide" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationWorldwideSoapOut">
    <wsdl:part name="parameters" element="tns:GetGeoLocationWorldwideResponse" />
  </wsdl:message>
  <wsdl:message name="GetReverseLocationSoapIn">
    <wsdl:part name="parameters" element="tns:GetReverseLocation" />
  </wsdl:message>
  <wsdl:message name="GetReverseLocationSoapOut">
    <wsdl:part name="parameters" element="tns:GetReverseLocationResponse" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterSoapIn">
    <wsdl:part name="parameters" element="tns:GetDistanceToWater" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterSoapOut">
    <wsdl:part name="parameters" element="tns:GetDistanceToWaterResponse" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterByAddressSoapIn">
    <wsdl:part name="parameters" element="tns:GetDistanceToWaterByAddress" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterByAddressSoapOut">
    <wsdl:part name="parameters" element="tns:GetDistanceToWaterByAddressResponse" />
  </wsdl:message>
  <wsdl:message name="GetDistanceSoapIn">
    <wsdl:part name="parameters" element="tns:GetDistance" />
  </wsdl:message>
  <wsdl:message name="GetDistanceSoapOut">
    <wsdl:part name="parameters" element="tns:GetDistanceResponse" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationHttpGetIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationHttpGetOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusFourHttpGetIn">
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusFourHttpGetOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusTwoHttpGetIn">
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusTwoHttpGetOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByCityStateHttpGetIn">
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByCityStateHttpGetOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetBestMatchHttpGetIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBestMatchHttpGetOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V2HttpGetIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V2HttpGetOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V3HttpGetIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V3HttpGetOut">
    <wsdl:part name="Body" element="tns:Location_V3" />
  </wsdl:message>
  <wsdl:message name="GetZipInfoHttpGetIn">
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetZipInfoHttpGetOut">
    <wsdl:part name="Body" element="tns:ZipCodeInfo" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationWorldwideHttpGetIn">
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="Region" type="s:string" />
    <wsdl:part name="Country" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationWorldwideHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfGeocodeCityWorldwideInfo" />
  </wsdl:message>
  <wsdl:message name="GetReverseLocationHttpGetIn">
    <wsdl:part name="Latitude" type="s:string" />
    <wsdl:part name="Longitude" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetReverseLocationHttpGetOut">
    <wsdl:part name="Body" element="tns:ReverseAddress" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterHttpGetIn">
    <wsdl:part name="Latitude" type="s:string" />
    <wsdl:part name="Longitude" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterHttpGetOut">
    <wsdl:part name="Body" element="tns:DistanceToWaterInfo" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterByAddressHttpGetIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterByAddressHttpGetOut">
    <wsdl:part name="Body" element="tns:DistanceToWaterInfo" />
  </wsdl:message>
  <wsdl:message name="GetDistanceHttpGetIn">
    <wsdl:part name="FromLatitude" type="s:string" />
    <wsdl:part name="FromLongitude" type="s:string" />
    <wsdl:part name="ToLatitude" type="s:string" />
    <wsdl:part name="ToLongitude" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDistanceHttpGetOut">
    <wsdl:part name="Body" element="tns:DistanceBetweenInfo" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationHttpPostIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationHttpPostOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusFourHttpPostIn">
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusFourHttpPostOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusTwoHttpPostIn">
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByZipPlusTwoHttpPostOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByCityStateHttpPostIn">
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationByCityStateHttpPostOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetBestMatchHttpPostIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBestMatchHttpPostOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V2HttpPostIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V2HttpPostOut">
    <wsdl:part name="Body" element="tns:Location" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V3HttpPostIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBestMatch_V3HttpPostOut">
    <wsdl:part name="Body" element="tns:Location_V3" />
  </wsdl:message>
  <wsdl:message name="GetZipInfoHttpPostIn">
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetZipInfoHttpPostOut">
    <wsdl:part name="Body" element="tns:ZipCodeInfo" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationWorldwideHttpPostIn">
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="Region" type="s:string" />
    <wsdl:part name="Country" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetGeoLocationWorldwideHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfGeocodeCityWorldwideInfo" />
  </wsdl:message>
  <wsdl:message name="GetReverseLocationHttpPostIn">
    <wsdl:part name="Latitude" type="s:string" />
    <wsdl:part name="Longitude" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetReverseLocationHttpPostOut">
    <wsdl:part name="Body" element="tns:ReverseAddress" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterHttpPostIn">
    <wsdl:part name="Latitude" type="s:string" />
    <wsdl:part name="Longitude" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterHttpPostOut">
    <wsdl:part name="Body" element="tns:DistanceToWaterInfo" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterByAddressHttpPostIn">
    <wsdl:part name="Address" type="s:string" />
    <wsdl:part name="City" type="s:string" />
    <wsdl:part name="State" type="s:string" />
    <wsdl:part name="PostalCode" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDistanceToWaterByAddressHttpPostOut">
    <wsdl:part name="Body" element="tns:DistanceToWaterInfo" />
  </wsdl:message>
  <wsdl:message name="GetDistanceHttpPostIn">
    <wsdl:part name="FromLatitude" type="s:string" />
    <wsdl:part name="FromLongitude" type="s:string" />
    <wsdl:part name="ToLatitude" type="s:string" />
    <wsdl:part name="ToLongitude" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDistanceHttpPostOut">
    <wsdl:part name="Body" element="tns:DistanceBetweenInfo" />
  </wsdl:message>
  <wsdl:portType name="DOTSGeoCoderSoap">
    <wsdl:operation name="GetGeoLocation">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given US address.</documentation>
      <wsdl:input message="tns:GetGeoLocationSoapIn" />
      <wsdl:output message="tns:GetGeoLocationSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusFour">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given Zip+4.</documentation>
      <wsdl:input message="tns:GetGeoLocationByZipPlusFourSoapIn" />
      <wsdl:output message="tns:GetGeoLocationByZipPlusFourSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusTwo">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given Zip+2.</documentation>
      <wsdl:input message="tns:GetGeoLocationByZipPlusTwoSoapIn" />
      <wsdl:output message="tns:GetGeoLocationByZipPlusTwoSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByCityState">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns Latitude and Longitude location of a given US City and State.</documentation>
      <wsdl:input message="tns:GetGeoLocationByCityStateSoapIn" />
      <wsdl:output message="tns:GetGeoLocationByCityStateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatchSoapIn" />
      <wsdl:output message="tns:GetBestMatchSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V2">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatch_V2SoapIn" />
      <wsdl:output message="tns:GetBestMatch_V2SoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V3">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatch_V3SoapIn" />
      <wsdl:output message="tns:GetBestMatch_V3SoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetZipInfo">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns general information about a given US Zip Code.</documentation>
      <wsdl:input message="tns:GetZipInfoSoapIn" />
      <wsdl:output message="tns:GetZipInfoSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationWorldwide">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns Lat Lon information for a given worldwide city. Multiple matches can be filtered by country or region(state, province etc.)</documentation>
      <wsdl:input message="tns:GetGeoLocationWorldwideSoapIn" />
      <wsdl:output message="tns:GetGeoLocationWorldwideSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetReverseLocation">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated address for a given latitude and longitude.</documentation>
      <wsdl:input message="tns:GetReverseLocationSoapIn" />
      <wsdl:output message="tns:GetReverseLocationSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWater">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance from a given latitude and longitude to the nearest saltwater.</documentation>
      <wsdl:input message="tns:GetDistanceToWaterSoapIn" />
      <wsdl:output message="tns:GetDistanceToWaterSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWaterByAddress">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance from a given address to the nearest saltwater.</documentation>
      <wsdl:input message="tns:GetDistanceToWaterByAddressSoapIn" />
      <wsdl:output message="tns:GetDistanceToWaterByAddressSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistance">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance between two given locations.</documentation>
      <wsdl:input message="tns:GetDistanceSoapIn" />
      <wsdl:output message="tns:GetDistanceSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="DOTSGeoCoderHttpGet">
    <wsdl:operation name="GetGeoLocation">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given US address.</documentation>
      <wsdl:input message="tns:GetGeoLocationHttpGetIn" />
      <wsdl:output message="tns:GetGeoLocationHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusFour">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given Zip+4.</documentation>
      <wsdl:input message="tns:GetGeoLocationByZipPlusFourHttpGetIn" />
      <wsdl:output message="tns:GetGeoLocationByZipPlusFourHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusTwo">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given Zip+2.</documentation>
      <wsdl:input message="tns:GetGeoLocationByZipPlusTwoHttpGetIn" />
      <wsdl:output message="tns:GetGeoLocationByZipPlusTwoHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByCityState">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns Latitude and Longitude location of a given US City and State.</documentation>
      <wsdl:input message="tns:GetGeoLocationByCityStateHttpGetIn" />
      <wsdl:output message="tns:GetGeoLocationByCityStateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatchHttpGetIn" />
      <wsdl:output message="tns:GetBestMatchHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V2">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatch_V2HttpGetIn" />
      <wsdl:output message="tns:GetBestMatch_V2HttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V3">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatch_V3HttpGetIn" />
      <wsdl:output message="tns:GetBestMatch_V3HttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetZipInfo">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns general information about a given US Zip Code.</documentation>
      <wsdl:input message="tns:GetZipInfoHttpGetIn" />
      <wsdl:output message="tns:GetZipInfoHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationWorldwide">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns Lat Lon information for a given worldwide city. Multiple matches can be filtered by country or region(state, province etc.)</documentation>
      <wsdl:input message="tns:GetGeoLocationWorldwideHttpGetIn" />
      <wsdl:output message="tns:GetGeoLocationWorldwideHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetReverseLocation">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated address for a given latitude and longitude.</documentation>
      <wsdl:input message="tns:GetReverseLocationHttpGetIn" />
      <wsdl:output message="tns:GetReverseLocationHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWater">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance from a given latitude and longitude to the nearest saltwater.</documentation>
      <wsdl:input message="tns:GetDistanceToWaterHttpGetIn" />
      <wsdl:output message="tns:GetDistanceToWaterHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWaterByAddress">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance from a given address to the nearest saltwater.</documentation>
      <wsdl:input message="tns:GetDistanceToWaterByAddressHttpGetIn" />
      <wsdl:output message="tns:GetDistanceToWaterByAddressHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistance">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance between two given locations.</documentation>
      <wsdl:input message="tns:GetDistanceHttpGetIn" />
      <wsdl:output message="tns:GetDistanceHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="DOTSGeoCoderHttpPost">
    <wsdl:operation name="GetGeoLocation">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given US address.</documentation>
      <wsdl:input message="tns:GetGeoLocationHttpPostIn" />
      <wsdl:output message="tns:GetGeoLocationHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusFour">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given Zip+4.</documentation>
      <wsdl:input message="tns:GetGeoLocationByZipPlusFourHttpPostIn" />
      <wsdl:output message="tns:GetGeoLocationByZipPlusFourHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusTwo">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns latitude and longitude of a given Zip+2.</documentation>
      <wsdl:input message="tns:GetGeoLocationByZipPlusTwoHttpPostIn" />
      <wsdl:output message="tns:GetGeoLocationByZipPlusTwoHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByCityState">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns Latitude and Longitude location of a given US City and State.</documentation>
      <wsdl:input message="tns:GetGeoLocationByCityStateHttpPostIn" />
      <wsdl:output message="tns:GetGeoLocationByCityStateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatchHttpPostIn" />
      <wsdl:output message="tns:GetBestMatchHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V2">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatch_V2HttpPostIn" />
      <wsdl:output message="tns:GetBestMatch_V2HttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V3">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns the closest known Latitude and Longitude location for a given US Address.</documentation>
      <wsdl:input message="tns:GetBestMatch_V3HttpPostIn" />
      <wsdl:output message="tns:GetBestMatch_V3HttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetZipInfo">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns general information about a given US Zip Code.</documentation>
      <wsdl:input message="tns:GetZipInfoHttpPostIn" />
      <wsdl:output message="tns:GetZipInfoHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationWorldwide">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns Lat Lon information for a given worldwide city. Multiple matches can be filtered by country or region(state, province etc.)</documentation>
      <wsdl:input message="tns:GetGeoLocationWorldwideHttpPostIn" />
      <wsdl:output message="tns:GetGeoLocationWorldwideHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetReverseLocation">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated address for a given latitude and longitude.</documentation>
      <wsdl:input message="tns:GetReverseLocationHttpPostIn" />
      <wsdl:output message="tns:GetReverseLocationHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWater">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance from a given latitude and longitude to the nearest saltwater.</documentation>
      <wsdl:input message="tns:GetDistanceToWaterHttpPostIn" />
      <wsdl:output message="tns:GetDistanceToWaterHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWaterByAddress">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance from a given address to the nearest saltwater.</documentation>
      <wsdl:input message="tns:GetDistanceToWaterByAddressHttpPostIn" />
      <wsdl:output message="tns:GetDistanceToWaterByAddressHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDistance">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Returns an estimated distance between two given locations.</documentation>
      <wsdl:input message="tns:GetDistanceHttpPostIn" />
      <wsdl:output message="tns:GetDistanceHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="DOTSGeoCoderSoap" type="tns:DOTSGeoCoderSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" style="document" />
    <wsdl:operation name="GetGeoLocation">
      <soap:operation soapAction="http://www.serviceobjects.com/GetGeoLocation" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusFour">
      <soap:operation soapAction="http://www.serviceobjects.com/GetGeoLocationByZipPlusFour" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusTwo">
      <soap:operation soapAction="http://www.serviceobjects.com/GetGeoLocationByZipPlusTwo" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByCityState">
      <soap:operation soapAction="http://www.serviceobjects.com/GetGeoLocationByCityState" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch">
      <soap:operation soapAction="http://www.serviceobjects.com/GetBestMatch" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V2">
      <soap:operation soapAction="http://www.serviceobjects.com/GetBestMatch_V2" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V3">
      <soap:operation soapAction="http://www.serviceobjects.com/GetBestMatch_V3" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetZipInfo">
      <soap:operation soapAction="http://www.serviceobjects.com/GetZipInfo" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationWorldwide">
      <soap:operation soapAction="http://www.serviceobjects.com/GetGeoLocationWorldwide" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetReverseLocation">
      <soap:operation soapAction="http://www.serviceobjects.com/GetReverseLocation" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWater">
      <soap:operation soapAction="http://www.serviceobjects.com/GetDistanceToWater" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWaterByAddress">
      <soap:operation soapAction="http://www.serviceobjects.com/GetDistanceToWaterByAddress" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistance">
      <soap:operation soapAction="http://www.serviceobjects.com/GetDistance" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="DOTSGeoCoderHttpGet" type="tns:DOTSGeoCoderHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="GetGeoLocation">
      <http:operation location="/GetGeoLocation" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusFour">
      <http:operation location="/GetGeoLocationByZipPlusFour" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusTwo">
      <http:operation location="/GetGeoLocationByZipPlusTwo" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByCityState">
      <http:operation location="/GetGeoLocationByCityState" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch">
      <http:operation location="/GetBestMatch" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V2">
      <http:operation location="/GetBestMatch_V2" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V3">
      <http:operation location="/GetBestMatch_V3" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetZipInfo">
      <http:operation location="/GetZipInfo" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationWorldwide">
      <http:operation location="/GetGeoLocationWorldwide" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetReverseLocation">
      <http:operation location="/GetReverseLocation" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWater">
      <http:operation location="/GetDistanceToWater" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWaterByAddress">
      <http:operation location="/GetDistanceToWaterByAddress" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistance">
      <http:operation location="/GetDistance" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="DOTSGeoCoderHttpPost" type="tns:DOTSGeoCoderHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="GetGeoLocation">
      <http:operation location="/GetGeoLocation" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusFour">
      <http:operation location="/GetGeoLocationByZipPlusFour" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByZipPlusTwo">
      <http:operation location="/GetGeoLocationByZipPlusTwo" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationByCityState">
      <http:operation location="/GetGeoLocationByCityState" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch">
      <http:operation location="/GetBestMatch" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V2">
      <http:operation location="/GetBestMatch_V2" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBestMatch_V3">
      <http:operation location="/GetBestMatch_V3" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetZipInfo">
      <http:operation location="/GetZipInfo" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetGeoLocationWorldwide">
      <http:operation location="/GetGeoLocationWorldwide" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetReverseLocation">
      <http:operation location="/GetReverseLocation" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWater">
      <http:operation location="/GetDistanceToWater" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistanceToWaterByAddress">
      <http:operation location="/GetDistanceToWaterByAddress" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDistance">
      <http:operation location="/GetDistance" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="DOTSGeoCoder">
    <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">For more information on our web services, visit us at &lt;a href='http://www.serviceobjects.com/products/default.asp' target='new'&gt;our website&lt;/a&gt;&lt;br/&gt;&lt;br/&gt;&lt;a href='http://www.serviceobjects.com' target='new'&gt;&lt;img src='http://www.serviceobjects.com/images/so_logo_2_inside.gif' border='0'/&gt;&lt;/a&gt;</documentation>
    <wsdl:port name="DOTSGeoCoderSoap" binding="tns:DOTSGeoCoderSoap">
      <soap:address location="http://ws2.serviceobjects.net/gcr/GeoCoder.asmx" />
    </wsdl:port>
    <wsdl:port name="DOTSGeoCoderHttpGet" binding="tns:DOTSGeoCoderHttpGet">
      <http:address location="http://ws2.serviceobjects.net/gcr/GeoCoder.asmx" />
    </wsdl:port>
    <wsdl:port name="DOTSGeoCoderHttpPost" binding="tns:DOTSGeoCoderHttpPost">
      <http:address location="http://ws2.serviceobjects.net/gcr/GeoCoder.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>