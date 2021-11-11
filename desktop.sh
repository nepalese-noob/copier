read -p "do you want to start desktop? y/n: " dt
if [ "$dt" = "y" ]; then
nh kex
fi
read -p "do you want to copy something? y/n: " cpy
if [ "$cpy" = "y" ]; then
	echo "1. file"
	echo "2. folder"
	read -p "choose category: " category
	if [ "$category" = "1" ]; then
		echo "you choosed 1"
		sleep 1
		clear
		echo "1. Home to desktop"
		echo "2. Home 2 sdcard"
		echo "3. sdcard to home"
		echo "4. sdcard to desktop"
		echo "5. desktop to home"
		echo "6. desktop to sdcard"
		echo "7. sdcard/download to HOME"
		echo "8. sdcard/download to Desktop"

		read wh
		if [ "$wh" = "1" ]; then
			cd ~ && ls
			read -p "enter file name: " file
			cp $file /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop

		elif [ "$wh" = "2" ]; then
			cd ~ && ls
		read -p "enter file name: " file
			cp $file /sdcard
		elif [ "$wh" = "3" ]; then
			cd /sdcard && ls
			read -p "enter file name: " file
			cp $file $HOME
		elif [ "$wh" = "4" ]; then
			cd /sdcard
			ls
			read -p "enter file name: " file
			cp $file /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop
		elif [ "$wh" = "5" ]; then
			cd /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop
			ls
			read -p "enter file name: " file
			cp $file $HOME
		elif [ "$wh" = "6" ]; then
			cd /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop
                        ls
                        read -p "enter file name: " file
			cp $file /sdcard
		elif [ "$wh" = "7" ]; then
                        cd
			cd /sdcard/download
                        ls
                        read -p "enter file name: " file
                        cp $file $HOME
		elif [ "$wh" = "8" ]; then
                        cd
                        cd /sdcard/download
                        ls
                        read -p "enter file name: " file
                        cp $file /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop
		else
			echo ""
		fi
	elif [ "$category" = "2" ]; then
                echo "you choosed 1"
                sleep 1
                clear
                echo "1. Home to desktop"
                echo "2. Home 2 sdcard"
                echo "3. sdcard to home"
                echo "4. sdcard to desktop"
                echo "5. desktop to home"
                echo "6. desktop to sdcard"
		echo "7. sdcard/download to HOME"
                echo "8. sdcard/download to Desktop"
                read wh
                if [ "$wh" = "1" ]; then
                        cd ~ && ls                                                                                      read -p "enter file name: " file
                        cp -r $file /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop

                elif [ "$wh" = "2" ]; then
                        cd ~ && ls
                read -p "enter file name: " file
                        cp -r $file /sdcard
                elif [ "$wh" = "3" ]; then
                        cd /sdcard && ls
                        read -p "enter file name: " file
                        cp -r $file $HOME
                elif [ "$wh" = "4" ]; then
                        cd /sdcard
                        ls
                        read -p "enter file name: " file
                        cp -r $file /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop
                elif [ "$wh" = "5" ]; then
                        cd /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop
                        ls
                        read -p "enter file name: " file
                        cp -r $file $HOME
                elif [ "$wh" = "6" ]; then
                        cd /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop
                        ls
                        read -p "enter file name: " file
                        cp -r $file /sdcard
		elif [ "$wh" = "7" ]; then
                        cd
                        cd /sdcard/download
                        ls
                        read -p "enter file name: " file
                        cp -r $file $HOME
                elif [ "$wh" = "8" ]; then
                        cd                                                                                                        cd /sdcard/download
                        ls
                        read -p "enter file name: " file
                        cp -r $file /data/data/com.termux/files/home/kali-arm64/home/kali/Desktop
                else
                        echo ""
		fi
	fi
fi
