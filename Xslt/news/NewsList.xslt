<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="NewsList/News" mode="Big-img"></xsl:apply-templates>
            <xsl:apply-templates select="NewsList/News" mode="Small-img"></xsl:apply-templates>
            <xsl:apply-templates select="NewsList/News" mode="Small-img-2"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Big-img">
        <xsl:if test="position()=1">
            <div class="col-xl-8 col-lg-6 col-md-6">
                <div class="big-img">
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
                                </div>
                                <div class="desc">
                                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Small-img">
        <xsl:if test="position()=2">
            <div class="col-xl-4 col-lg-6 col-md-6">
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
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Small-img-2">
        <xsl:if test="position()&gt;3 and position()&lt;9">
            <div class="col-xl-4 col-md-6">
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
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>