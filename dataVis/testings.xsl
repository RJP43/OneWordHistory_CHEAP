<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="samplesColl" select="collection('samples')"/>
    
    
    <xsl:template match="/">
        
        <xsl:value-of select="$samplesColl//date[starts-with(., '15')]/following-sibling::definition[@ana='noun']/count(@ana='noun')"/>
    </xsl:template>
    
</xsl:stylesheet>