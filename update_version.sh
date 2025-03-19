OLD_VERSION=0\.1\.0
NEW_VERSION=0\.2\.0

for file in $(grep -lr $OLD_VERSION .); do
    sed -i "s/$OLD_VERSION/$NEW_VERSION/" $file
done
