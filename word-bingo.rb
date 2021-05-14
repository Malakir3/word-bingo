# ビンゴカードのサイズSを入力(3 <= S <= 1000)
size = gets.to_i

# ビンゴカードの単語Ai,jをS行*S列入力(1 <= Ai,jの文字数 <= 100)
card_array = []
size.times do
  card_array << gets.chomp
end

# 選ばれる単語の個数Nを入力(1 <= N <= 2000)
number = gets.to_i

# 単語wiをN個入力(1 <= wiの文字数 <= 100)
number.times do
  chosen_array << gets.chomp
end

# カードの単語と選ばれた単語との判定

# 結果をyes, noで出力
