import os
import lxml.etree as ET
from pyhtml2pdf import converter

#Importer XML / XSL
dom_du_xml = ET.parse("xml-ead_dtd/instrument_de_recherche.xml")
gabarit_xslt = ET.parse("xml-ead_dtd/transformation.xsl")

#fonction transformation = méthode XSLT de la classe ET selon l'objet gabari XSLT
print(ET.XSLT(gabarit_xslt))
transformation = ET.XSLT(gabarit_xslt)

#le nouveau dom (output) = le dom XML sur lequel on applique la fonction transformation
rendu = transformation(dom_du_xml)

# Export en HTML
rendu.write("xml-ead_dtd/exports/instrument_recherche.html")

#Export en PDF
path = os.path.abspath('xml-ead_dtd/exports/instrument_recherche.html')
converter.convert(f'file:///{path}', 'xml-ead_dtd/exports/instrument_recherche.pdf')


"""
Func = open("GFG-1.html","w") 
Func.write(str(ET.tostring(newdom, pretty_print=True)))
Func.close
"""

#print(ET.tostring(newdom, pretty_print=True))


