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

# カードの単語と選ばれた単語との判定

# 結果をyes, noで出力