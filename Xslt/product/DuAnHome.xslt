<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="kv-title red" data-aos="fade-down">
            <p>
                <xsl:value-of select="/ProductList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </div>
        <div class="project-home">
            <div class="swiper-container gallery-top" data-aos="fade-left">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="/ProductList/Product" mode="ProTop"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-container gallery-thumbs" data-aos="fade-right">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="/ProductList/Product" mode="ProThumbs"></xsl:apply-templates>
                </div>
            </div>
            <a class="view-more">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">/du-an</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                <span class="lnr lnr-arrow-right"></span>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="Product" mode="ProTop">
        <div class="swiper-slide">
            <div class="item">
                <div class="img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="desc">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <h1>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <p>
                            <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product" mode="ProThumbs">
        <div class="swiper-slide">
            <xsl:if test="Isactive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">swiper-slide swiper-slide-thumb-active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="item">
                <div class="img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>