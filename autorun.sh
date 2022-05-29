#!/bin/sh

# (c) 2017, ServicesHub, serviceshub.in

pwd=$(cd $(dirname $0) && pwd)

i="$HOME/.icons/obs.png"; [ -f "$i" ] || { mkdir $(dirname "$i"); cp $pwd/book/obs.png $i; };
f="$HOME/.config/Dialogue_8-201809040602/Default/Pepper Data/Shockwave Flash/WritableRoot/#Security/FlashPlayerTrust";
[ -f "$f" ] || { mkdir -p "$f"; };
echo "$pwd" > "$f/serviceshub.in.cfg";
[ $(uname -m) = x86_64 ] && m=x64 || m=ia32; 
"$pwd/book/linux-${m}/Dialogue_8-201809040602" "$pwd"
