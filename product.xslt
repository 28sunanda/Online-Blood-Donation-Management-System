<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="inventory">
<html>
<body>
<h3>Inventories</h3>
<table border="2">
    <tr bgcolor="red">
	    <th>Blood Group</th>
	    <th>Current Level</th>
	</tr>
	<xsl:for-each select="product">
	    <tr>
		    <td><xsl:value-of select="bloodgroup/"></td>
			<td><xsl:value-of select="currentlevel/"></td>
		</tr>
	</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>