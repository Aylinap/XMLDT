<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Voluntarios</title>
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
        <h1>Información Voluntarios</h1>
        <h2>Voluntarios de Diario</h2>
        <table>
          <tr>
            <th>Nombre y Apellido</th>
            <th>Fecha de Nacimiento</th>
            <th>Género</th>
            <th>Habilidades</th>
            <th>Correo </th>
            <th>Horas</th>
            <th>Proyectos</th>
            <th>Disponibilidad</th>
          </tr>
          <xsl:apply-templates select="voluntarios/voluntario[@tipo='diario']"></xsl:apply-templates>
        </table>
        <h2>Voluntarios de Larga Estancia</h2>
        <table>
          <tr>
            <th>Nombre y Apellido</th>
            <th>Fecha de Nacimiento</th>
            <th>Género</th>
            <th>Habilidades</th>
            <th>Correo </th>
            <th>Horas</th>
            <th>Proyectos</th>
            <th>Disponibilidad</th>
          </tr>
          <xsl:apply-templates select="voluntarios/voluntario[@tipo='largaEstancia']"></xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="voluntario">
    <tr>
      <td><xsl:value-of select="concat(nombre, ' ', apellido)"></xsl:value-of></td>
      <td><xsl:value-of select="fecha_nacimiento"></xsl:value-of></td>
      <td><xsl:value-of select="genero"></xsl:value-of></td>
      <td><xsl:value-of select="habilidades"/></td>
      <td><xsl:value-of select="correo"></xsl:value-of></td>
      <td><xsl:value-of select="horas_servicio"></xsl:value-of></td>
      <td><xsl:apply-templates select="proyectos/proyecto"></xsl:apply-templates></td>
      <td><xsl:apply-templates select="disponibilidad/*"></xsl:apply-templates></td><!-- como hacer que muestre uno o el otro?-->
    </tr>
  </xsl:template>

<!--https://www.w3schools.com/xml/xsl_apply_templates.asp-->
<!-- uso de los templates-->

<!-- selecciona todo dentro de proyecto-->
  <xsl:template match="proyecto">
    <li><xsl:value-of select="."></xsl:value-of><br/></li>
  </xsl:template>
<!-- selecciona depende que haya dentro de la disponibilidad, si dia o mes-->
  <xsl:template match="dia | mes">
    <li><xsl:value-of select="."></xsl:value-of><br/></li>
  </xsl:template>

</xsl:stylesheet>
