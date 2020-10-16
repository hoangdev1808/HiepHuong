<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="kv-section field">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-3">
                        <div class="kv-title red">
                            <p>
                                <xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </div>
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </div>
            </div>
        </section>
        <!-- Modal-->
        <xsl:apply-templates select="/NewsList/News" mode="PopUp"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position()=1">
            <div class="col-xl-6 col-lg-9">
                <div class="big-img">
                    <a>
                        <xsl:attribute name="data-toggle">
                            <xsl:text>modal</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="data-target">
                            <xsl:text disable-output-escaping="yes">#popupTT-</xsl:text>
                            <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
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
                                <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
                                <div class="title">
                                    <h1>
                                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                    </h1>
                                </div>
                                <div class="desc lcl lcl-3">
                                    <p>
                                        <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                                    </p>
                                </div>
                                <span class="lnr lnr-arrow-right"></span>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()!=1">
            <div class="col-xl-3 col-lg-4 col-md-6">
                <div class="small-img top">
                    <a>
                        <xsl:attribute name="data-toggle">
                            <xsl:text>modal</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="data-target">
                            <xsl:text disable-output-escaping="yes">#popupTT-</xsl:text>
                            <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
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
                                <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
                                <div class="title">
                                    <h1>
                                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                    </h1>
                                </div>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="NewsImages">
        <xsl:if test="position()!=1">
            <div class="logo">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="PopUp">
        <div class="modal fade" tabindex="-1" role="dialog">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">popupTT-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="modal-dialog modal-dialog-centered container" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true"></span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-xl-6 col-md-6 left">
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
                            <div class="col-xl-6 col-md-6 right">
                                <div class="desc">
                                    <h1 class="title">
                                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                    </h1>
                                    <p>
                                        <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>