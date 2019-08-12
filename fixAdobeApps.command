#!/bin/bash
# Fix Photoshop 2019
sudo perl -i -pe 's|\x90\x90\x90\x90\x56\xE8\x6A\x00|\x90\x90\x90\x90\x56\xE8\x3A\x00|sg' /Applications/Adobe\ Photoshop\ CC\ 2019/Adobe\ Photoshop\ CC\ 2019.app/Contents/Required/Plug-ins/Extensions/MMXCore.plugin/Contents/MacOS/MMXCore
sudo perl -i -pe 's|\x90\x90\x90\x90\x56\xE8\x6A\x00|\x90\x90\x90\x90\x56\xE8\x3A\x00|sg' /Applications/Adobe\ Photoshop\ CC\ 2019/Adobe\ Photoshop\ CC\ 2019.app/Contents/Required/Plug-ins/Extensions/FastCore.plugin/Contents/MacOS/FastCore

sudo rm -rf /Applications/Adobe\ Photoshop\ CC\ 2019/Adobe\ Photoshop\ CC\ 2019.app/Contents/Required/Deep_Font

sudo rm -rf /Library/Application\ Support/Adobe/Plug-Ins/CC/File Formats/Camera\ Raw.plugin

# Install camera raw 9.12.1 Instead http://download.adobe.com/pub/adobe/photoshop/cameraraw/mac/9.x/CameraRaw_9_12_1_mac.zip


# Fix Illstrutaror
sudo rm -rf /Applications/Adobe\ Illustrator\ CC\ 2019/Adobe\ Illustrator.app/Contents/MacOS/MMXCore.plugin /Applications/Adobe\ Illustrator\ CC\ 2019/Adobe\ Illustrator.app/Contents/Required/Plug-ins/Text\ Filters/TextModel.aip

sudo perl -i -pe 's|\x90\x90\x90\x90\x56\xE8\x6A\x00|\x90\x90\x90\x90\x56\xE8\x3A\x00|sg' /Applications/Adobe\ Illustrator\ CC\ 2019/Adobe\ Illustrator.app/Contents/MacOS/MMXCore.plugin/Contents/MacOS/MMXCore

sudo rm -rf /Applications/Adobe\ Illustrator\ CC\ 2019/Adobe\ Illustrator.app/Contents/Required/Plug-ins/Text\ Filters/TextModel.aip


# Fix Bridge
sudo perl -i -pe 's|\x90\x90\x90\x90\x56\xE8\x6A\x00|\x90\x90\x90\x90\x56\xE8\x3A\x00|sg' /Applications/Adobe\ Bridge\ CC\ 2019/Adobe\ Bridge\ CC\ 2019.app/Contents/Plug-ins/MMXCore.plugin/Contents/MacOS/MMXCore




RED='\033[0;31m'
GRN='\033[0;32m'
BLU='\033[0;34m'
NC='\033[0m'
