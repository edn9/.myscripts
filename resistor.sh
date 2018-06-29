#!/bin/bash
#calcular resistor para leds, feito por Necronoise quinta 14 junho mês 6 2018

printf "Para calcular a resistência associada em serie com o Led, faremos o seguinte calculo:\n"
printf "R1 = VR1 / I\n\n"
printf "Onde, para achar a queda e tensão no resistor (VR1) basta subtrair a tensão de saída da porta digital do Arduino, que é de 5V, com a queda de tensão do Led que é de 2V. A corrente utilizada pelo Led também pode ser encontrada no Datasheet, é de 20mA.\n"
printf "R1 = (V – Vled) / Iled	R1 = (5 – 2) / 20mA\n"
printf "R1 = 3 / 0,02              R1 = 150Ω\n\n"
printf "Como não encontramos resistores com o valor calculado 150Ω, no mercado, basta utilizar um próximo. No caso usaremos o de 220Ω.\n"

read -p "Insira o valor V(tensão arduino/fonte): " V;
read -p "Insira o valor Vled(tensão led): " Vled; printf "\n"
echo "Dica: Se for corrente 20mA, insira 0.02 abaixo." 
read -p "Insira o valor I ou de corrente: " I;

printf "\n"

R=$(bc <<< $V-$Vled)

echo "Valor de R1=(V-Vled) é: R"
echo "----- -- ---($V-$Vled): $R"

printf "\n"

R1=$(bc <<<" scale=4;$R/$I")

printf "Valor de R1=(R/I) é: R1\n"
echo "----- -- ---($R/$I): $R1"

printf "\n"
echo "Você precisara do resistor $R1Ω."
