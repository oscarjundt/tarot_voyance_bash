#declaration de la liste des different nom de carte
declare tab=("I. Le Bateleur" "II. La Papesse" "III. L’Impératrice" "IIII. L’Empereur" "V. Le Pape","VI. L’Amoureux" "VII. Le Chariot" "VIII. La Justice" "VIIII. L’Hermite" "X. La Roue de Fortune" "XI. La Force" "XII. Le Pendu" "XIII. L’Arcane sans nom" "XIIII. Tempérance" "XV. Le Diable" "XVI. La Maison Dieu" "XVII. L’Étoile" "XVIII. La Lune" "XVIIII. Le Soleil" "XX. Le Jugement" "XXI. Le Monde" "Le Mat")
#declaration d'une seconde liste pour les random
declare tab2=()
#initalisation du tableau 2 avec des nombre au assard entre 0 et 22
for i in `seq 0 22` ; do tab2[$i]=$((0+RANDOM%22)) ; done
n=0;
#une boucle pour demander a l'utilisateur ecrie le nombre qu il veux entre 0 et 22
while [ $n -le 3 ] ; do
	read -p "donner nombre entre 0 22: " rp
	#si le nombre n'est pas supperieur a 22 alors il cherche dans la table2 la position qua donner l user
	#puis il l'incere dans l autre tableaux qui nous donne a la fin la carte
	if [ $rp -le 22 ] ; then
		echo ${tab[${tab2[rp]}]}
		n=$(($n+1))
	#si c'est superieur a 22 il marque que l user doit recommancer
	else
		echo "erreur veuiller recommancer"
	fi
done
