# ビンゴカードのサイズSを入力(3 <= S <= 1000)
size_num = gets.to_i

# ビンゴカードの単語Ai,jをS行*S列入力(1 <= Ai,jの文字数 <= 100)
card_ary = []
size_num.times do
  input = gets.chomp
  # 入力された単語をスペース毎に区切ってrow_aryに格納し、さらにcard_aryに格納
  row_ary = input.split(" ")
  card_ary << row_ary
end

# 選ばれる単語の個数Nを入力(1 <= N <= 2000)
try_num = gets.to_i

# 単語wiをN個入力(1 <= wiの文字数 <= 100)
chosen_ary = []
try_num.times do
  chosen_ary << gets.chomp
end

# card_aryの各単語について、chosen_aryの要素のいずれかと一致していれば、該当するcard_aryの単語を"Y"に置き換える
# +++この工程、重複してチェックする事になっているので、無駄が結構あるかも。mapというメソッド使うといいかも？+++
card_ary.each do |card_row|
  card_row.each_with_index do |card_word, i|
    if chosen_ary.include?("#{card_word}")
      card_row[i] = "Y"
    end
  end
end

# 文字Yが一列に揃ってビンゴしているかを、縦・横・斜め毎に判定する
# 縦の判定
size_num.times do |j|
  judge_ary = []
  size_num.times do |i|
    judge_ary << card_ary[i][j]
  end
  return puts "yes" if judge_ary.all?{ |judge_word| judge_word == "Y" }
end

# 横の判定
card_ary.each do |card_row|
  return puts "yes" if card_row.all?{ |judge_word| judge_word == "Y" }
end

# 斜め(バックスラッシュ"\"の方向)の判定


# 斜め(スラッシュ"/"の方向)の判定

# 結果をyes, noで出力
puts "no"