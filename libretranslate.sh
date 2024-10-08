#!/bin/sh

if [ $LIBRETRANSLATE_URL ]
then
    url=$LIBRETRANSLATE_URL
else
    url="https://libretranslate.com/"
fi

if [ $LIBRETRANSLATE_API_KEY ]
then
    api_key_flag="-F \"api_key=${LIBRETRANSLATE_API_KEY}\""
else
    api_key_flag=""
fi

curl_args="--silent --show-error "

fun=$1
if [ $fun == "translate" ]
then
    source=$2
    target=$3
    q=$4
    curl -X POST \
            $curl_args \
            -F "q=$q" \
            -F "source=$source" \
            -F "target=$target" \
	    $api_key_flag \
            "${url}translate"
elif [ $fun == "detect" ]
then
    q=$2
    curl -X POST \
            $curl_args \
            -F "q=$q" \
	    $api_key_flag \
            "${url}detect"
elif [ $fun == "languages" ]
then
    curl -X POST \
            $curl_args \
            "${url}languages"
else
    echo "Invalid function"
    exit 1
fi
