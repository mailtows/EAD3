INCELIM="/home/thc4/Dropbox/xml/tools/rng-incelim-1.2/incelim"
TRANG="/home/thc4/Apps/OxygenXMLEditor16/lib/trang.jar"
DTD_FLATTEN="/home/thc4/Dropbox/xml/tools/dtdflatten/dtd-flatten-3.2.9.jar"


#$INCELIM -saxon ead3.rng


$INCELIM -saxon ead3_dtd.rng

java -jar  $TRANG ead3_dtd-compiled.rng  ead3-compiled.dtd

java -jar  $DTD_FLATTEN ead3-compiled.dtd > ead3-compiled_flat.dtd

#xmlstarlet sel -t -v //h1 -v //*[@class = contentdesc] elem-*.html  | sed 's/&gt;/> /' | sed 's/&lt;/</'
