# coding: utf-8
#
# Scrapboxテキスト取得
#

require 'net/https'
require 'uri'

# project = 'Serencast'
# page = '駅データ'

project = ARGV[0] if ARGV[0]
page = ARGV[1] if ARGV[1]

if !project && !page
  STDERR.puts "% getsbdata project page"
  exit
end

uri = URI.parse("https://scrapbox.io/api/pages/#{project}/#{URI.encode(page)}/text")

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

req = Net::HTTP::Get.new(uri.path)
res = http.request(req)

a = res.body.split(/\n/)
a.shift # 先頭のタイトルを除去
a.each { |line|
  next if line =~ /^\s*$/
  next if line =~ /^\s*#/
  next unless line =~ /:/
  puts line
}


