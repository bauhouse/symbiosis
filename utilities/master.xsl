<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl"/>
<xsl:import href="navigation.xsl"/>
<xsl:import href="date-time.xsl"/>

<xsl:output method="xml"
	media-type="text/html"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes"/>
	
<xsl:template match="/">
<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;
</xsl:text>
	<html lang="en">
		<head>
			<meta charset="utf-8" />
			<meta name="title" content="{$page-title}" />
			<meta name="description" content="" />
			<meta name="tags" content="" />
			<title><xsl:call-template name="page-title"/></title>
			<link rel="shortcut icon" href="/favicon.ico" />
			<link rel="icon" type="images/png" href="/favicon.png" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/screen.css" />
			<script>document.documentElement.className = "js";</script>
		</head>
		<body id="symbiosis">
			<header>
				<h1><a href="{$root}/"><xsl:value-of select="$website-name" /></a></h1>
				<h2><xsl:value-of select="$page-title" /></h2>
				<h3>A Symphony CMS ensemble where XML, HTML, CSS, XSLT, XPath and SVG come to play</h3>
				<nav>
					<xsl:apply-templates select="data/navigation" />
				</nav>
			</header>
			<section class="entries">
				<xsl:apply-templates />
			</section>
			<footer id="site-info">
				<p><a href="{$root}/"><xsl:value-of select="$website-name" /></a> | Powered by <a href="http://symphony-cms.com/">Symphony CMS</a></p>
			</footer>
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>