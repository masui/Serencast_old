#!/usr/bin/env ruby
# -*- ruby -*-
#
# ltsvデータをJSONに変換
#

require 'json'

root = {}
parents = []
parents[0] = root

category = ''
oldindent = 0

ARGF.each { |line|
  line.chomp!
  next if line =~ /^\s*$/m
  next if line =~ /^#/m

  line.sub!(/^(\s*)/,'')
  indent = $&.length

  node = {}
  parents[indent+1] = node
  
  if parents[indent]['children'].nil? then
    parents[indent]['children'] = []
  end

  # if indent > oldindent then
  #   nodex = {}
  #   nodex['title'] = '▼▼▼▼▼▼▼▼'
  #   parents[indent]['children'] << nodex
  # end
  
  parents[indent]['children'] << node
  line.split(/\t/).each { |entry|
    entry =~ /^([a-zA-Z_]+):(\s*)(.*)$/
    node[$1] = $3
    if $1 == 'title'
      category = $3
    end
  }

  oldindent = indent
}

puts root['children'].to_json
