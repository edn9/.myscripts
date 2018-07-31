#!/bin/bash
#calcular resistor para leds, feito por Necronoise quinta 14 junho mês 6 2018 (revisão vitinhocarneiro 31.07.2018)
#pt-br only, resistor calculator for leds, arduino

printf "Para calcular a resistência associada em série com o LED, faremos o seguinte cálculo:\n"
printf "R1 = VR1 / I\n\n"
printf "Onde para achar a queda e tensão no resistor (VR1) basta subtrair a tensão que queremos usar para alimentá-lo - por exemplo, a tensão da porta digital do Arduino que é de 5V, com a queda de tensão do LED (disponível no datasheet dele); tomaremos como exemplo uma queda de tensão de 2V.\nA corrente máxima do LED também pode ser encontrada no datasheet; no caso utilizaremos uma corrente de 20mA (0.02A).\n\n"
printf "R1 = (V – Vled) / Iled	R1 = (5 – 2) / 20mA\n"
printf "R1 = 3 / 0,02              R1 = 150Ω\n\n"
printf "Como não encontramos resistores com o valor calculado de 150Ω no mercado, basta utilizar o resistor mais próximo com valor maior. No caso, seria usado um resistor de 220Ω.\n\n"

read -p "Insira o valor V (tensão do arduino/fonte): " V;
read -p "Insira o valor Vled (queda de tensão do LED): " Vled; printf "\n"
#echo "Dica: Se a corrente for de 20mA, insira 0.02 abaixo." 
read -p "Insira o valor I ou de corrente (em ampéres (A); atente que 20mA = 0.02A): " I;

printf "\n"

VR1=$(bc <<< $V-$Vled)

echo "Valor de VR1=(V-Vled) é: VR1"
echo "----- -- ---($V-$Vled): $VR1"

printf "\n"

R1=$(bc <<<" scale=4;$VR1/$I")

printf "Valor de R1=(VR1/I) é: R1\n"
echo "----- -- ---($VR1/$I): $R1"

printf "\n"

echo "Você precisará de um resistor de $R1Ω."

printf "\n"
