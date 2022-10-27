 #! /bin/sh
 
 #supposed to have file instagram_posts.csv and instagram_profiles.csv in the same folder
 
 
profiles=$(awk -F '\t' '$8 ~ /^.{101,}$/ {print $2}' instagram_posts.csv | head -10)  #first row is "sid_profiles"


for i in $profiles
do
    if [ $i == -1 ];
    then echo User was not found!;
    else awk -F '\t' -v i=$i '$1==i  {print $1, $2, $3, $4}' instagram_profiles.csv ;
    fi;
done
