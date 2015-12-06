
function link() {
    if [ -f "$2" ]; then

        if [ "$2" -ef "$1" ]; then
            echo "✓ File $2 is valid"
        else
            echo "✗ File $2 already exists"
        fi
        
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
    echo "★ Link $2 created"
}
