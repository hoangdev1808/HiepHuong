<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="kv-title red" data-aos="fade-down">
            <p>
                <xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </div>
        <div class="news-slide" data-aos="fade-up">
            <div class="swiper-container news-home">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="small-img">
                <div class="item">
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
                            <div class="date">
                                <p>
                                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                            <div class="title">
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
                                </a>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
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
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>