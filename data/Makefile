DIRS = stations comics making gyatv info youtube news menthas radio scrapbox hondana videom masuispicks blog

.PHONY: ${DIRS}

all: ${DIRS}
	make data

# 駅
stations:
	cd Stations; make

# ニュース
news:
	cd News; make

# Scrapbox
scrapbox:
	cd Scrapbox; make

# 本棚
hondana:
	cd Hondana; make

# 漫画
comics:
	-mkdir Comics
	ruby getsbdata.rb Serencast '漫画' | ruby sb2ltsv.rb > Comics/comics.ltsv
# JST
making:
	-mkdir Making
	ruby getsbdata.rb Serencast 'The Making' | ruby sb2ltsv.rb > Making/making.ltsv

# Blog
blog:
	-mkdir Blog
	ruby getsbdata.rb Serencast 'Blog' | ruby sb2ltsv.rb > Blog/blog.ltsv

# GyaTV
gyatv:
	-mkdir GyaTV
	ruby getsbdata.rb Serencast 'GyaTV' | ruby sb2ltsv.rb > GyaTV/gyatv.ltsv

# Info
info:
	-mkdir Info
	ruby getsbdata.rb Serencast 'Info' | ruby sb2ltsv.rb > Info/info.ltsv

# YouTube
youtube:
	-mkdir YouTube
	ruby getsbdata.rb Serencast 'YouTube' | ruby sb2ltsv.rb > YouTube/youtube.ltsv

# Menthas
menthas:
	-mkdir Menthas
	ruby getsbdata.rb Serencast 'Menthas' | ruby sb2ltsv.rb > Menthas/menthas.ltsv

# Masui's Picks
masuispicks:
	-mkdir MasuisPicks
	ruby getsbdata.rb Serencast 'MasuisPicks' | ruby sb2ltsv.rb > MasuisPicks/masuispicks.ltsv

# Radio
radio:
	-mkdir Radio
	ruby getsbdata.rb Serencast 'Radio' | ruby sb2ltsv.rb > Radio/radio.ltsv

# 青空文庫
#aozora:
#	-mkdir Aozora

#	ruby getsbdata.rb Serencast 'Radio' > Radio/radio.ltsv

# Videom
videom:
	cd Videom; make

CONTENTS = \
	MasuisPicks/masuispicks.ltsv \
	Blog/blog.ltsv \
	Videom/videom.ltsv \
	Info/info.ltsv \
	News/news.ltsv \
	Scrapbox/scrapbox.ltsv \
	Hondana/hondana.ltsv \
	Comics/comics.ltsv \
	Stations/stations.ltsv \
	Making/making.ltsv \
	GyaTV/gyatv.ltsv \
	Menthas/menthas.ltsv \
	YouTube/youtube.ltsv \
	Radio/radio.ltsv
#	Aozora/aozora.ltsv \

#	Music/music.ltsv \
#	GIF/gif.ltsv \
#	Photos/photos.ltsv \
#	Aozora/aozora.ltsv \
#	Recipe/allrecipe.ltsv \

data:
	ruby ltsv2json ${CONTENTS} | jq . > ../data.json
#	ruby ltsv2json ${CONTENTS} | /usr/local/bin/jq . > ../data.json

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

