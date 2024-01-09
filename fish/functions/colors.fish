function colors --description "Prints out console colors test page"
	for i in (seq 0 255)
		printf "\x1b[38;5;"$i"mcolor%-5i\x1b[0m" $i
		if test (math "$i % 8") -eq 7
			printf "\n"
		end
	end
end
