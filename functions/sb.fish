function sb
	if test -e $argv
		open -a "Sublime Text" $argv
	else
		touch $argv
		open -a "Sublime Text" $argv
	end
end
