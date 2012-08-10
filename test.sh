#Commit everything to git
git add *
git commit -m "Add all auto"
git push origin master
#Logon to ssh
ssh frs2012-5@10.126.47.226
roscd botthree
cd ..
git pull origin master
