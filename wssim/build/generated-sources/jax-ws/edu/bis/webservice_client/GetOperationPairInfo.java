
package edu.bis.webservice_client;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Classe Java pour GetOperationPairInfo complex type.
 * 
 * <p>Le fragment de sch�ma suivant indique le contenu attendu figurant dans cette classe.
 * 
 * <pre>
 * &lt;complexType name="GetOperationPairInfo">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="firstServiceURI" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="firstOperationName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="secondServiceURI" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="secondOperationName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GetOperationPairInfo", propOrder = {
    "firstServiceURI",
    "firstOperationName",
    "secondServiceURI",
    "secondOperationName"
})
public class GetOperationPairInfo {

    protected String firstServiceURI;
    protected String firstOperationName;
    protected String secondServiceURI;
    protected String secondOperationName;

    /**
     * Obtient la valeur de la propri�t� firstServiceURI.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFirstServiceURI() {
        return firstServiceURI;
    }

    /**
     * D�finit la valeur de la propri�t� firstServiceURI.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFirstServiceURI(String value) {
        this.firstServiceURI = value;
    }

    /**
     * Obtient la valeur de la propri�t� firstOperationName.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFirstOperationName() {
        return firstOperationName;
    }

    /**
     * D�finit la valeur de la propri�t� firstOperationName.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFirstOperationName(String value) {
        this.firstOperationName = value;
    }

    /**
     * Obtient la valeur de la propri�t� secondServiceURI.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSecondServiceURI() {
        return secondServiceURI;
    }

    /**
     * D�finit la valeur de la propri�t� secondServiceURI.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSecondServiceURI(String value) {
        this.secondServiceURI = value;
    }

    /**
     * Obtient la valeur de la propri�t� secondOperationName.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSecondOperationName() {
        return secondOperationName;
    }

    /**
     * D�finit la valeur de la propri�t� secondOperationName.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSecondOperationName(String value) {
        this.secondOperationName = value;
    }

}
