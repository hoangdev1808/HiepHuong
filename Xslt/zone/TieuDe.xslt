<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="block-title">
            <h2>
                <xsl:value-of select="/ZoneList/Title" disable-output-escaping="yes"></xsl:value-of>
            </h2>
        </div>
    </xsl:template>
</xsl:stylesheet>