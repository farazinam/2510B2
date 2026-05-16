<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
<body>

<h2>My CD Collection</h2>

<table border="1">

<tr bgcolor="#9acd32">
<th>Course</th>
<th>Duration</th>
<th>Branch</th>
<th>Location</th>
</tr>

<xsl:for-each select="root/institute">
<tr>
<td><xsl:value-of select="course"/></td>
<td><xsl:value-of select="duration"/></td>
<td><xsl:value-of select="branch"/></td>
<td><xsl:value-of select="location"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>