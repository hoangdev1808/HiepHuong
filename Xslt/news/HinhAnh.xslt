<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="images-list">
            <div class="row">
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-xl-4 col-md-6">
            <a>
                <xsl:attribute name="data-fancybox">
                    <xsl:text disable-output-escaping="yes">iamges</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="image-item">
                    <div class="img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="content">
                        <div class="icon">
                            <img src="/Data/Sites/1/skins/default/assets/icons/look.png" alt=""/>
                        </div>
                        <div class="desc">
                            <p>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>