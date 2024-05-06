<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> <!-- puede haber mas de un template -->
        <html>
            <head>
                <title>Videos</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 2px solid #800080; 
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #FFB6C1;
                    }
                    body {
                        background-color: #FFDAB9 
                    }
                    td {
                        background-color: #FAEBD7; 
                    }
                </style>
            </head>
            <body>
                <h1>Videos</h1>
                <h2>Películas</h2>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Tipo</th>
                        <th>Género</th>
                        <th>Fecha de Estreno</th>
                        <th>Duración</th>
                        <th>Director</th>
                    </tr>
                    <xsl:for-each select="videos/video[pelicula]">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="tipo"/></td>
                            <td><xsl:value-of select="genero"/></td>
                            <td><xsl:value-of select="fecha_de_estreno"/></td>
                            <td><xsl:value-of select="pelicula/duracion"/></td><!-- aqui es path para acceder informacion dentro de otra informacion-->
                            <td><xsl:value-of select="pelicula/director"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Series</h2>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Tipo</th>
                        <th>Género</th>
                        <th>Fecha de Estreno</th>
                        <th>Temporadas</th>
                        <th>Número de Capítulos</th>
                    </tr>
                    <xsl:for-each select="videos/video[serie]"><!-- tambien puede ser, videos/video[tipo='Pelicula'] asi selecciona el elemento tipo-->
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="tipo"/></td>
                            <td><xsl:value-of select="genero"/></td>
                            <td><xsl:value-of select="fecha_de_estreno"/></td>
                            <td><xsl:value-of select="count(serie/temporada)"/></td>
                            <td><xsl:value-of select="count(serie/capitulos/capitulo)"/></td><!-- aqui se ocupa el count para contar cuantos capitulos hay -->
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
