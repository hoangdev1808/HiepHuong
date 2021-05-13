<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <ul class="nav-bar">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <li class="nav-item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>nav-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="ZoneId=85">
                <xsl:attribute name="class">
                    <xsl:text>nav-item dropdown</xsl:text>
                </xsl:attribute>
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                </a>
            </xsl:if>
            <xsl:if test="ZoneId=86">
                <xsl:attribute name="class">
                    <xsl:text>nav-item dropdown</xsl:text>
                </xsl:attribute>
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:text disable-output-escaping="yes">javascript:void(0);</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                </a>
            </xsl:if>
            <xsl:if test="ZoneId!=85 and ZoneId!=86">
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                </a>
            </xsl:if>
            <xsl:if test="count(Zone)>0">
                <xsl:choose>
                    <xsl:when test="ZoneId=85">
                        <ul class="dropdown-menu">
                            <xsl:apply-templates select="Zone" mode="DropDown"></xsl:apply-templates>
                        </ul>
                    </xsl:when>
                    <xsl:when test="ZoneId=86">
                        <ul class="dropdown-menu">
                            <xsl:apply-templates select="Zone" mode="Lv-1"></xsl:apply-templates>
                        </ul>
                    </xsl:when>
                </xsl:choose>
            </xsl:if>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="DropDown">
        <li class="dropdown-item">
            <a class="nav-link">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Lv-1">
        <li class="dropdown-item has-sub">
            <a class="nav-link">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
            <ul class="sub-menu">
                <li>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <!-- <div class="kv-img">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div> -->
                    </a>
                </li>
            </ul>
        </li>
    </xsl:template>
</xsl:stylesheet>