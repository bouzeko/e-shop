<?xml version="1.0" encoding="utf-8"?>
<!--Odkaz na github: https://github.com/bouzeko/e-shop/-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>
<xsl:template match="/">
   [
    <xsl:for-each select="e-shop/databaze-nastroju/kategorie/nastroj[stav='nedostupne']">
      <xsl:sort select="znacka" order="descending"/>

        {
          "značka": "<xsl:value-of select="znacka"/>"
          "druh": "<xsl:value-of select="druh"/>"
          "rok výroby": "<xsl:value-of select="rok-vyroby"/>"
          "kód zboží" <xsl:value-of select="kod-zbozi"/>
        }
        <xsl:if test="position() != last()">,</xsl:if>      
    </xsl:for-each>
  ]  
</xsl:template>
</xsl:stylesheet>
