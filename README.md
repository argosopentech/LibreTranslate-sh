# LibreTranslate-sh
Unix bindings for LibreTranslate

# Examples
```
./libretranslate translate en es "Hello World"
{"translatedText":"Hola Mundo"}
```

```
./libretranslate detect "Hello World this is in English"
[{"confidence":96.0,"language":"en"}]
```

```
./libretranslate languages
[{"code":"en","name":"English"},{"code":"ar","name":"Arabic"},{"code":"zh","name":"Chinese"},{"code":"fr","name":"French"},{"code":"de","name":"German"},{"code":"hi","name":"Hindi"},{"code":"id","name":"Indonesian"},{"code":"ga","name":"Irish"},{"code":"it","name":"Italian"},{"code":"ja","name":"Japanese"},{"code":"ko","name":"Korean"},{"code":"pl","name":"Polish"},{"code":"pt","name":"Portuguese"},{"code":"ru","name":"Russian"},{"code":"es","name":"Spanish"},{"code":"tr","name":"Turkish"},{"code":"vi","name":"Vietnamese"}]
```

# Dependencies
[cURL](https://curl.se/)
```
sudo apt install curl
```