alias ff="cd ~/.config/fish/functions"
alias dev="cd ~/dev"

function pcf
    cf login -a api.run-$argv[1].homedepot.com
end

function gitclean
    git fetch -p
    git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs git branch -d
end

function gitwork
	git config user.name "mxc5i2x"
	git config user.email "michael_crosby@homedepot.com"
end

function githome
    git config user.name "microsby0"
    git config user.email "microsby0@homedepot.com"
end


function sb
	if test -e $argv
		open -a "Sublime Text" $argv
	else
		touch $argv
		open -a "Sublime Text" $argv
	end
end

function ubrew
    echo "-----Updating-------";    
    brew update; 
    echo "-----Upgrading------";  
    brew upgrade; 
    echo "-----Upgrading Cask-";
    brew upgrade --cask;
    echo "-----Cleaning-------";  
    brew cleanup; 
    echo "-----Doctoring------";  
    brew doctor;
end