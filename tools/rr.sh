#!/bin/bash
# Root method chooser for the Resurrection Remix ROM
# Specify colors utilized in the terminal
    red=$(tput setaf 1)             #  red
    grn=$(tput setaf 2)             #  green
    ylw=$(tput setaf 3)             #  yellow
    blu=$(tput setaf 4)             #  blue
    ppl=$(tput setaf 5)             #  purple
    cya=$(tput setaf 6)             #  cyan
    txtbld=$(tput bold)             #  Bold
    bldred=${txtbld}$(tput setaf 1) #  red
    bldgrn=${txtbld}$(tput setaf 2) #  green
    bldylw=${txtbld}$(tput setaf 3) #  yellow
    bldblu=${txtbld}$(tput setaf 4) #  blue
    bldppl=${txtbld}$(tput setaf 5) #  purple
    bldcya=${txtbld}$(tput setaf 6) #  cyan
    txtrst=$(tput sgr0)             #  Reset
    rev=$(tput rev)                 #  Reverse color
    pplrev=${rev}$(tput setaf 5)
    cyarev=${rev}$(tput setaf 6)
    ylwrev=${rev}$(tput setaf 3)
    blurev=${rev}$(tput setaf 4)
    normal='tput sgr0'

echo -e "";
echo -e "";
echo -e "                    AAA                lllllll    iiii                                            ";                      
echo -e "                   A:::A               l:::::l   i::::i                                           ";                   
echo -e "                  A:::::A              l:::::l    iiii                                            ";                   
echo -e "                 A:::::::A             l:::::l                                                    ";
echo -e "                A:::::::::A             l::::l  iiiiiii      cccccccccccccccc    eeeeeeeeeeee     ";
echo -e "               A:::::A:::::A            l::::l  i:::::i    cc:::::::::::::::c   ee::::::::::::ee  ";
echo -e "              A:::::A A:::::A           l::::l   i::::i   c:::::::::::::::::c  e::::::eeeee:::::ee";
echo -e "             A:::::A   A:::::A          l::::l   i::::i  c:::::::cccccc:::::c e::::::e     e:::::e";
echo -e "            A:::::A     A:::::A         l::::l   i::::i  c::::::c     ccccccc e:::::::eeeee::::::e";
echo -e "           A:::::AAAAAAAAA:::::A        l::::l   i::::i  c:::::c              e:::::::::::::::::e ";
echo -e "          A:::::::::::::::::::::A       l::::l   i::::i  c:::::c              e::::::eeeeeeeeeee  ";
echo -e "         A:::::AAAAAAAAAAAAA:::::A      l::::l   i::::i  c::::::c     ccccccc e:::::::e           ";
echo -e "        A:::::A             A:::::A    l::::::l i::::::i c:::::::cccccc:::::c e::::::::e          ";
echo -e "       A:::::A               A:::::A   l::::::l i::::::i  c:::::::::::::::::c  e::::::::eeeeeeee  ";
echo -e "      A:::::A                 A:::::A  l::::::l i::::::i   cc:::::::::::::::c   ee:::::::::::::e  ";
echo -e "     AAAAAAA                   AAAAAAA llllllll iiiiiiii     cccccccccccccccc    eeeeeeeeeeeeee   ";
echo -e "";
echo -e "";
echo -e "";
echo -e "";
echo -e ${ylw}" √ Build is Successfully Done! "${txtrst};
echo -e "";
echo -e ${blu}" 〉Powered by ANDROID ™  // Pie 2019"${txtrst};
echo -e "";
echo -e ${red}" 〉Enjoy the Alice OS // #ALICEPROJECTTEAM "${txtrst};
echo -e "";
echo "{ \"response\": [ { \"datetime\": $(grep ro\.build\.date\.utc $OUT/system/build.prop | cut -d= -f2), \"filename\": \"$(basename $(ls $OUT/RR-P*.zip))\", \"id\": \"$((sha256sum $OUT/RR-P*.zip) | cut -d ' ' -f1)\", \"romtype\": \"$RR_BUILDTYPE\", \"size\": $(stat -c%s $OUT/RR-P*.zip), \"url\": \"https://downloads.sourceforge.net/project/resurrectionremix-pie/$RR_BUILD/$(basename $(ls $OUT/RR-P*.zip))\", \"version\": \"$(grep -m1 ro\.rr\.build\.version $OUT/system/build.prop | cut -d= -f2)\"  }]}" | tee $OUT/$RR_BUILD.json
