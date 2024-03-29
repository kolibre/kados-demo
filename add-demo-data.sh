#!/bin/bash

URL="http://127.0.0.1:3000"

i=0
while true
do
    curl -s $URL/users 2>&1 >> /dev/null && break
    sleep 1
    i=$((i+1))
    if [ $i == 10 ];
    then
        echo "service is not responding, exiting..."
        exit 1
    fi
done

echo ""
echo "-----------------"
echo "Adding users"
echo "-----------------"
echo ""
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"kolibre","password":"kolibre","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user1","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user2","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user3","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user4","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user5","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user6","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user7","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user8","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user9","password":"password","log":true}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/users --data '{"username":"user10","password":"password","log":true}'

echo ""
echo "---------------"
echo "Adding contents"
echo "---------------"
echo ""
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/contents --data '{"category_id":1,"daisy_format_id":1,"title":"A light Man"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/contents --data '{"category_id":1,"daisy_format_id":2,"title":"Are you ready?"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/contents --data '{"category_id":1,"daisy_format_id":1,"title":"Climbing the Highest Mountain"}'

echo ""
echo "-----------------------"
echo "Adding content metadata"
echo "-----------------------"
echo ""
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:creator","value":"Henry James"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:date","value":"2009-06-22"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:format","value":"Daisy 2.02"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:identifier","value":"Unknown"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:language","value":"en"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:publisher","value":"DC"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:source","value":"The galaxy vol. 8 no. 1 (July 1869),   pages 49-68"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:subject","value":"Relationships, betrayal"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"dc:title","value":"A light Man"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:charset","value":"utf-8"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:depth","value":"1"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:files","value":"36"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:footnotes","value":"0"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:generator","value":"EasePublisher 2.13 Build 163 # 044FS2212172434"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:kbytesize","value":"35930"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:maxpagenormal","value":"26"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:multimediatype","value":"audioNcc"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:narrator","value":"OM"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:pagefront","value":"0"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:pagenormal","value":"26"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:pagespecial","value":"0"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:prodnotes","value":"0"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:setinfo","value":"1 of 1"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:sidebars","value":"0"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:sourcedate","value":"2009-07-18"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:sourceedition","value":"1."}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:sourcepublisher","value":"The galaxy vol. 8 no. 1 (July 1869),   pages 49-68"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:sourcerights","value":"Gutenberg project"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:sourcetitle","value":"A light man"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:tocitems","value":"43"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"ncc:totaltime","value":"01:27:15"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"prod:ep_update","value":""}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":1,"key":"prod:last_used_id","value":""}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":2,"key":"dc:creator","value":"WikiHow"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":2,"key":"dc:date","value":"2009-04-26"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":2,"key":"dc:format","value":"ANSI/NIZO Z39.86-2005"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":2,"key":"dc:identifier","value":"5078727220897727718"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":2,"key":"dc:language","value":"en-IN"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":2,"key":"dc:publisher","value":"DAISY India"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":2,"key":"dc:subject","value":"A Short Manual for Disaster Management"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":2,"key":"dc:title","value":"ARE YOU READY?"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"dc:title","value":"Climbing the Highest Mountain"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"dc:creator","value":"Per Sennels"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"dc:date","value":"2003-05-08"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"dc:format","value":"Daisy 2.02"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"dc:identifier","value":"skipdemo-amsterdam"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"dc:language","value":"en"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"dc:publisher","value":"DAISY Consortium"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"dc:subject","value":"Mountains"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:pagefront","value":"0"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:pagenormal","value":"8"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:pagespecial","value":"0"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:setinfo","value":"1 of 1"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:depth","value":"3"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:maxpagenormal","value":"8"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:multimediatype","value":"audioNcc"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:narrator","value":"Joan Dahm-Simonsen"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:producer","value":"Huseby kompetansesenter"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:generator","value":"Skippability Tweaker 0.1.53"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:sidebars","value":"4"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:prodnotes","value":"2"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:footnotes","value":"1"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:totaltime","value":"00:05:27"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:charset","value":"windows-1252"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:files","value":"20"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:kbytesize","value":"1975"}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/content_metadata --data '{"content_id":3,"key":"ncc:tocitems","value":"23"}'

echo ""
echo "--------------------"
echo "Adding content audio"
echo "--------------------"
echo ""
curl --header "Accept: application/json" --request POST $URL/contents/1/audio -F "size=44724" -F "length=6315" -F "mime_type=audio/ogg" -F "audio=@./data/contents/1/audios/content_1.ogg" 
curl --header "Accept: application/json" --request POST $URL/contents/2/audio -F "size=16139" -F "length=5201" -F "mime_type=audio/ogg" -F "audio=@./data/contents/2/audios/content_2.ogg" 
curl --header "Accept: application/json" --request POST $URL/contents/3/audio -F "size=20335" -F "length=1945" -F "mime_type=audio/ogg" -F "audio=@./data/contents/3/audios/content_3.ogg" 

echo ""
echo "------------------------"
echo "Adding content resources"
echo "------------------------"
echo ""
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=01_A_light_Man.mp3" -F "bytes=45531" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/01_A_light_Man.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=02_Epigraph.mp3" -F "bytes=176822" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/02_Epigraph.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=03_April_4th_1857.mp3" -F "bytes=1540205" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/03_April_4th_1857.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=04_7th_.mp3" -F "bytes=1204845" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/04_7th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=05_D_the_14th_.mp3" -F "bytes=8934948" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/05_D_the_14th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=06_19th_.mp3" -F "bytes=2863908" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/06_19th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=07_22d_.mp3" -F "bytes=4464640" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/07_22d_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=08_26th_.mp3" -F "bytes=1939748" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/08_26th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=09_May_3d_.mp3" -F "bytes=1940662" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/09_May_3d_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=10_8th_.mp3" -F "bytes=2005028" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/10_8th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=11_13th_.mp3" -F "bytes=741302" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/11_13th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=12_18th_.mp3" -F "bytes=691565" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/12_18th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=13_20th_.mp3" -F "bytes=2834468" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/13_20th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=14_21st_.mp3" -F "bytes=1639497" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/14_21st_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=15_22d_.mp3" -F "bytes=451657" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/15_22d_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=16_23d_.mp3" -F "bytes=4836205" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/16_23d_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=17_24th_.mp3" -F "bytes=348342" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/1/resources/17_24th_.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=er_book_info.xml" -F "bytes=1108" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/er_book_info.xml"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0001.smil" -F "bytes=1086" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0001.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0002.smil" -F "bytes=2128" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0002.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0003.smil" -F "bytes=6888" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0003.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0004.smil" -F "bytes=4667" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0004.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0005.smil" -F "bytes=27641" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0005.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0006.smil" -F "bytes=10464" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0006.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0007.smil" -F "bytes=12533" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0007.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0008.smil" -F "bytes=6417" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0008.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0009.smil" -F "bytes=6967" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0009.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth000a.smil" -F "bytes=6154" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth000a.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth000b.smil" -F "bytes=2248" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth000b.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth000c.smil" -F "bytes=2417" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth000c.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth000d.smil" -F "bytes=7990" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth000d.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth000e.smil" -F "bytes=5311" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth000e.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth000f.smil" -F "bytes=2517" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth000f.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0010.smil" -F "bytes=17455" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0010.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=icth0011.smil" -F "bytes=2217" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/icth0011.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=master.smil" -F "bytes=1866" -F "mime_type=text/plain" -F "resource=@./data/contents/1/resources/master.smil"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=ncc.html" -F "bytes=5759" -F "mime_type=text/html" -F "resource=@./data/contents/1/resources/ncc.html"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=smil10.dtd" -F "bytes=7496" -F "mime_type=text/html" -F "resource=@./data/contents/1/resources/smil10.dtd"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=xhtml-lat1.ent" -F "bytes=11789" -F "mime_type=text/html" -F "resource=@./data/contents/1/resources/xhtml-lat1.ent"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=xhtml-special.ent" -F "bytes=4144" -F "mime_type=text/html" -F "resource=@./data/contents/1/resources/xhtml-special.ent"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=xhtml-symbol.ent" -F "bytes=14127" -F "mime_type=text/html" -F "resource=@./data/contents/1/resources/xhtml-symbol.ent"
curl --header "Accept: application/json" --request POST $URL/contents/1/resource -F "file_name=xhtml1-transitional.dtd" -F "bytes=33441" -F "mime_type=text/html" -F "resource=@./data/contents/1/resources/xhtml1-transitional.dtd"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=AreYouReadyV3.xml" -F "bytes=89235" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/AreYouReadyV3.xml"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=dtbookbasic.css" -F "bytes=12801" -F "mime_type=text/x-c" -F "resource=@./data/contents/2/resources/dtbookbasic.css"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image1.jpg" -F "bytes=6168" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image1.jpg"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image11.jpg" -F "bytes=5586" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image11.jpg"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image12.jpg" -F "bytes=4826" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image12.jpg"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image13.jpg" -F "bytes=12586" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image13.jpg" 
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image14.jpg" -F "bytes=17587" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image14.jpg"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image2.jpg" -F "bytes=8577" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image2.jpg"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image3.jpg" -F "bytes=5981" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image3.jpg"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image4.jpg" -F "bytes=4720" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image4.jpg"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=image5.jpg" -F "bytes=6589" -F "mime_type=image/jpeg" -F "resource=@./data/contents/2/resources/image5.jpg"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen.ncx" -F "bytes=18280" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen.ncx"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen.opf" -F "bytes=8897" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen.opf"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0001.mp3" -F "bytes=32757" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0001.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0001.smil" -F "bytes=882" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0001.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0002.mp3" -F "bytes=215823" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0002.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0002.smil" -F "bytes=2716" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0002.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0003.mp3" -F "bytes=285257" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0003.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0003.smil" -F "bytes=5457" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0003.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0004.mp3" -F "bytes=228832" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0004.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0004.smil" -F "bytes=1477" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0004.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0005.mp3" -F "bytes=1865456" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0005.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0005.smil" -F "bytes=10463" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0005.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0006.mp3" -F "bytes=735399" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0006.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0006.smil" -F "bytes=4470" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0006.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0007.mp3" -F "bytes=105482" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0007.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0007.smil" -F "bytes=1438" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0007.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0008.mp3" -F "bytes=95294" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0008.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0008.smil" -F "bytes=1491" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0008.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0009.mp3" -F "bytes=794801" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0009.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0009.smil" -F "bytes=7443" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0009.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0010.mp3" -F "bytes=258299" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0010.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0010.smil" -F "bytes=2873" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0010.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0011.mp3" -F "bytes=249835" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0011.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0011.smil" -F "bytes=2192" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0011.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0012.mp3" -F "bytes=225071" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0012.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0012.smil" -F "bytes=2285" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0012.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0013.mp3" -F "bytes=1677374" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0013.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0013.smil" -F "bytes=11510" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0013.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0014.mp3" -F "bytes=372872" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0014.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0014.smil" -F "bytes=2480" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0014.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0015.mp3" -F "bytes=439327" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0015.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0015.smil" -F "bytes=3243" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0015.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0016.mp3" -F "bytes=121469" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0016.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0016.smil" -F "bytes=1691" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0016.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0017.mp3" -F "bytes=2289110" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0017.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0017.smil" -F "bytes=17070" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0017.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0018.mp3" -F "bytes=1220493" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0018.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0018.smil" -F "bytes=9825" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0018.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0019.mp3" -F "bytes=181185" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0019.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0019.smil" -F "bytes=1640" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0019.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0020.mp3" -F "bytes=1113756" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0020.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0020.smil" -F "bytes=7023" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0020.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0021.mp3" -F "bytes=446694" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0021.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0021.smil" -F "bytes=3453" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0021.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0022.mp3" -F "bytes=191216" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0022.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0022.smil" -F "bytes=1492" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0022.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0023.mp3" -F "bytes=1083977" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0023.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0023.smil" -F "bytes=6373" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0023.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0024.mp3" -F "bytes=354690" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0024.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0024.smil" -F "bytes=2690" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0024.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0025.mp3" -F "bytes=193410" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0025.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0025.smil" -F "bytes=1835" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0025.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0026.mp3" -F "bytes=112222" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0026.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0026.smil" -F "bytes=1493" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0026.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0027.mp3" -F "bytes=605466" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0027.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0027.smil" -F "bytes=4580" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0027.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0028.mp3" -F "bytes=136516" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0028.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0028.smil" -F "bytes=1430" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0028.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0029.mp3" -F "bytes=92943" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0029.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0029.smil" -F "bytes=1439" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0029.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0030.mp3" -F "bytes=112535" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0030.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0030.smil" -F "bytes=1493" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0030.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0031.mp3" -F "bytes=1319863" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0031.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0031.smil" -F "bytes=10153" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0031.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0032.mp3" -F "bytes=584150" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0032.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0032.smil" -F "bytes=5658" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0032.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0033.mp3" -F "bytes=256104" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0033.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0033.smil" -F "bytes=1850" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0033.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0034.mp3" -F "bytes=284630" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/speechgen0034.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=speechgen0034.smil" -F "bytes=2480" -F "mime_type=text/plain" -F "resource=@./data/contents/2/resources/speechgen0034.smil"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=tpbnarrator.res" -F "bytes=9458" -F "mime_type=text/html" -F "resource=@./data/contents/2/resources/tpbnarrator.res"
curl --header "Accept: application/json" --request POST $URL/contents/2/resource -F "file_name=tpbnarrator_res.mp3" -F "bytes=117656" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/2/resources/tpbnarrator_res.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=ncconlydemo.html" -F "bytes=3642" -F "mime_type=application/xml" -F "resource=@./data/contents/2/resources/ncconlydemo.html"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0008.smil" -F "bytes=2714" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/bagw0008.smil"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0017.mp3" -F "bytes=124760" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/3/resources/bagw0017.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0019.mp3" -F "bytes=180558" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/3/resources/bagw0019.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0006.smil" -F "bytes=2765" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/bagw0006.smil"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw001B.mp3" -F "bytes=285570" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/3/resources/bagw001B.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0014.mp3" -F "bytes=391836" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/3/resources/bagw0014.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0007.smil" -F "bytes=1567" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/bagw0007.smil"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0018.mp3" -F "bytes=65515" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/3/resources/bagw0018.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw001A.mp3" -F "bytes=129776" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/3/resources/bagw001A.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0005.smil" -F "bytes=1130" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/bagw0005.smil"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=master.smil" -F "bytes=1196" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/master.smil"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0003.smil" -F "bytes=2419" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/bagw0003.smil"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=ncc.html" -F "bytes=4296" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/ncc.html"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0002.smil" -F "bytes=1334" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/bagw0002.smil"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=narrator_1.css" -F "bytes=5204" -F "mime_type=text/plain" -F "resource=@./data/contents/3/resources/narrator_1.css"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=default_1.css" -F "bytes=5053" -F "mime_type=text/plain" -F "resource=@./data/contents/3/resources/default_1.css"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw001C.mp3" -F "bytes=451552" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/3/resources/bagw001C.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0001.smil" -F "bytes=1728" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/bagw0001.smil"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw001D.mp3" -F "bytes=335882" -F "mime_type=audio/mpeg" -F "resource=@./data/contents/3/resources/bagw001D.mp3"
curl --header "Accept: application/json" --request POST $URL/contents/3/resource -F "file_name=bagw0004.smil" -F "bytes=3047" -F "mime_type=application/xml" -F "resource=@./data/contents/3/resources/bagw0004.smil"

echo ""
echo "-----------------------------"
echo "Adding content to bookshelves"
echo "-----------------------------"
echo ""
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/user_contents --data '{"content_id":1,"user_id":1}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/user_contents --data '{"content_id":2,"user_id":1}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/user_contents --data '{"content_id":3,"user_id":1}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/user_contents/add --data '{"content_id":1, "users":[1,2,3,4,5,6]}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/user_contents/add --data '{"content_id":2, "users":[1,2,3,4,5,6]}'
curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/user_contents/add --data '{"content_id":3, "users":[1,2,3,4,5,6]}'
# curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/user_contents/add --data '{"content_id":1}'
# curl --header "Accept: application/json" --header "Content-type: application/json" --request POST $URL/user_contents/remove --data '{"content_id":1}'


# TODO: insert announcements and questions thought the REST API when it's implemented.
echo ""
echo "------------------"
echo "Apply data fixture"
echo "------------------"
echo ""
docker-compose exec postgres psql -U postgres kobra -f fixture.sql

# Add announcements
# announcements = Announcement.create([
#     {category: 'INFORMATION', priority: 'MEDIUM'},
#     {category: 'INFORMATION', priority: 'LOW'},
# ])
# announcement_texts = AnnouncementText.create([
#     {announcement_id: 1, text: 'Welcome to the Kolibre Daisy Online demo service.', language_id: '1'},
#     {announcement_id: 1, text: 'Välkommen till Kolibres Daisy Online demo tjänst.', language_id: '2'},
#     {announcement_id: 2, text: 'Feel free to use and explore this service. Remember to mark the announcements as read when you have read them.', language_id: '1'},
#     {announcement_id: 2, text: 'Du kan fritt använda och utforska denna tjänst. Kom ihåg att markera meddelandena som lästa efter att du läst dem.', language_id: '2'},
# ])
# announcement_audios = AnnouncementAudio.create([
#     {announcement_text_id: 1, size: 24677, length: 2594},
#     {announcement_text_id: 2, size: 27392, length: 2880},
#     {announcement_text_id: 3, size: 53310, length: 5680},
#     {announcement_text_id: 4, size: 63226, length: 6952},
# ])
# user_announcements = UserAnnouncement.create([
#     {user_id: 1, announcement_id: 1},
#     {user_id: 1, announcement_id: 2},
# ])

# Add questions
# questions = Question.create([
#     {id: 1, parent: 0, question_type_id: 1}, # MAIN MENU
#     {id: 2, parent: 1, question_type_id: 3}, # search option
#     {id: 3, parent: 1, question_type_id: 3}, # browse option
#     {id: 4, parent: 1, question_type_id: 3}, # feedback option
#     {id: 20, parent: 2, question_type_id: 1}, # SEARCH MENU
#     {id: 21, parent: 20, question_type_id: 3}, # search by author
#     {id: 22, parent: 20, question_type_id: 3}, # search by title
#     {id: 23, parent: 21, question_type_id: 2}, # input for search by author
#     {id: 24, parent: 22, question_type_id: 2}, # input for search by title
#     {id: 25, parent: 23, question_type_id: 4}, # endpoint for search by author
#     {id: 26, parent: 24, question_type_id: 4}, # endpoint for search by title
#     {id: 30, parent: 3, question_type_id: 1}, # BROWSE MENU
#     {id: 31, parent: 30, question_type_id: 3}, # browse by title
#     {id: 32, parent: 30, question_type_id: 3}, # browse by daisy2
#     {id: 33, parent: 30, question_type_id: 3}, # browse by daisy3
#     {id: 34, parent: 31, question_type_id: 4}, # endpoint for browse by title
#     {id: 35, parent: 32, question_type_id: 4}, # endpoint for browse by daisy2
#     {id: 36, parent: 33, question_type_id: 4}, # endpoint for browse by daisy3
#     {id: 40, parent: 4, question_type_id: 1}, # FEEDBACK MENU (rate)
#     {id: 41, parent: 4, question_type_id: 2}, # FEEDBACK MENU (custom feedback)
#     {id: 42, parent: 40, question_type_id: 3}, # rate option excellent
#     {id: 43, parent: 40, question_type_id: 3}, # rate option good
#     {id: 44, parent: 40, question_type_id: 3}, # rate option fair
#     {id: 45, parent: 40, question_type_id: 3}, # rate option poor
#     {id: 46, parent: 41, question_type_id: 5}, # endpoint for feedback
#     {id: 47, parent: 42, question_type_id: 5}, # endpoint for feedback
#     {id: 48, parent: 43, question_type_id: 5}, # endpoint for feedback
#     {id: 49, parent: 44, question_type_id: 5}, # endpoint for feedback
#     {id: 50, parent: 45, question_type_id: 5}, # endpoint for feedback
# ])
# Insert qith raw since the above failed
# NOTE: only for SQLite3
# connection = ActiveRecord::Base.connection()
# sql = <<-EOL
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (1,0,1,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (2,1,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (3,1,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (4,1,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (20,2,1,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (21,20,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (22,20,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (23,21,2,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (24,22,2,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (25,23,4,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (26,24,4,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (30,3,1,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (31,30,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (32,30,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (33,30,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (34,31,4,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (35,32,4,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (36,33,4,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (40,4,1,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (41,4,2,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (42,40,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (43,40,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (44,40,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (45,40,3,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (46,41,5,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (47,42,5,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (48,43,5,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (49,44,5,datetime('now'),datetime('now'));
#   INSERT INTO questions (id, parent_id, question_type_id, updated_at, created_at) VALUES (50,45,5,datetime('now'),datetime('now'));
# EOL
# sql.split(';').each do |s|
#   connection.execute(s.strip) unless s.strip.empty?
# end
# question_inputs = QuestionInput.create([
#     {question_id: 1},
#     {question_id: 20},
#     {question_id: 23, text_alphanumeric: 1},
#     {question_id: 24, text_alphanumeric: 1},
#     {question_id: 30},
#     {question_id: 40},
#     {question_id: 41, text_alphanumeric: 1},
# ])
# question_texts = QuestionText.create([
#     {language_id: 1, text: 'What would you like to do?'},
#     {language_id: 2, text: 'Vad vill du göra?'},
#     {language_id: 1, text: 'Search the library.'},
#     {language_id: 2, text: 'Söka i biblioteket.'},
#     {language_id: 1, text: 'Browse the library.'},
#     {language_id: 2, text: 'Utforska biblioteket.'},
#     {language_id: 1, text: 'Give feedback.'},
#     {language_id: 2, text: 'Ge feedback.'},
#     {language_id: 1, text: 'What do you want to search by?'},
#     {language_id: 2, text: 'Vad vill du söka enligt?'},
#     {language_id: 1, text: 'Search by author.'},
#     {language_id: 2, text: 'Sök bland författare.'},
#     {language_id: 1, text: 'Search by title.'},
#     {language_id: 2, text: 'Sök bland titel.'},
#     {language_id: 1, text: 'Author keywords:'},
#     {language_id: 2, text: 'Sökord författare:'},
#     {language_id: 1, text: 'Title keywords:'},
#     {language_id: 2, text: 'Sökord titel:'},
#     {language_id: 1, text: 'How do you want to browse the library?'},
#     {language_id: 2, text: 'Hur vill du utforska biblioteket?'},
#     {language_id: 1, text: 'Browse by title.'},
#     {language_id: 2, text: 'Utforska bland titlar.'},
#     {language_id: 1, text: 'Browse by Daisy 2 content format.'},
#     {language_id: 2, text: 'Utforska bland Daisy 2 filformat.'},
#     {language_id: 1, text: 'Browse by Daisy 3 content format.'},
#     {language_id: 2, text: 'Utforska bland Daisy 3 filformat.'},
#     {language_id: 1, text: 'How would you rate this service?'},
#     {language_id: 2, text: 'Hur skulle du betygsätta denna tjänst?'},
#     {language_id: 1, text: 'Optional feedback?'},
#     {language_id: 2, text: 'Frivillig feedback?'},
#     {language_id: 1, text: 'Excellent.'},
#     {language_id: 2, text: 'Utmärkt.'},
#     {language_id: 1, text: 'Good.'},
#     {language_id: 2, text: 'Bra.'},
#     {language_id: 1, text: 'Fair.'},
#     {language_id: 2, text: 'Dålig.'},
#     {language_id: 1, text: 'Poor.'},
#     {language_id: 2, text: 'Usel.'},
#     {language_id: 1, text: 'Thank you for your feedback.'},
#     {language_id: 2, text: 'Tack för din feedback.'},
# ])
# question_audios = QuestionAudio.create([
#     {question_text_id: 1, size: 13817, length: 1303},
#     {question_text_id: 2, size: 14634, length: 1049},
#     {question_text_id: 3, size: 13649, length: 1016},
#     {question_text_id: 4, size: 14255, length: 1358},
#     {question_text_id: 5, size: 13414, length: 971},
#     {question_text_id: 6, size: 14323, length: 1427},
#     {question_text_id: 7, size: 10317, length: 776},
#     {question_text_id: 8, size: 11936, length: 865},
#     {question_text_id: 9, size: 16948, length: 1731},
#     {question_text_id: 10, size: 15906, length: 1495},
#     {question_text_id: 11, size: 12455, length: 920},
#     {question_text_id: 12, size: 12857, length: 1475},
#     {question_text_id: 13, size: 10729, length: 1016},
#     {question_text_id: 14, size: 11504, length: 1092},
#     {question_text_id: 15, size: 11760, length: 926},
#     {question_text_id: 16, size: 13190, length: 1380},
#     {question_text_id: 17, size: 9871, length: 972},
#     {question_text_id: 18, size: 9975, length: 997},
#     {question_text_id: 19, size: 22087, length: 1985},
#     {question_text_id: 20, size: 21288, length: 2002},
#     {question_text_id: 21, size: 9715, length: 972},
#     {question_text_id: 22, size: 13854, length: 1339},
#     {question_text_id: 23, size: 19397, length: 2018},
#     {question_text_id: 24, size: 20361, length: 2267},
#     {question_text_id: 25, size: 19313, length: 2052},
#     {question_text_id: 26, size: 21900, length: 2292},
#     {question_text_id: 27, size: 17356, length: 1507},
#     {question_text_id: 28, size: 21999, length: 2198},
#     {question_text_id: 29, size: 11525, length: 1027},
#     {question_text_id: 30, size: 15271, length: 1219},
#     {question_text_id: 31, size: 8239, length: 635},
#     {question_text_id: 32, size: 9086, length: 662},
#     {question_text_id: 33, size: 5465, length: 324},
#     {question_text_id: 34, size: 8102, length: 447},
#     {question_text_id: 35, size: 7485, length: 394},
#     {question_text_id: 36, size: 6234, length: 424},
#     {question_text_id: 37, size: 5358, length: 318},
#     {question_text_id: 38, size: 7797, length: 429},
#     {question_text_id: 39, size: 15523, length: 1368},
#     {question_text_id: 40, size: 14041, length: 1320},
# ])
# question_question_texts = QuestionQuestionText.create([
#     {question_id: 1, question_text_id: 1},
#     {question_id: 1, question_text_id: 2},
#     {question_id: 2, question_text_id: 3},
#     {question_id: 2, question_text_id: 4},
#     {question_id: 3, question_text_id: 5},
#     {question_id: 3, question_text_id: 6},
#     {question_id: 4, question_text_id: 7},
#     {question_id: 4, question_text_id: 8},
#     {question_id: 20, question_text_id: 9},
#     {question_id: 20, question_text_id: 10},
#     {question_id: 21, question_text_id: 11},
#     {question_id: 21, question_text_id: 12},
#     {question_id: 22, question_text_id: 13},
#     {question_id: 22, question_text_id: 14},
#     {question_id: 23, question_text_id: 15},
#     {question_id: 23, question_text_id: 16},
#     {question_id: 24, question_text_id: 17},
#     {question_id: 24, question_text_id: 18},
#     {question_id: 30, question_text_id: 19},
#     {question_id: 30, question_text_id: 20},
#     {question_id: 31, question_text_id: 21},
#     {question_id: 31, question_text_id: 22},
#     {question_id: 32, question_text_id: 23},
#     {question_id: 32, question_text_id: 24},
#     {question_id: 33, question_text_id: 25},
#     {question_id: 33, question_text_id: 26},
#     {question_id: 40, question_text_id: 27},
#     {question_id: 40, question_text_id: 28},
#     {question_id: 41, question_text_id: 29},
#     {question_id: 41, question_text_id: 30},
#     {question_id: 42, question_text_id: 31},
#     {question_id: 42, question_text_id: 32},
#     {question_id: 43, question_text_id: 33},
#     {question_id: 43, question_text_id: 34},
#     {question_id: 44, question_text_id: 35},
#     {question_id: 44, question_text_id: 26},
#     {question_id: 45, question_text_id: 37},
#     {question_id: 45, question_text_id: 38},
#     {question_id: 46, question_text_id: 39},
#     {question_id: 46, question_text_id: 40},
#     {question_id: 47, question_text_id: 39},
#     {question_id: 47, question_text_id: 40},
#     {question_id: 48, question_text_id: 39},
#     {question_id: 48, question_text_id: 40},
#     {question_id: 49, question_text_id: 39},
#     {question_id: 49, question_text_id: 40},
#     {question_id: 50, question_text_id: 39},
#     {question_id: 50, question_text_id: 40},
# ])
