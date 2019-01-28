for f in $(cat vendor/echelon/echelon.devices); do
    add_lunch_combo echelon_$f-userdebug;
done
