#
# XML.ps1
#

#.\souce\menu.xml

#<?xml version="1.0" encoding="utf-8" standalone="yes"?>
#<breakfast_menu>
#  <food>
#    <name>Belgian Waffles</name>
#    <price>$5.95</price>
#    <description>
#      two of our famous Belgian Waffles with plenty of real maple syrup
#    </description>
#    <calories>650</calories>
#  </food>
#  <food>
#    <name>Strawberry Belgian Waffles</name>
#    <price>$7.95</price>
#    <description>
#      light Belgian waffles covered with strawberries and whipped cream
#    </description>
#    <calories>900</calories>
#  </food>
#  <food>
#    <name>Berry-Berry Belgian Waffles</name>
#    <price>$8.95</price>
#    <description>
#      light Belgian waffles covered with an assortment of fresh berries and whipped cream
#    </description>
#    <calories>900</calories>
#  </food>
#</breakfast_menu>

$filePath = '.\source\menu.xml'
$xml =[xml]( Get-Content $filePath -Encoding UTF8)
$xml.FirstChild.InnerText

$xml.breakfast_menu.food.Count

$foods = $xml.breakfast_menu.food
foreach($food in $foods)
{	
	$food.InnerXml
	Write-Host
}

$xml.breakfast_menu.food | Sort-Object price | Select-Object price

#XML XPath Query
$path = "breakfast_menu/food/name"
$query = $xml.SelectNodes($path)
$query

#Modify XML
$xml.breakfast_menu.food[0].price
#$5.95
$xml.breakfast_menu.food[0].price = "`$6.95"
$xml.breakfast_menu.food[0].price
#Save to file
#$xml.Save()

$newfood = [xml] '<food><name>Berry-Berry Belgian Waffles</name><price>$8.95</price><description>light Belgian waffles covered with an assortment of fresh berries and whipped cream</description><calories>900</calories></food>'
$newfoodNode = $xml.ImportNode($newfood.food,$true)
$xml.breakfast_menu.AppendChild($newfoodNode)
#$xml.Save($filePath)

#Export output to xml
Get-ChildItem . | Export-Clixml D:\test.xml






