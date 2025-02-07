
if [ -d "CheXmask-Database-main" ]; then
    echo "Directory 'CheXmask-Database-main' exists."
else
    echo "Downloading 'CheXmask-Database-main'..."
    
    wget https://github.com/ngaggion/CheXmask-Database/archive/refs/heads/main.zip
    unzip main.zip  
    rm main.zip  

    LINE_TO_ADD="CheXmask-Database-main/"
    FILE_PATH=".gitignore"
    if ! grep -Fxq "$LINE_TO_ADD" "$FILE_PATH"; then
        echo "$LINE_TO_ADD" >> "$FILE_PATH"
    fi
fi


