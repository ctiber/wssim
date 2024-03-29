<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="http://www.27seconds.com/Holidays/GBEAW/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" targetNamespace="http://www.27seconds.com/Holidays/GBEAW/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.27seconds.com/Holidays/GBEAW/">
      <s:import namespace="http://www.w3.org/2001/XMLSchema" />
      <s:element name="GetHolidaysForDateRange">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="startDate" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="endDate" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForDateRangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHolidaysForDateRangeResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForMonth">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="year" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="month" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForMonthResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHolidaysForMonthResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForYear">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="year" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForYearResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHolidaysForYearResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidayDate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="holidayName" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="year" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidayDateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="GetHolidayDateResult" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysAvailable">
        <s:complexType />
      </s:element>
      <s:element name="GetHolidaysAvailableResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHolidaysAvailableResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DataSet" nillable="true">
        <s:complexType>
          <s:sequence>
            <s:element ref="s:schema" />
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="dateTime" type="s:dateTime" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetHolidaysForDateRangeSoapIn">
    <wsdl:part name="parameters" element="tns:GetHolidaysForDateRange" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeSoapOut">
    <wsdl:part name="parameters" element="tns:GetHolidaysForDateRangeResponse" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthSoapIn">
    <wsdl:part name="parameters" element="tns:GetHolidaysForMonth" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthSoapOut">
    <wsdl:part name="parameters" element="tns:GetHolidaysForMonthResponse" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearSoapIn">
    <wsdl:part name="parameters" element="tns:GetHolidaysForYear" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearSoapOut">
    <wsdl:part name="parameters" element="tns:GetHolidaysForYearResponse" />
  </wsdl:message>
  <wsdl:message name="GetHolidayDateSoapIn">
    <wsdl:part name="parameters" element="tns:GetHolidayDate" />
  </wsdl:message>
  <wsdl:message name="GetHolidayDateSoapOut">
    <wsdl:part name="parameters" element="tns:GetHolidayDateResponse" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableSoapIn">
    <wsdl:part name="parameters" element="tns:GetHolidaysAvailable" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableSoapOut">
    <wsdl:part name="parameters" element="tns:GetHolidaysAvailableResponse" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeHttpGetIn">
    <wsdl:part name="startDate" type="s:string" />
    <wsdl:part name="endDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthHttpGetIn">
    <wsdl:part name="year" type="s:string" />
    <wsdl:part name="month" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearHttpGetIn">
    <wsdl:part name="year" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetHolidayDateHttpGetIn">
    <wsdl:part name="holidayName" type="s:string" />
    <wsdl:part name="year" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHolidayDateHttpGetOut">
    <wsdl:part name="Body" element="tns:dateTime" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableHttpGetIn" />
  <wsdl:message name="GetHolidaysAvailableHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeHttpPostIn">
    <wsdl:part name="startDate" type="s:string" />
    <wsdl:part name="endDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthHttpPostIn">
    <wsdl:part name="year" type="s:string" />
    <wsdl:part name="month" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearHttpPostIn">
    <wsdl:part name="year" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetHolidayDateHttpPostIn">
    <wsdl:part name="holidayName" type="s:string" />
    <wsdl:part name="year" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHolidayDateHttpPostOut">
    <wsdl:part name="Body" element="tns:dateTime" />
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableHttpPostIn" />
  <wsdl:message name="GetHolidaysAvailableHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:portType name="GBEAWHolidayServiceSoap">
    <wsdl:operation name="GetHolidaysForDateRange">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a date range.</documentation>
      <wsdl:input message="tns:GetHolidaysForDateRangeSoapIn" />
      <wsdl:output message="tns:GetHolidaysForDateRangeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a specific month.</documentation>
      <wsdl:input message="tns:GetHolidaysForMonthSoapIn" />
      <wsdl:output message="tns:GetHolidaysForMonthSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for an entire year.</documentation>
      <wsdl:input message="tns:GetHolidaysForYearSoapIn" />
      <wsdl:output message="tns:GetHolidaysForYearSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the date of a specific holiday.</documentation>
      <wsdl:input message="tns:GetHolidayDateSoapIn" />
      <wsdl:output message="tns:GetHolidayDateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the available holidays.</documentation>
      <wsdl:input message="tns:GetHolidaysAvailableSoapIn" />
      <wsdl:output message="tns:GetHolidaysAvailableSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="GBEAWHolidayServiceHttpGet">
    <wsdl:operation name="GetHolidaysForDateRange">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a date range.</documentation>
      <wsdl:input message="tns:GetHolidaysForDateRangeHttpGetIn" />
      <wsdl:output message="tns:GetHolidaysForDateRangeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a specific month.</documentation>
      <wsdl:input message="tns:GetHolidaysForMonthHttpGetIn" />
      <wsdl:output message="tns:GetHolidaysForMonthHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for an entire year.</documentation>
      <wsdl:input message="tns:GetHolidaysForYearHttpGetIn" />
      <wsdl:output message="tns:GetHolidaysForYearHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the date of a specific holiday.</documentation>
      <wsdl:input message="tns:GetHolidayDateHttpGetIn" />
      <wsdl:output message="tns:GetHolidayDateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the available holidays.</documentation>
      <wsdl:input message="tns:GetHolidaysAvailableHttpGetIn" />
      <wsdl:output message="tns:GetHolidaysAvailableHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="GBEAWHolidayServiceHttpPost">
    <wsdl:operation name="GetHolidaysForDateRange">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a date range.</documentation>
      <wsdl:input message="tns:GetHolidaysForDateRangeHttpPostIn" />
      <wsdl:output message="tns:GetHolidaysForDateRangeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a specific month.</documentation>
      <wsdl:input message="tns:GetHolidaysForMonthHttpPostIn" />
      <wsdl:output message="tns:GetHolidaysForMonthHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for an entire year.</documentation>
      <wsdl:input message="tns:GetHolidaysForYearHttpPostIn" />
      <wsdl:output message="tns:GetHolidaysForYearHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the date of a specific holiday.</documentation>
      <wsdl:input message="tns:GetHolidayDateHttpPostIn" />
      <wsdl:output message="tns:GetHolidayDateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the available holidays.</documentation>
      <wsdl:input message="tns:GetHolidaysAvailableHttpPostIn" />
      <wsdl:output message="tns:GetHolidaysAvailableHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="GBEAWHolidayServiceSoap" type="tns:GBEAWHolidayServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" style="document" />
    <wsdl:operation name="GetHolidaysForDateRange">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GBEAW/GetHolidaysForDateRange" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GBEAW/GetHolidaysForMonth" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GBEAW/GetHolidaysForYear" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GBEAW/GetHolidayDate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GBEAW/GetHolidaysAvailable" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="GBEAWHolidayServiceHttpGet" type="tns:GBEAWHolidayServiceHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="GetHolidaysForDateRange">
      <http:operation location="/GetHolidaysForDateRange" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <http:operation location="/GetHolidaysForMonth" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <http:operation location="/GetHolidaysForYear" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <http:operation location="/GetHolidayDate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <http:operation location="/GetHolidaysAvailable" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="GBEAWHolidayServiceHttpPost" type="tns:GBEAWHolidayServiceHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="GetHolidaysForDateRange">
      <http:operation location="/GetHolidaysForDateRange" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <http:operation location="/GetHolidaysForMonth" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <http:operation location="/GetHolidaysForYear" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <http:operation location="/GetHolidayDate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <http:operation location="/GetHolidaysAvailable" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="GBEAWHolidayService">
    <documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Web service that calculates national holidays for England and Wales (UK).</documentation>
    <wsdl:port name="GBEAWHolidayServiceSoap" binding="tns:GBEAWHolidayServiceSoap">
      <soap:address location="http://www.holidaywebservice.com/Holidays/GBEAW/GBEAWHolidayService.asmx" />
    </wsdl:port>
    <wsdl:port name="GBEAWHolidayServiceHttpGet" binding="tns:GBEAWHolidayServiceHttpGet">
      <http:address location="http://www.holidaywebservice.com/Holidays/GBEAW/GBEAWHolidayService.asmx" />
    </wsdl:port>
    <wsdl:port name="GBEAWHolidayServiceHttpPost" binding="tns:GBEAWHolidayServiceHttpPost">
      <http:address location="http://www.holidaywebservice.com/Holidays/GBEAW/GBEAWHolidayService.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>