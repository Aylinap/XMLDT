<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    tr:nth-child(odd) {
                        background-color: #ffffff;
                    }
                </style>
            </head>
            <body>
                <h2>Información de Donaciones</h2>
                <table>
                    <tr>
                        <th>Empresa Donante</th>
                        <th>CIF</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="/donaciones/empresa_donante/nombre"/></td>
                        <td><xsl:value-of select="/donaciones/empresa_donante/@cif"/></td>
                    </tr>
                    <tr>
                        <th>Fecha de Donación</th>
                        <td><xsl:value-of select="/donaciones/fecha_donacion"/></td>
                    </tr>
                </table>
                <br/>
                <h2>Alimentos Donados</h2>
                <table>
                    <tr>
                        <th>Tipo</th>
                        <th>Referencia</th>
                        <th>Nombre del Producto</th>
                        <th>Cantidad</th>
                        <th>Empresa que lo Manufactura</th>
                        <th>Fecha de Caducidad</th>
                        <th>Mantener Refrigerado</th>
                        <th>Conserva</th>
                    </tr>
                    <xsl:for-each select="/donaciones/donaciones/alimento">
                        <tr>
                            <td><xsl:value-of select="tipo"/></td>
                            <td><xsl:value-of select="referencia"/></td>
                            <td><xsl:value-of select="nombre_producto"/></td>
                            <td><xsl:value-of select="cantidad"/></td>
                            <td><xsl:value-of select="empresa_manufactura"/></td>
                            <td><xsl:value-of select="fecha_caducidad"/></td>
                            <td><xsl:value-of select="mantener_refrigerado"/></td>
                            <td><xsl:value-of select="conserva"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
