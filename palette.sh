#!/bin/sh

fill="         "
function define_colors {
    blck="\e[49m${fill}\e[49m"
    whte="\e[107m${fill}\e[49m"
    red1="\e[41m${fill}\e[49m"
    grn1="\e[42m${fill}\e[49m"
    ylw1="\e[43m${fill}\e[49m"
    blu1="\e[44m${fill}\e[49m"
    mga1="\e[45m${fill}\e[49m"
    cyn1="\e[46m${fill}\e[49m"
    gry1="\e[100m${fill}\e[49m"
    gry2="\e[47m${fill}\e[49m"
    red2="\e[101m${fill}\e[49m"
    grn2="\e[102m${fill}\e[49m"
    ylw2="\e[103m${fill}\e[49m"
    blu2="\e[104m${fill}\e[49m"
    mga2="\e[105m${fill}\e[49m"
    cyn2="\e[106m${fill}\e[49m"
}

define_colors

x="\x1b(0\x78\x1b(B"
w="\x1b(0\x77\x1b(B"
v="\x1b(0\x76\x1b(B"
q="\x1b(0\x71\x1b(B"
m="\x1b(0\x6d\x1b(B"
j="\x1b(0\x6a\x1b(B"
k="\x1b(0\x6b\x1b(B"
l="\x1b(0\x6c\x1b(B"
hhhh="$q$q$q$q$q$q$q$q$q"

if [ "$1" == "v" ]; then
    for x in {0..8}; do 
        for i in {30..37}; do 
            for a in {40..47}; do 
                printf "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
            done
            echo
        done
    done
    echo ""
elif [ "$1" == "l" ]; then
    printf "$l$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$k\n"
    printf "$x$blck$x$red1$x$grn1$x$ylw1$x$blu1$x$mga1$x$cyn1$x$gry1$x\n"
    printf "$x$blck$x$red1$x$grn1$x$ylw1$x$blu1$x$mga1$x$cyn1$x$gry1$x\n"
    printf "$x$whte$x$red2$x$grn2$x$ylw2$x$blu2$x$mga2$x$cyn2$x$gry2$x\n"
    printf "$x$whte$x$red2$x$grn2$x$ylw2$x$blu2$x$mga2$x$cyn2$x$gry2$x\n"
    printf "$m$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$j\n"
elif [ "$1" == "m" ]; then
    fill="     "
    define_colors
    hhhh="$q$q$q$q$q"
    printf "$l$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$k\n"
    printf "$x$blck$x$red1$x$grn1$x$ylw1$x$blu1$x$mga1$x$cyn1$x$gry1$x\n"
    printf "$x$blck$x$red1$x$grn1$x$ylw1$x$blu1$x$mga1$x$cyn1$x$gry1$x\n"
    printf "$x$whte$x$red2$x$grn2$x$ylw2$x$blu2$x$mga2$x$cyn2$x$gry2$x\n"
    printf "$x$whte$x$red2$x$grn2$x$ylw2$x$blu2$x$mga2$x$cyn2$x$gry2$x\n"
    printf "$m$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$j\n"
elif [ "$1" == "s" ]; then
    fill="  "
    define_colors
    hhhh="$q$q"
    printf "$l$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$k\n"
    printf "$x$blck$red1$grn1$ylw1$blu1$mga1$cyn1$gry1$x\n"
    printf "$x$whte$red2$grn2$ylw2$blu2$mga2$cyn2$gry2$x\n"
    printf "$m$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$j\n"
elif [ "$1" == "xs" ]; then
    fill=" "
    define_colors
    hhhh="$q"
    printf "$l$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$k\n"
    printf "$x$blck$red1$grn1$ylw1$blu1$mga1$cyn1$gry1$x\n"
    printf "$x$whte$red2$grn2$ylw2$blu2$mga2$cyn2$gry2$x\n"
    printf "$m$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$hhhh$j\n"
elif [ "$1" == "xxs" ]; then
    fill=" "
    define_colors
    hhhh="$q"
    printf "$blck$red1$grn1$ylw1$blu1$mga1$cyn1$gry1\n"
    printf "$whte$red2$grn2$ylw2$blu2$mga2$cyn2$gry2\n"
else 
    printf "          b/w       red      green     yellow    blue     magenta    cyan      gray\n"
    printf "      $l$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$w$hhhh$k\n"
    printf "dark  $x$blck$x$red1$x$grn1$x$ylw1$x$blu1$x$mga1$x$cyn1$x$gry1$x\n"
    printf "      $x$blck$x$red1$x$grn1$x$ylw1$x$blu1$x$mga1$x$cyn1$x$gry1$x\n"
    printf "light $x$whte$x$red2$x$grn2$x$ylw2$x$blu2$x$mga2$x$cyn2$x$gry2$x\n"
    printf "      $x$whte$x$red2$x$grn2$x$ylw2$x$blu2$x$mga2$x$cyn2$x$gry2$x\n"
    printf "      $m$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$v$hhhh$j\n"
fi