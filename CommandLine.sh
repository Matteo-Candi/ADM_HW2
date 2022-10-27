 #! /bin/sh
 
 #supposed to have file instagram_posts.csv and instagram_profiles.csv in the same folder
 
 
profiles=$(awk '{length($8) > 100} {print $2}' instagram_posts.csv | head -11)  #first row is "sid_profiles"

for i in $profiles
do
    if [ $i == -1 ];
    then echo User was not found!;
    else grep $i instagram_profiles.csv | awk '{print $1, $2, $3, $4}';
    fi
done
 
 