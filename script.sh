#find and print names of all soft-links on your VM
find / -type l -exec ls -la '{}'\;
#find and print count of block and character devices
find / -type b -or -type c | wc -l 
#find all folders with Sticky bit
find / -type d -perm -1000 -exec ls -ld {} \;
#make soft link for /etc/hostname in /tmp folder
ln -s /etc/hostname /tmp/newhostname
#create user “testuser”
useradd testuser
#create file in home directory “testuser_data” owned by “testuser”
touch /home/testuser_data
chown testuser:testuser /home/testuser_data