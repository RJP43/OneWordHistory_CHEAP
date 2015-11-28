<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:output method="html" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Sample of Early Eighteenth Century Use of Cheap</title>
            </head>
            <body>
                <h1>Sample of Early Eighteenth Century Use of Cheap</h1> 
                <h4>(gathered from ECCO)</h4>
                <table>
                    <tr>
                        <th>Author</th>
                        <th>Title</th>
                        <th>Date</th>
                        <th>Passage</th>
                        <th>Image</th>
                        <th>Definition</th>
                    </tr>
                    <xsl:apply-templates select="//div[@type='table']"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="fs[@n='1']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='2']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='3']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='4']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='5']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']/string[1]"/>
                <br/>
                <xsl:text> OR </xsl:text>
                <br/>
                <xsl:apply-templates select=".//f[@name='definition']/string[2]"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='6']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='7']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']/string[1]"/>
                <br/>
                <xsl:text> OR </xsl:text>
                <br/>
                <xsl:apply-templates select=".//f[@name='definition']/string[2]"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='8']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']/string[1]"/>
                <br/>
                <xsl:text> OR </xsl:text>
                <br/>
                <xsl:apply-templates select=".//f[@name='definition']/string[2]"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='9']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td><xsl:apply-templates select=".//f[@name='passage']"/></td>
            <td><xsl:apply-templates select=".//f[@name='image']"/></td>
            <td><xsl:apply-templates select=".//f[@name='definition']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@n='10']">
        <tr>
            <td><xsl:apply-templates select=".//f[@name='author']"/></td>
            <td><xsl:apply-templates select=".//f[@name='title']"/></td>
            <td><xsl:apply-templates select=".//f[@name='date']"/></td>
            <td>
                <xsl:text>1. </xsl:text><xsl:apply-templates select=".//f[@name='passage']/string[1]"/>
                <br/>
                <xsl:text>2. </xsl:text><xsl:apply-templates select=".//f[@name='passage']/string[2]"/>
                <br/>
                <xsl:text>3. </xsl:text><xsl:apply-templates select=".//f[@name='passage']/string[3]"/>
                <br/>
                <xsl:text>4. </xsl:text><xsl:apply-templates select=".//f[@name='passage']/string[4]"/>
            </td>
            <td>
                <xsl:text>1. </xsl:text><xsl:apply-templates select=".//f[@name='image']/string[1]"/>
                <br/>
                <xsl:text>2. </xsl:text><xsl:apply-templates select=".//f[@name='image']/string[2]"/>
                <br/>
                <xsl:text>3. </xsl:text><xsl:apply-templates select=".//f[@name='image']/string[3]"/>
                <br/>
                <xsl:text>4. </xsl:text><xsl:apply-templates select=".//f[@name='image']/string[4]"/>
            </td>
            <td>
                <xsl:text>1. </xsl:text><xsl:apply-templates select=".//f[@name='definition']/string[1]"/>
                <br/>
                <xsl:text>2. </xsl:text><xsl:apply-templates select=".//f[@name='definition']/string[2]"/>
                <br/>
                <xsl:text>3. </xsl:text><xsl:apply-templates select=".//f[@name='definition']/string[3]"/>
                <br/>
                <xsl:text>4. </xsl:text><xsl:apply-templates select=".//f[@name='definition']/string[4]"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>