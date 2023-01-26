#!/bin/sh
gpu=$(envycontrol -q | sed 's/.*: //')

case $gpu in 
    integrated )
        printf -- '%s\n' "gpu|string|integrated"
        ;;
    hybrid )
        printf -- '%s\n' "gpu|string|hybrid"
        ;;
    nvidia )
        printf -- '%s\n' "gpu|string|nvidia"
        ;;
    * )
        printf -- '%s\n' "gpu|string|GPU ERR"
        ;;
esac

printf -- '%s\n' ""

unset -v gpu
