#/bin/bash
clear
current_user=$(whoami)
echo
echo
echo "            --------------------------------------------"
printf "            \e[0;30;47m|   Stop Backdoor.MAC.Eleanor on Osx       |\e[0m \n"
printf "            \e[0;30;47m|          github.com/shellbear            |\e[0m \n"
echo "            --------------------------------------------"
echo ""
echo ""
echo "      This script has been created to delete Backdoor.MAC.Eleanor                                  contains in Easydoc Converter"
echo
echo
echo "Press any key to continue"
read
echo 
echo "                     <-- Starting Scan -->"
echo
echo
echo "Checking Agents :"
echo
if [ -f  ~/Library/LaunchAgents/com.getdropbox.dropbox.integritycheck.plist ]; then
    printf "\e[1;31;40mintegritycheck.plist found!\e[0m \n"
    rm ~/Library/LaunchAgents/com.getdropbox.dropbox.integritycheck.plist
    printf "\e[0;30;47m|Succesfully Deleted|\e[0m \n"
    echo
else printf "\e[0;30;47m|integritycheck.plist Not found|\e[0m \n"
fi
if [ -f  ~/Library/LaunchAgents/com.getdropbox.dropbox.usercontent.plist ]; then
    printf "\e[1;31;40musercontent.plist found!\e[0m \n"
    rm ~/Library/LaunchAgents/com.getdropbox.dropbox.usercontent.plist
    printf "\e[0;30;47m|Succesfully Deleted|\e[0m \n"
    echo
else printf "\e[0;30;47m|usercontent.plist Not found   |\e[0m \n"
fi
if [ -f  ~/Library/LaunchAgents/com.getdropbox.dropbox.timegrabber.plist ]; then
    printf "\e[1;31;40mtimegrabber.plist found!\e[0m \n"
    rm ~/Library/LaunchAgents/com.getdropbox.dropbox.timegrabber.plist
    printf "\e[0;30;47m|Succesfully Deleted|\e[0m \n"
    echo
else printf "\e[0;30;47m|timegrabber.plist Not found   |\e[0m \n"
fi
echo
echo "Checking Folders :"
echo 
if [ -d /Users/$current_user/Library/.dropbox ]; then
    printf "\e[1;31;40m.dropbox Folder found!\e[0m \n"
    rmdir -R /Users/$current_user/Library/.dropbox > /dev/null 2>&1
    rmdir /Users/$current_user/Library/.dropbox > /dev/null 2>&1
    printf "\e[0;30;47m|Succesfully Deleted|\e[0m \n"
else printf "\e[0;30;47m|.dropbox Folder Not found     |\e[0m \n"
fi
echo 
echo
echo "And now ?"
echo "If you see this message it's means that the Malware has been deleted"
echo "Or you're not infected. In the future to prevent Malware make sure to"
echo "Install tools like Little Snitch to block connections and BlockBlock to"
echo "Detect the installation of presistent software."
echo
echo