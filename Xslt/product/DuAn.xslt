<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
        </div>
        <div class="pages">
            <div class="modulepager">
                <div class="pagination">
                    <a class="btn btn-pageLoad" href="">Xem thêm
                        
                        
                        
                        
                        <em class="ri-arrow-down-s-line"></em>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
            <figure>
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
                <figcaption>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <h1 class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <p>
                            <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </a>
                    <a class="btn btn-viewmore">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                        <span class="lnr lnr-arrow-right"></span>
                    </a>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>