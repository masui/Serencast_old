.PHONY: stations comics making gyatv info youtube

all: data

# 駅
stations:
	cd Stations; make
# 漫画
comics:
	-mkdir Comics
	ruby getsbdata.rb Serencast '漫画' > Comics/comics.ltsv
# JST
making:
	-mkdir Making
	ruby getsbdata.rb Serencast 'The Making' > Making/making.ltsv

# GyaTV
gyatv:
	-mkdir GyaTV
	ruby getsbdata.rb Serencast 'GyaTV' > GyaTV/gyatv.ltsv

# Info
info:
	-mkdir Info
	ruby getsbdata.rb Serencast 'Info' > Info/info.ltsv

# YouTube
youtube:
	-mkdir YouTube
	ruby getsbdata.rb Serencast 'YouTube' > YouTube/youtube.ltsv

CONTENTS = \
	Info/info.ltsv \
	Comics/comics.ltsv \
	Stations/stations.ltsv \
	Making/making.ltsv \
	GyaTV/gyatv.ltsv \
	YouTube/youtube.ltsv

#	News/news.ltsv \
#	Menthas/menthas.ltsv \
#	Music/music.ltsv \
#	Radio/radio.ltsv \
#	GIF/gif.ltsv \
#	Photos/photos.ltsv \
#	Aozora/aozora.ltsv \
#	Recipe/allrecipe.ltsv \

data:
	ruby ltsv2json ${CONTENTS} | /usr/local/bin/jq . > ../data.json

# 駅
# 青空



#	-mkdir Test
#	ruby getsbdata.rb Serencast '駅データ' > Test/junk.ltsv
# -*- coding: utf-8 -*-
#
# news.ltsv, aozora.ltsvなどからjson生成
#
#
#CONTENTS = \
#	News/news.ltsv \
#	Info/info.ltsv \
#	Menthas/menthas.ltsv \
#	Music/music.ltsv \
#	GyaTV/gyatv.ltsv \
#	Radio/radio.ltsv \
#	YouTube/youtube.ltsv \
#	GIF/gif.ltsv \
#	Comics/comics.ltsv \
#	Photos/photos.ltsv \
#	Aozora/aozora.ltsv \
#	Recipe/allrecipe.ltsv \
#	Stations/stations.ltsv
#
##	Volume/volume.ltsv \
##	Geta/geta.ltsv \
##	TED/ted.ltsv \
##	Music2/music2.ltsv 
##	Bookmarks/bookmarks.ltsv \
#
#json: getnews data
#getnews:
#	cd News; make
#data:
#	ruby ltsv2json ${CONTENTS} | /usr/local/bin/jq . > data.json

