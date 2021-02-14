<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Lab 03</title>
      </head>
      <body>
        <h1>Lab 03 - XML / XPATH / XSLT</h1>
        <table>
          <xsl:for-each select="courses/course">
            <xsl:sort select="@order" order="ascending"/>
            <thead>
              <tr>
                <th>
                  <strong><xsl:value-of select="time/day"/></strong>
                </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <xsl:value-of select="code"/>
                </td>
              </tr>
              <tr>
                <td>
                  <xsl:value-of select="name"/>
                </td>
              </tr>
              <tr>
                <td>
                  <xsl:value-of select="instructor"/>
                </td>
              </tr>
              <tr>
                <td>
                  <xsl:value-of select="time"/>
                </td>
              </tr>
            </tbody>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>