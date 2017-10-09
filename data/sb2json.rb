#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# -*- ruby -*-
#
# ScrapboxデータをJSONに変換
#

require 'net/https'
require 'uri'
require 'json'

project = ARGV[0]
page = ARGV[1]

if !project && !page
  STDERR.puts "% getsbdata project page"
  exit
end

def getsbdata(project,page)
  uri = URI.parse("https://scrapbox.io/api/pages/#{project}/#{URI.encode(page)}/text")

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  req = Net::HTTP::Get.new(uri.path)
  res = http.request(req)

  root = {}
  parents = []
  parents[0] = root
  
  a = res.body.split(/\n/)
  a.shift # 先頭のタイトルを除去
  a.each { |line|
    next if line =~ /^\s*$/
    next if line =~ /^\s*#/
    
    line.sub!(/^(\s*)/,'')
    indent = $&.length
    
    node = {}
    parents[indent+1] = node
    
    if parents[indent]['children'].nil? then
      parents[indent]['children'] = []
    end
    
    if line =~ /^\[\/([^\/]*)\/([^\/]*)\]/
      c = getsbdata($1,$2)
      parents[indent]['children'] << c['children'][0]
    else
      parents[indent]['children'] << node
      if line =~ /^(\s*)\[(.*)\](.*)$/ then
        head = $1
        content = $2
        tail = $3
        a = content.split(/ /)
        if a[0] =~ /http/ then
          node['title'] = a[1..a.length-1].join(' ').force_encoding("utf-8")
          node['url'] = a[0]
        elsif a[a.length-1] =~ /http/
          node['title'] = a[0..a.length-2].join(' ').force_encoding("utf-8")
          node['url'] = a[a.length-1]
        end
      else
        line =~ /^(\s*)(.*)$/
        node['title'] = $2.force_encoding("utf-8")
      end
    end
  }

  return root
end
  
puts getsbdata(project,page)['children'].to_json
