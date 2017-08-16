#
# 駅データ.jp
# http://www.ekidata.jp/download/index.htm
#
# * stations.csv を駅データ.jpから取得
# * stations2ltsv で stations.ltsv に変換
#

ltsv: clean
	ruby stations2ltsv stations.csv > stations.ltsv
clean:
	/bin/rm -f stations.ltsv.orig
