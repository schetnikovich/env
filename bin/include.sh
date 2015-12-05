function link() {
    if [ -f "$2" ]; then
        echo "File $2 already exists"
        return
    elif [ -d "$2" ]; then
        filename=$(basename $1)
        targetname=$2/$filename
        if [ -e "$targetname" ]; then
            echo "File $targetname already exists"
            return
        fi
    fi 

    ln -s $1 $2 
}
