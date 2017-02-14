#!/bin/bash
echo "Zadejte svůj věk:"
read vek
echo "Zadejte příjmení:"
read jmeno
if [ $jmeno == thiel ] || [ $jmeno == Thiel ]; then
	echo "jsi děcko"
else if [ $vek -le 14 ]; then
	echo "Jste dítě"
else if [ $vek -ge 15 ] && [ $vek -le 17 ]; then
	echo "Jste mladistvý"
else
	echo "Jste dospělý"
fi
fi
fi
