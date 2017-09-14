# coding: utf-8
#
# ltsvに変換
#

ARGF.each { |line|
  line.chomp!
  if line =~ /^(\s*)\[(.*)\](.*)$/ then
    head = $1
    content = $2
    tail = $3
    a = content.split(/ /)
    if a[0] =~ /http/ then
      content = "title:#{a[1..a.length-1].join(' ')}\turl:#{a[0]}"
    elsif a[a.length-1] =~ /http/
      content = "title:#{a[0..a.length-2].join(' ')}\turl:#{a[a.length-1]}"
    end
    line = "#{head}#{content}#{tail}"
  else
    line =~ /^(\s*)(.*)$/
    line = "#{$1}title:#{$2}"
  end
  puts line
}


