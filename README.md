# ssh-2FA
This is a simple bash script that kind of works as a 2FA for SSH. The good thing about the script is that you can use it on shared hosting platforms where you do not have root/sudo access.

This has been tested on CentOS servers.

!  Be careful when setting your password so that you do not lock your self out !

In order to set that it up just follow these steps here:

1. Upload the file to your home folder
2. Change the password in the script to the password that you would like to use
3. Make the file executable (chmod +x 2fa.sh)
4. To test the script just run it and check if you can authenticate as normal (Just run ./2fa) . If that works proceed to the next step
5. Add the following line in your ~/.bashrc file (Note, update the path accordingly)

   /path/to/the/file/2fa.sh
   
That is pretty much it, after that you will be prompted for a password after your actual SSH auth is completed.
