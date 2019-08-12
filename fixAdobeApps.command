#!/bin/bash
# Install camera raw 9.12.1 Instead http://download.adobe.com/pub/adobe/photoshop/cameraraw/mac/9.x/CameraRaw_9_12_1_mac.zip

RED='\033[0;31m'
GRN='\033[0;32m'
BLU='\033[0;34m'
NC='\033[0m'
echo ""
echo ""
echo -e "Adobe App Fixes for AMD Hackintosh Systems by ${RED}Cruelplatypus67${NC}"
echo ""
echo ""
PS3='Please enter your choice: '
options=("Fix Photoshop" "Fix Illustrator" "Fix Bridge" "Quit")
select opt in "${options[@]}"
do
	case $opt in
		"Fix Photoshop")
			echo ""
			echo -e "${GRN}You Chose To Fix Photoshop${NC}"
			echo ""
			echo -e "${RED}Plaese Inseret Your Password To Procceed${NC}"
			echo ""
			sudo rm -rf /Applications/Adobe\ Photoshop\ CC\ 2019/Adobe\ Photoshop\ CC\ 2019.app/Contents/Required/Deep_Font && sudo rm -rf /Library/Application\ Support/Adobe/Plug-Ins/CC/File Formats/Camera\ Raw.plugin && sudo rm -rf /Applications/Adobe\ Photoshop\ CC\ 2019/Adobe\ Photoshop\ CC\ 2019.app/Contents/Required/Deep_Font && sudo rm -rf /Library/Application\ Support/Adobe/Plug-Ins/CC/File Formats/Camera\ Raw.plugin
			break
			;;
		"Fix Illustrator")
			echo ""
			echo -e "${GRN}You Chose To Fix Illustrator${NC}"
			echo ""
			echo -e "${RED}Plaese Inseret Your Password To Procceed${NC}"
			echo ""
			sudo perl -i -pe 's|\x90\x90\x90\x90\x56\xE8\x6A\x00|\x90\x90\x90\x90\x56\xE8\x3A\x00|sg' /Applications/Adobe\ Illustrator\ CC\ 2019/Adobe\ Illustrator.app/Contents/MacOS/MMXCore.plugin/Contents/MacOS/MMXCore && sudo rm -rf /Applications/Adobe\ Illustrator\ CC\ 2019/Adobe\ Illustrator.app/Contents/Required/Plug-ins/Text\ Filters/TextModel.aip
			break
			;;
		"Fix Bridge")
			echo ""
			echo -e "${GRN}You Chose To Fix Bridge${NC}"
			echo ""
			echo -e "${RED}Plaese Inseret Your Password To Procceed${NC}"
			echo ""
			sudo perl -i -pe 's|\x90\x90\x90\x90\x56\xE8\x6A\x00|\x90\x90\x90\x90\x56\xE8\x3A\x00|sg' /Applications/Adobe\ Bridge\ CC\ 2019/Adobe\ Bridge\ CC\ 2019.app/Contents/Plug-ins/MMXCore.plugin/Contents/MacOS/MMXCore
			break
			;;
		"Quit")
			break
			;;
		*) echo "invalid option $REPLY";;
	esac
done