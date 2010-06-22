<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="utilities/master.xsl" />

<xsl:template match="data">
		<xsl:apply-templates select="entries/entry" />
</xsl:template>

<xsl:template match="entries/entry">
	<article id="{@id}">
		<h1><a href="{$root}/articles/{title/@handle}/"><xsl:value-of select="title" /></a></h1>
		<xsl:copy-of select="body/*" />
	</article>
</xsl:template>

</xsl:stylesheet>