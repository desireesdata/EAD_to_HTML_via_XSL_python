<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	<head>
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
		<body>
		<section>
		
			<div id="ead_header">
				<xsl:for-each select="ead/eadheader/*">
					<span class="ead_header_element"> <xsl:value-of select="."/></span>
				</xsl:for-each>
			</div>
		
			<header>
				<h1><xsl:value-of select="ead/archdesc/did/unititle"/></h1>
				<h2><xsl:value-of select="ead/archdesc/did/unitid"/></h2>
			</header>
		
			<div id="infos_requises_isadg">
			Niveau maximal de l'ensemble : <xsl:value-of select="ead/archdesc/@level" />
				
					<xsl:for-each select="ead/archdesc/did">

						<div>ID/Cote : <xsl:value-of select="unitid"/></div>
						
						<div>Dates extrêmes :
							<ul>
								<xsl:for-each select="unitdate">
									<li><xsl:copy-of select="."/></li>
								</xsl:for-each>
							</ul>
						</div>
						
						<div>Titre : <xsl:value-of select="unititle"/></div>
						
						<div>Description Matérielle :
							<ul>
								<xsl:for-each select="physdesc/*">
								<li><xsl:copy-of select="."/></li>
								</xsl:for-each>
							</ul>
						</div>
						<div>Producteur(s) :
							<ul>
								<xsl:for-each select="origination/*">
								<li><xsl:copy-of select="."/></li>
								</xsl:for-each>
							</ul>
						</div>
					</xsl:for-each>
			</div>
			
			<div id="acces">
						<h4>Condition d'accès :</h4> <xsl:value-of select="ead/archdesc/accessrestrict"/>
			</div>
			<div id="utilisation">
						<h4>Condition de reproduction :</h4> <xsl:value-of select="ead/archdesc/userestrict"/>
			</div>
			
			<hr></hr>
			
			<div id="bioghist">
			<h4>Notice historique ou biographique : </h4>
				<xsl:for-each select="ead/archdesc/bioghist/*">
					<xsl:copy-of select="."/>
				</xsl:for-each>
			</div>
			
			<div id="scopecontent">
			<h4>Présentation du contenu</h4>
				<xsl:for-each select="ead/archdesc/scopecontent/*">
					<xsl:copy-of select="."/>
				</xsl:for-each>
			</div>
			
			<ol>
			<xsl:for-each select="ead/archdesc/dsc/c">
				<li><xsl:value-of select="did/unitid"/> / <xsl:value-of select="did/unittitle"/></li>
					<xsl:for-each select="c/did">
						<h5><xsl:value-of select="unittitle"/></h5>
						<ul>
							<xsl:for-each select="parent::c/c/did">
								<li><xsl:value-of select="unitid"/>, <xsl:value-of select="unittitle"/>, <xsl:value-of select="unitdate"/></li>
							</xsl:for-each>
						</ul>
					</xsl:for-each>
					
				
					
					
			</xsl:for-each>
			</ol>
			
		</section>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>