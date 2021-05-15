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
# +++この工程、重複してチェックする事になっているので、無駄が結構あるかも+++
card_ary.each do |card_row|
  card_row.each_with_index do |card_word, i|
    if chosen_ary.include?("#{card_word}")
      card_row[i] = "A"
    end
  end
end

puts card_ary
# 結果をyes, noで出力