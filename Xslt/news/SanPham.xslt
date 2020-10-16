<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="kv-section home-2">
            <div class="container">
                <div class="kv-title red">
                    <p>
                        <xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="pro-item">
            <div class="row">
                <div class="col-xl-7 col-md-12 left">
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
                </div>
                <div class="col-xl-5 col-md-12 right">
                    <div class="content">
                        <h1 class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <div class="desc lcl lcl-3">
                            <p>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                        <div class="pro-slide single-swiper">
                            <div class="swiper-container product">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <a class="view-more">
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                            <em class="lnr lnr-arrow-right"></em>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="NewsImages">
        <xsl:if test="position()!=1">
            <div class="swiper-slide">
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
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>