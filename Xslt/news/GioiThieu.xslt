<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <section class="kv-section about-1">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <xsl:apply-templates select="News" mode="TongQuan"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="kv-section about-2">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="kv-title red">
                        <p>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="history-slide">
                        <div class="thumbs">
                            <div class="swiper-container gallery-thumbs">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="News" mode="Thumbs"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <div class="swiper-container gallery-top">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Top"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="kv-section about-3">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="kv-title red">
                        <p>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="TamNhin"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="kv-section about-4">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="kv-title red">
                        <p>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="GiaTri"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=5">
            <section class="kv-section about-5">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="PhatTrien"></xsl:apply-templates>
                    </div>
                </div>
                <xsl:apply-templates select="News" mode="PopUp"></xsl:apply-templates>
            </section>
        </xsl:if>
        <xsl:if test="position()=6">
            <section class="kv-section about-6">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3">
                            <div class="kv-title red">
                                <p>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                            <div class="desc">
                                <p>
                                    <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                        </div>
                        <div class="col-xl-9 pl-120">
                            <div class="row">
                                <xsl:apply-templates select="News" mode="DoiTac"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="TongQuan">
        <div class="kv-title red">
            <p>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </div>
        <div class="desc">
            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="img-popup">
            <img >
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
            <div class="icon">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="BriefContent"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-fancybox">
                        <xsl:text disable-output-escaping="yes">Popup</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="BriefContent"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <img src="/Data/Sites/1/skins/default/assets/gioithieu/play.png" alt=""/>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Thumbs">
        <div class="swiper-slide">
            <xsl:if test="Isactive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">swiper-slide swiper-slide-thumb-active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="item">
                <div class="desc">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Top">
        <div class="swiper-slide">
            <div class="item row">
                <div class="col-xl-7 col-lg-6">
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
                <div class="col-xl-5 col-lg-6">
                    <div class="content">
                        <p class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                        <div class="brief-content">
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="TamNhin">
        <div class="col-xl-6">
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
                    <div class="item-title">
                        <div class="icon">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <p class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <figcaption>
                        <div class="icon">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <p class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                        <div class="desc">
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="GiaTri">
        <div class="col-xl-3 col-sm-6">
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
                        <div class="desc">
                            <p>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="PhatTrien">
        <div class="col-xl-6">
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
        <div class="col-xl-6">
            <div class="content">
                <div class="kv-title red">
                    <p>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <div class="desc lcl lcl-5">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <a class="btn btn-pageLoad">
                    <xsl:attribute name="data-toggle">
                        <xsl:text>modal</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="data-target">
                        <xsl:text disable-output-escaping="yes">#popupTT</xsl:text>
                    </xsl:attribute>
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
    </xsl:template>
    <xsl:template match="News" mode="DoiTac">
        <xsl:if test="position()!=1">
            <div class="col">
                <div class="item">
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
                    <span class="span-1"></span>
                    <span class="span-2"></span>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="PopUp">
        <div class="modal fade" tabindex="-1" role="dialog">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">popupTT</xsl:text>
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