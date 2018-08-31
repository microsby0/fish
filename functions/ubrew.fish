function ubrew
    echo "-------Updating-------";    
    brew update; 
    echo "-------Upgrading-------";  
    brew upgrade; 
    echo "-------Cleaning-------";  
    brew cleanup; 
    echo "-------Doctoring-------";  
    brew doctor;
end