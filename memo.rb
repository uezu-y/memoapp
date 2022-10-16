
require "csv" 
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
memo_type = gets.to_i 

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください。"
  file = gets.chomp
  puts "メモしたい内容を入力してください。"
  puts "完了したらCtrl + D をおします "
  input = readlines
  CSV.open("#{file}.csv","w") do |tes| 
   tes << input
  end

elsif memo_type == 2
  puts "拡張子を除いたファイルを入力してください。"
  file = gets.chomp
  CSV.foreach("#{file}.csv") do |row|
    p row
  end
  puts "編集したい内容を入力してください。"
  puts "完了したらCtrl + D をおします "
  input = readlines
  CSV.open("#{file}.csv","w") do |rot|
    rot << input
  end
 end

  
  


  
  
