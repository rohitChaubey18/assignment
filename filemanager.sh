function=$1
path=$2
file=$2
destination=$3
name=$3
content=$4
noofline=$4
whichline=$4
sucessfullyrun=$5

log=log_file.txt

printf "Log File - " > $log
date >> $log
whoami >> $log
time >> $log



addDir()
{
if [[ function=="addDir" ]]
then
        mkdir -p $path/$name
elif [[ -d "$file" ]]
then
        echo "your file is exist"

fi
} 


listAll()
{

if [[ function=="listAll" ]]
then
                ls -la $path
else
        echo "This list of file doesnot exist in your system "

fi

}


listDirs()
{

if [[ function=="listDirs" ]]
then
        ls -la $path |grep ^d
else
        echo "This list of file doesnot exist in your system "

fi
}

listFiles()
{

if [[ function=="listFiles" ]]
then
        ls -la $path |grep ^-
else
        echo "This list of file doesnot exist in your system "
fi
}
addFile()
{
if  [[ function=="addFile" ]]
then
        touch $path/$name
else
        echo "This  file cannot added  "
fi
}
 addContentToFile()
{
if  [[ function=="addContentToFile" ]]
then
        echo $content >> $path/$name
else
        echo "This  file cannot added  "
fi
}



showFileBeginingContent()
{
if  [[ function=="showFileBeginingContent" ]]
then
        head -$noofline $path/$name
else
        echo "This  file cannot added please go "
fi
}


showFileEndContent()
{
if  [[ function=="showFileEndContent" ]]
then
        tail -$noofline $path/$name
else
        echo "This  file cannot added  "
fi
}

moveFile()
{
if  [[ function=="moveFile" ]]
then
        mv $file $destination
else
        echo "This  file cannot moved "
fi
}

copyFile()
{
if  [[ function=="copyFile" ]]
then
        cp $file $destination
else
        echo "This  file cannot copy "
fi
}



deleteDirs()
{
if  [[ function=="deleteDirs" ]]
then
        rmdir -rf $path/$name
else
        echo "This  directory cannot delete "
fi
}



###############


addContentToFileBegining()
{
if  [[ function=="addContentToFileBegining" ]]
then
        sed -i "1i $content" $path/$name
else
        echo "This  file cannot copy "
fi
}











case $function in

        addDir) 
        	addDir
        ;;
        
        

        listFiles)
        	 listFiles
        ;;



        listDirs) 
        	listDirs
        ;;
        
        
        
        
        deleteDirs) 
        	deleteDirs
        ;;


        
        listAll) 
        	listAll
        ;;



        addFile)
        	 addFile
        ;;



       addContentToFile) 
       	addContentToFile
       ;;
       
       

        showFileBeginingContent) 
        	showFileBeginingContent
        ;;
        
        

        showFileEndContent)
        	 showFileEndContent
    	 ;;



        moveFile)
        	 moveFile
        ;;



        copyFile) 
        	 copyFile
        ;;
        
        addContentToFileBegining)
        	addContentToFileBegining
        ;;



        *) echo "You have entered wrong input "
esac




