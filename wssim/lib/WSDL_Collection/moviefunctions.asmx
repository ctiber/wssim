<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.ignyte.com/whatsshowing" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://www.ignyte.com/whatsshowing" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.ignyte.com/whatsshowing">
      <s:element name="GetTheatersAndMovies">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="zipCode" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="radius" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetTheatersAndMoviesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetTheatersAndMoviesResult" type="tns:ArrayOfTheater" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfTheater">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Theater" nillable="true" type="tns:Theater" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Theater">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Name" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Address" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Movies" type="tns:ArrayOfMovie" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfMovie">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Movie" nillable="true" type="tns:Movie" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Movie">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Rating" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Name" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RunningTime" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ShowTimes" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetUpcomingMovies">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="month" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="year" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetUpcomingMoviesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetUpcomingMoviesResult" type="tns:ArrayOfUpcomingMovie" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfUpcomingMovie">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="UpcomingMovie" nillable="true" type="tns:UpcomingMovie" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="UpcomingMovie">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="MovieName" type="s:string" />
        </s:sequence>
      </s:complexType>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetTheatersAndMoviesSoapIn">
    <wsdl:part name="parameters" element="tns:GetTheatersAndMovies" />
  </wsdl:message>
  <wsdl:message name="GetTheatersAndMoviesSoapOut">
    <wsdl:part name="parameters" element="tns:GetTheatersAndMoviesResponse" />
  </wsdl:message>
  <wsdl:message name="GetUpcomingMoviesSoapIn">
    <wsdl:part name="parameters" element="tns:GetUpcomingMovies" />
  </wsdl:message>
  <wsdl:message name="GetUpcomingMoviesSoapOut">
    <wsdl:part name="parameters" element="tns:GetUpcomingMoviesResponse" />
  </wsdl:message>
  <wsdl:portType name="MovieInformationSoap">
    <wsdl:operation name="GetTheatersAndMovies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method will retrieve a list of all theaters and the movies playing today.</wsdl:documentation>
      <wsdl:input message="tns:GetTheatersAndMoviesSoapIn" />
      <wsdl:output message="tns:GetTheatersAndMoviesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetUpcomingMovies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method will retrieve a list of all movies that are scheduled to be released in the future and their anticipated release dates.</wsdl:documentation>
      <wsdl:input message="tns:GetUpcomingMoviesSoapIn" />
      <wsdl:output message="tns:GetUpcomingMoviesSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="MovieInformationSoap" type="tns:MovieInformationSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetTheatersAndMovies">
      <soap:operation soapAction="http://www.ignyte.com/whatsshowing/GetTheatersAndMovies" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetUpcomingMovies">
      <soap:operation soapAction="http://www.ignyte.com/whatsshowing/GetUpcomingMovies" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="MovieInformationSoap12" type="tns:MovieInformationSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetTheatersAndMovies">
      <soap12:operation soapAction="http://www.ignyte.com/whatsshowing/GetTheatersAndMovies" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetUpcomingMovies">
      <soap12:operation soapAction="http://www.ignyte.com/whatsshowing/GetUpcomingMovies" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="MovieInformation">
    <wsdl:port name="MovieInformationSoap" binding="tns:MovieInformationSoap">
      <soap:address location="http://www.ignyte.com/webservices/ignyte.whatsshowing.webservice/moviefunctions.asmx" />
    </wsdl:port>
    <wsdl:port name="MovieInformationSoap12" binding="tns:MovieInformationSoap12">
      <soap12:address location="http://www.ignyte.com/webservices/ignyte.whatsshowing.webservice/moviefunctions.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>