#!/bin/bash

echo "Installing python-pip"
#sudo apt-get -y install python-pip > /dev/null
sudo apt-get -y install python-pip >> host.log 2>&1
sudo apt-get -y install dialog >> host.log 2>&1
echo "Installing ansible"
pip install --upgrade ansible >> host.log 2>&1

echo "Opening selection panel"
sleep 3
cmd=(dialog --separate-output --checklist "Select which categories to install:" 22 76 16)
options=(cli-tools "" off
         ---brew "A better package management" off
         ---common "Common cli tools for productivity" off
         ---zsh "A better terminal shell for productivity" off
         ---git "Set git basic git configs with set variables" off
         apps "Mostly GUI apps for media and browsing" off
         all "Install all options" off)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        all)
            ansible-playbook setup.yml
            break
            ;;
        ---brew)
            ansible-playbook setup.yml --tags brew
            ;;
        ---common)
            ansible-playbook setup.yml --tags common
            ;;
        ---zsh)
            ansible-playbook setup.yml --tags zsh
            ;;
        ---git)
            ansible-playbook setup.yml --tags git
            ;;
        cli-tools)
            ansible-playbook setup.yml --tags cli
            ;;
        apps)
            ansible-playbook setup.yml --tags apps
            ;;
    esac
done

echo "Cleaning up logs"
rm -f host.log
echo "Installation complete"
