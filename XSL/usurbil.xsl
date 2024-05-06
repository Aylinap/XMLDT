<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>hola</h2>
    <h1><xsl:value-of select="ies/@nombre"></xsl:value-of></h1>
    <p><xsl:value-of select="ies/@web"></xsl:value-of></p>

    <table border="1">
    
    <tr>
        <th> Nombre del ciclo </th>
        <th> Grado </th>
        <th> Año del título </th>
    </tr>
    <xsl:for-each select="ies/ciclos/ciclo">
    <tr>
    <td><xsl:value-of select="nombre"></xsl:value-of></td>
    <td><xsl:value-of select="grado"></xsl:value-of></td>
    <td><xsl:value-of select="decretoTitulo/@año"></xsl:value-of></td>
    </tr>
    </xsl:for-each>
    
    </table>


  </body>
</html>
</xsl:template>

</xsl:stylesheet>