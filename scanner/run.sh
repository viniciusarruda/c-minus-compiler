for file in in/*
do
	splitted="$(cut -d'/' -f2 <<<"$file")"
	filename="$(cut -d'.' -f1 <<<"$splitted")"

	#trab1 << "$file" >> /MyOut/"$filename.out" 2>&1
	./trab1 < "$file" > MyOut/"$filename.out" 2>&1

	diff out1/"$filename.out" MyOut/"$filename.out"

done
