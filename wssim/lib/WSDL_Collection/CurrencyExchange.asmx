<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://www.serviceobjects.com/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" targetNamespace="http://www.serviceobjects.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.serviceobjects.com/">
      <s:element name="GetAllCurrencies">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetAllCurrenciesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetAllCurrenciesResult" type="tns:ArrayOfCurrencyNameResponse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfCurrencyNameResponse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CurrencyNameResponse" nillable="true" type="tns:CurrencyNameResponse" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CurrencyNameResponse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="CurrencySymbol" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CurrencyName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetAllCountryCurrencies">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetAllCountryCurrenciesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetAllCountryCurrenciesResult" type="tns:ArrayOfCountryCurrencyResponse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfCountryCurrencyResponse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CountryCurrencyResponse" nillable="true" type="tns:CountryCurrencyResponse" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CountryCurrencyResponse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="CountryName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CountryISO2" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CountryISO3" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CurrencyName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CurrencySymbol" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetExchangeRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ConvertFromCurrency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ConvertToCurrency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetExchangeRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetExchangeRateResult" type="tns:ExchangeRateResponse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ExchangeRateResponse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="ConvertFromCurrency" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ConvertToCurrency" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="ExchangeRate" type="s:double" />
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="ConvertCurrency">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ConvertFromCurrency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ConvertToCurrency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ConvertCurrencyResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ConvertCurrencyResult" type="tns:CurrencyConversionResponse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CurrencyConversionResponse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="ConvertFromCurrency" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ConvertToCurrency" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="ConvertedAmount" type="s:double" />
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetCountryCurrency">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Country" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LicenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCountryCurrencyResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCountryCurrencyResult" type="tns:CountryCurrencyResponse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ArrayOfCurrencyNameResponse" nillable="true" type="tns:ArrayOfCurrencyNameResponse" />
      <s:element name="ArrayOfCountryCurrencyResponse" nillable="true" type="tns:ArrayOfCountryCurrencyResponse" />
      <s:element name="ExchangeRateResponse" nillable="true" type="tns:ExchangeRateResponse" />
      <s:element name="CurrencyConversionResponse" nillable="true" type="tns:CurrencyConversionResponse" />
      <s:element name="CountryCurrencyResponse" nillable="true" type="tns:CountryCurrencyResponse" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetAllCurrenciesSoapIn">
    <wsdl:part name="parameters" element="tns:GetAllCurrencies" />
  </wsdl:message>
  <wsdl:message name="GetAllCurrenciesSoapOut">
    <wsdl:part name="parameters" element="tns:GetAllCurrenciesResponse" />
  </wsdl:message>
  <wsdl:message name="GetAllCountryCurrenciesSoapIn">
    <wsdl:part name="parameters" element="tns:GetAllCountryCurrencies" />
  </wsdl:message>
  <wsdl:message name="GetAllCountryCurrenciesSoapOut">
    <wsdl:part name="parameters" element="tns:GetAllCountryCurrenciesResponse" />
  </wsdl:message>
  <wsdl:message name="GetExchangeRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetExchangeRate" />
  </wsdl:message>
  <wsdl:message name="GetExchangeRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetExchangeRateResponse" />
  </wsdl:message>
  <wsdl:message name="ConvertCurrencySoapIn">
    <wsdl:part name="parameters" element="tns:ConvertCurrency" />
  </wsdl:message>
  <wsdl:message name="ConvertCurrencySoapOut">
    <wsdl:part name="parameters" element="tns:ConvertCurrencyResponse" />
  </wsdl:message>
  <wsdl:message name="GetCountryCurrencySoapIn">
    <wsdl:part name="parameters" element="tns:GetCountryCurrency" />
  </wsdl:message>
  <wsdl:message name="GetCountryCurrencySoapOut">
    <wsdl:part name="parameters" element="tns:GetCountryCurrencyResponse" />
  </wsdl:message>
  <wsdl:message name="GetAllCurrenciesHttpGetIn">
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAllCurrenciesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfCurrencyNameResponse" />
  </wsdl:message>
  <wsdl:message name="GetAllCountryCurrenciesHttpGetIn">
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAllCountryCurrenciesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfCountryCurrencyResponse" />
  </wsdl:message>
  <wsdl:message name="GetExchangeRateHttpGetIn">
    <wsdl:part name="ConvertFromCurrency" type="s:string" />
    <wsdl:part name="ConvertToCurrency" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetExchangeRateHttpGetOut">
    <wsdl:part name="Body" element="tns:ExchangeRateResponse" />
  </wsdl:message>
  <wsdl:message name="ConvertCurrencyHttpGetIn">
    <wsdl:part name="Amount" type="s:string" />
    <wsdl:part name="ConvertFromCurrency" type="s:string" />
    <wsdl:part name="ConvertToCurrency" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ConvertCurrencyHttpGetOut">
    <wsdl:part name="Body" element="tns:CurrencyConversionResponse" />
  </wsdl:message>
  <wsdl:message name="GetCountryCurrencyHttpGetIn">
    <wsdl:part name="Country" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCountryCurrencyHttpGetOut">
    <wsdl:part name="Body" element="tns:CountryCurrencyResponse" />
  </wsdl:message>
  <wsdl:message name="GetAllCurrenciesHttpPostIn">
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAllCurrenciesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfCurrencyNameResponse" />
  </wsdl:message>
  <wsdl:message name="GetAllCountryCurrenciesHttpPostIn">
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAllCountryCurrenciesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfCountryCurrencyResponse" />
  </wsdl:message>
  <wsdl:message name="GetExchangeRateHttpPostIn">
    <wsdl:part name="ConvertFromCurrency" type="s:string" />
    <wsdl:part name="ConvertToCurrency" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetExchangeRateHttpPostOut">
    <wsdl:part name="Body" element="tns:ExchangeRateResponse" />
  </wsdl:message>
  <wsdl:message name="ConvertCurrencyHttpPostIn">
    <wsdl:part name="Amount" type="s:string" />
    <wsdl:part name="ConvertFromCurrency" type="s:string" />
    <wsdl:part name="ConvertToCurrency" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ConvertCurrencyHttpPostOut">
    <wsdl:part name="Body" element="tns:CurrencyConversionResponse" />
  </wsdl:message>
  <wsdl:message name="GetCountryCurrencyHttpPostIn">
    <wsdl:part name="Country" type="s:string" />
    <wsdl:part name="LicenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCountryCurrencyHttpPostOut">
    <wsdl:part name="Body" element="tns:CountryCurrencyResponse" />
  </wsdl:message>
  <wsdl:portType name="DOTSCurrencyExchangeSoap">
    <wsdl:operation name="GetAllCurrencies">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives a list of the supported currency symbols.</documentation>
      <wsdl:input message="tns:GetAllCurrenciesSoapIn" />
      <wsdl:output message="tns:GetAllCurrenciesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAllCountryCurrencies">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives a list of the supported currency symbols with their associated country information.</documentation>
      <wsdl:input message="tns:GetAllCountryCurrenciesSoapIn" />
      <wsdl:output message="tns:GetAllCountryCurrenciesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetExchangeRate">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives the currency exchange rate between the two currencies.</documentation>
      <wsdl:input message="tns:GetExchangeRateSoapIn" />
      <wsdl:output message="tns:GetExchangeRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertCurrency">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives the converted amount of currency.</documentation>
      <wsdl:input message="tns:ConvertCurrencySoapIn" />
      <wsdl:output message="tns:ConvertCurrencySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCountryCurrency">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Input any country name, iso2 or iso3 to see that country's currency.</documentation>
      <wsdl:input message="tns:GetCountryCurrencySoapIn" />
      <wsdl:output message="tns:GetCountryCurrencySoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="DOTSCurrencyExchangeHttpGet">
    <wsdl:operation name="GetAllCurrencies">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives a list of the supported currency symbols.</documentation>
      <wsdl:input message="tns:GetAllCurrenciesHttpGetIn" />
      <wsdl:output message="tns:GetAllCurrenciesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAllCountryCurrencies">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives a list of the supported currency symbols with their associated country information.</documentation>
      <wsdl:input message="tns:GetAllCountryCurrenciesHttpGetIn" />
      <wsdl:output message="tns:GetAllCountryCurrenciesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetExchangeRate">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives the currency exchange rate between the two currencies.</documentation>
      <wsdl:input message="tns:GetExchangeRateHttpGetIn" />
      <wsdl:output message="tns:GetExchangeRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertCurrency">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives the converted amount of currency.</documentation>
      <wsdl:input message="tns:ConvertCurrencyHttpGetIn" />
      <wsdl:output message="tns:ConvertCurrencyHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCountryCurrency">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Input any country name, iso2 or iso3 to see that country's currency.</documentation>
      <wsdl:input message="tns:GetCountryCurrencyHttpGetIn" />
      <wsdl:output message="tns:GetCountryCurrencyHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="DOTSCurrencyExchangeHttpPost">
    <wsdl:operation name="GetAllCurrencies">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives a list of the supported currency symbols.</documentation>
      <wsdl:input message="tns:GetAllCurrenciesHttpPostIn" />
      <wsdl:output message="tns:GetAllCurrenciesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAllCountryCurrencies">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives a list of the supported currency symbols with their associated country information.</documentation>
      <wsdl:input message="tns:GetAllCountryCurrenciesHttpPostIn" />
      <wsdl:output message="tns:GetAllCountryCurrenciesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetExchangeRate">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives the currency exchange rate between the two currencies.</documentation>
      <wsdl:input message="tns:GetExchangeRateHttpPostIn" />
      <wsdl:output message="tns:GetExchangeRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertCurrency">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Gives the converted amount of currency.</documentation>
      <wsdl:input message="tns:ConvertCurrencyHttpPostIn" />
      <wsdl:output message="tns:ConvertCurrencyHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCountryCurrency">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Input any country name, iso2 or iso3 to see that country's currency.</documentation>
      <wsdl:input message="tns:GetCountryCurrencyHttpPostIn" />
      <wsdl:output message="tns:GetCountryCurrencyHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="DOTSCurrencyExchangeSoap" type="tns:DOTSCurrencyExchangeSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" style="document" />
    <wsdl:operation name="GetAllCurrencies">
      <soap:operation soapAction="http://www.serviceobjects.com/GetAllCurrencies" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAllCountryCurrencies">
      <soap:operation soapAction="http://www.serviceobjects.com/GetAllCountryCurrencies" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetExchangeRate">
      <soap:operation soapAction="http://www.serviceobjects.com/GetExchangeRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertCurrency">
      <soap:operation soapAction="http://www.serviceobjects.com/ConvertCurrency" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCountryCurrency">
      <soap:operation soapAction="http://www.serviceobjects.com/GetCountryCurrency" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="DOTSCurrencyExchangeHttpGet" type="tns:DOTSCurrencyExchangeHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="GetAllCurrencies">
      <http:operation location="/GetAllCurrencies" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAllCountryCurrencies">
      <http:operation location="/GetAllCountryCurrencies" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetExchangeRate">
      <http:operation location="/GetExchangeRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertCurrency">
      <http:operation location="/ConvertCurrency" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCountryCurrency">
      <http:operation location="/GetCountryCurrency" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="DOTSCurrencyExchangeHttpPost" type="tns:DOTSCurrencyExchangeHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="GetAllCurrencies">
      <http:operation location="/GetAllCurrencies" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAllCountryCurrencies">
      <http:operation location="/GetAllCountryCurrencies" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetExchangeRate">
      <http:operation location="/GetExchangeRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertCurrency">
      <http:operation location="/ConvertCurrency" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCountryCurrency">
      <http:operation location="/GetCountryCurrency" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="DOTSCurrencyExchange">
    <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">For more information on our web services, visit us at &lt;a href='http://www.serviceobjects.com/products/default.asp' target='new'&gt;our website&lt;/a&gt;&lt;br/&gt;&lt;br/&gt;&lt;a href='http://www.serviceobjects.com' target='new'&gt;&lt;img src='http://www.serviceobjects.com/images/so_logo_2_inside.gif' border='0'/&gt;&lt;/a&gt;</documentation>
    <wsdl:port name="DOTSCurrencyExchangeSoap" binding="tns:DOTSCurrencyExchangeSoap">
      <soap:address location="http://trial.serviceobjects.com/ce/CurrencyExchange.asmx" />
    </wsdl:port>
    <wsdl:port name="DOTSCurrencyExchangeHttpGet" binding="tns:DOTSCurrencyExchangeHttpGet">
      <http:address location="http://trial.serviceobjects.com/ce/CurrencyExchange.asmx" />
    </wsdl:port>
    <wsdl:port name="DOTSCurrencyExchangeHttpPost" binding="tns:DOTSCurrencyExchangeHttpPost">
      <http:address location="http://trial.serviceobjects.com/ce/CurrencyExchange.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>