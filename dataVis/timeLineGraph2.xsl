<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="samplesColl" select="collection('samples')"/>
    <xsl:variable name="y-interval" select="100"/>
    <xsl:variable name="x-interval" select="200"/>
    
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(200, 600)">
                <g id="baseStuff"><!-- title -->
                <text x="525" y="-525" text-anchor="middle" font-size="36px">From 1550-1915, Frequency of Particular Parts of Speech as seen in Sample Data</text>
                <!-- y-Axis -->
                <line x1="0" x2="0" y1="0" y2="-450" stroke="black" stroke-width="1"/>
                <!-- x-Axis -->
                <line x1="-1" x2="1050" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <!-- y-axis marks -->
                <text x="-25" y="-100" text-anchor="middle">25%</text>
                <line x1="-10" x2="1050" y1="-100" y2="-100" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                <text x="-25" y="-200" text-anchor="middle">50%</text>
                <line x1="-10" x2="1050" y1="-200" y2="-200" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                <text x="-25" y="-300" text-anchor="middle">75%</text>
                <line x1="-10" x2="1050" y1="-300" y2="-300" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                <text x="-25" y="-400" text-anchor="middle">100%</text>
                <line x1="-10" x2="1050" y1="-400" y2="-400" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                <!-- y-axis label -->
                <text x="200" y="-100" transform="rotate(-90)" text-anchor="middle" font-size="20px">Percentage of Usages</text>
                <!-- x-axis marks -->
                <text x="200" y="25" text-anchor="middle">16th Cent. Samples</text>
                <line x1="200" x2="200" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                <text x="400" y="25" text-anchor="middle">17th Cent. Samples</text>
                <line x1="400" x2="400" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                <text x="600" y="25" text-anchor="middle">18th Cent. Samples</text>
                <line x1="600" x2="600" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                <text x="800" y="25" text-anchor="middle">19th Cent. Samples</text>
                <line x1="800" x2="800" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                <text x="1000" y="25" text-anchor="middle">20th Cent. Samples</text>
                <line x1="1000" x2="1000" y1="10" y2="-10" stroke="black" stroke-width="1"/></g>
                
                <g id="connectors"><!-- 16th lines -->
                <line x1="200" x2="400" y1="-356" y2="-30.8" stroke="orange" stroke-width="1"/>
                <line x1="200" x2="400" y1="-44" y2="-248" stroke="green" stroke-width="1"/>
                <line x1="200" x2="400" y1="0" y2="-92" stroke="purple" stroke-width="1"/>
                <line x1="200" x2="400" y1="0" y2="-30.8" stroke="red" stroke-width="1"/>
                <!-- 17th lines -->
                <line x1="400" x2="600" y1="-30.8" y2="0" stroke="orange" stroke-width="1"/>
                <line x1="400" x2="600" y1="-248" y2="-300" stroke="green" stroke-width="1"/>
                <line x1="400" x2="600" y1="-92" y2="-80" stroke="purple" stroke-width="1"/>
                <line x1="400" x2="600" y1="-30.8" y2="-20" stroke="red" stroke-width="1"/>
                <!-- 18th lines -->
                <line x1="600" x2="800" y1="0" y2="0" stroke="orange" stroke-width="1"/>
                <line x1="600" x2="800" y1="-300" y2="-400" stroke="green" stroke-width="1"/>
                <line x1="600" x2="800" y1="-80" y2="0" stroke="purple" stroke-width="1"/>
                <line x1="600" x2="800" y1="-20" y2="0" stroke="red" stroke-width="1"/>
                <!-- 19th lines -->
                <line x1="800" x2="1000" y1="0" y2="0" stroke="orange" stroke-width="1"/>
                <line x1="800" x2="1000" y1="-400" y2="-400" stroke="green" stroke-width="1"/>
                <line x1="800" x2="1000" y1="0" y2="0" stroke="purple" stroke-width="1"/>
                <line x1="800" x2="1000" y1="0" y2="0" stroke="red" stroke-width="1"/></g>
                
               <g id="dots"><!-- 16th points -->
                <circle cx="200" cy="-356" r="5" fill="orange"/>
                <circle cx="200" cy="-44" r="5" fill="green"/>
                <circle cx="200" cy="0" r="5" fill="purple"/>
                <circle cx="200" cy="0" r="5" fill="red"/>
                <!-- 17th points -->
                <circle cx="400" cy="-30.8" r="5" fill="orange"/>
                <circle cx="400" cy="-248" r="5" fill="green"/>
                <circle cx="400" cy="-92" r="5" fill="purple"/>
                <circle cx="400" cy="-30.8" r="5" fill="red"/>
                <!-- 18th points -->
                <circle cx="600" cy="0" r="5" fill="orange"/>
                <circle cx="600" cy="-300" r="5" fill="green"/>
                <circle cx="600" cy="-80" r="5" fill="purple"/>
                <circle cx="600" cy="-20" r="5" fill="red"/>
                <!-- 19th points -->
                <circle cx="800" cy="0" r="5" fill="orange"/>
                <circle cx="800" cy="-400" r="5" fill="green"/>
                <circle cx="800" cy="0" r="5" fill="purple"/>
                <circle cx="800" cy="0" r="5" fill="red"/>
                <!-- 20th points -->
                <circle cx="1000" cy="0" r="5" fill="orange"/>
                <circle cx="1000" cy="-400" r="5" fill="green"/>
                <circle cx="1000" cy="0" r="5" fill="purple"/>
                <circle cx="1000" cy="0" r="5" fill="red"/></g>
                
                <g id="legend"><!-- legend -->
                <text x="250" y="-470" text-anchor="start">Nouns</text>
                <line x1="300" x2="350" y1="-475" y2="-475" stroke="orange" stroke-width="20"/>
                <text x="425" y="-470" text-anchor="start">Adjectives</text>
                <line x1="500" x2="550" y1="-475" y2="-475" stroke="green" stroke-width="20"/>
                <text x="655" y="-470" text-anchor="start">Verbs</text>
                <line x1="700" x2="750" y1="-475" y2="-475" stroke="purple" stroke-width="20"/>
                <text x="840" y="-470" text-anchor="start">Adverbs</text>
                <line x1="900" x2="950" y1="-475" y2="-475" stroke="red" stroke-width="20"/></g>
                
            </g>
        </svg>
        
    </xsl:template>
    
</xsl:stylesheet>