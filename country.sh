#!/bin/bash
echo "PROGRAM TO PRINT CAPITAL CITY OF GIVEN COUNTRY"
while true
echo "Enter country name:"
echo "----------List-------------
INDIA
SRI LANKA
PORTUGAL
COSTA RICA
BRAZIL"
read -p "Enter here:" country
do
if [[ $country == "INDIA" || $sountry == "India" ]]
then
   echo "Country: India, Capital: New Delhi"
elif [[ $country == "BRAZIL" || $sountry == "Brazil" ]]
then
   echo "Country: Brazil, Capital: Brasilia"
elif [[ $country == "SRI LANKA" || $sountry == "Sri Lanka" ]]
then
   echo "Country: Sri Lanka, Capital: Colombo"
elif [[ $country == "PORTUGAL" || $sountry == "Portugal" ]]
then
   echo "Country: Portugal, Capital: Lisbon "
elif [[ $country == "COSTA RICA" || $sountry == "Costa Rica" ]]
then
   echo "Country: Costa Rica, Capital: San José "
else
   echo "Capital city name of $country is not available currently in our database"
fi
echo -n "Do you want to continue[Y/N]:"
read choice
if [[ "$choice" == "N" || "$choice" == "n" ]]
then
    break
else
    echo "OK. Check the capital of different country now"
fi
done
