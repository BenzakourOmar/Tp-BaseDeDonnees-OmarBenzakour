<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
        <head>
            <title>Informations des Vols</title>
        </head>
        <body>
            <h1>Informations des Vols</h1>
            <xsl:for-each select="aeroport/vols/vol">
                <div class="vol">
                    <h2>Vol <xsl:value-of select="numero"/></h2>
                    <p><strong>Date et Heure :</strong> 
                        <xsl:value-of select="heure_depart"/> - <xsl:value-of select="heure_arrivee"/>
                    </p>
                    <p><strong>N° de piste :</strong> <xsl:value-of select="pisteRef"/></p>
                    <p><strong>Type d'avion :</strong> 
                        <xsl:value-of select="/aeroport/avions/avion[immatriculation=current()/avionRef]/modele"/>
                    </p>
                </div>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
