#!/bin/bash
wrongArguments() {
    echo "Enter The complete string as copied from the Play Console"
    read ARGUMENT
    isValidArgument $ARGUMENT
}

isValidArgument() {
    if [ $# = 0 ]; then
        echo "No Arguments Supplied"
        wrongArguments
    else
        FULL_KEY=$@
        SHA1_KEY=${FULL_KEY//":"/""}
        KEY=${SHA1_KEY/"SHA1 "/""}
        if [ ${#KEY} != 40 ]; then
            echo "The key does not have a valid length"
            wrongArguments
        else
            clear
            echo This is your DEBUG key:
            keytool -exportcert -alias androiddebugkey -keystore ~/.android/debug.keystore -storepass android 2>/dev/null | openssl sha1 -binary | openssl base64
            echo "Your release key, copied to the clipboard:"
            RESULT=$(echo $KEY | xxd -r -p | base64)
            echo -n $RESULT | xclip -sel clip
            echo $RESULT
        fi
    fi
}
isValidArgument $@
