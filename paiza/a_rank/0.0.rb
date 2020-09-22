=begin
問題


=end
puts "回答--------------"

input_1 = gets.split(" ")
n = input_1[0].to_i   # じゃんけんを行う回数、1 <= n <= 1000
m = input_1[1].to_i   # あなたが出す指の本数の合計、0 <= m <= 5000
puts "じゃんけんを行う回数:#{n}、指の合計:#{m}"


s = gets    # じゃんけんで相手が出す手, 半角英大文字で "G", "C", "P", 長さn
puts "相手が出す手:" + s


# 相手の手に対して全て勝つとしたら、それぞれの手の最大数
pmax = s.count("G")     # G:グーに対して勝つ、パーの回数
cmax = s.count("P")     # P:パーに対して勝つ、チョキの回数
gmax = s.count("C")     # C:チョキに対して勝つ、グーの回数

puts "パーの最大回数:#{pmax}、チョキの最大回数:#{cmax}、グーの最大回数:#{gmax}"


# n回の勝負について、各手を出す回数を全検索する
#  すべての手の順列を求めなくてもいい
#  最終的に求めるのは最大の勝利回数なので、*組み合わせ*を求める
#  たとえば、4回の勝負のうち、
#  グーの回数:2、チョキの回数:1、パーの回数:1と分かれば
#  指の本数と、最大勝利数は求められる

win_max = 0     # 最大の勝利回数、初期値はゼロ

for pp in 0..n
    for cc in 0..(n - pp)
        gg = n - pp - cc
        puts "パーの回数:#{pp}、チョキの回数:#{cc}、グーの回数:#{gg}"
        
        fingers = pp * 5 + cc * 2    # 指の数の合計を求める
        if fingers == m then
            puts "match!"
            # この回の手で勝つ数を求める
            #  そのために、この回の特定の手の回数と、最大勝利回数の小さいほうを足し合わせる
            #  たとえば：
            #  この回ではパーを3回出して、そのうち最大2回勝つなら > パーの勝利数は2回
            #  この回ではパーを1回出すけど、最大2回勝つなら > パーの勝利数は1回
            win = [pp, pmax].min + [cc, cmax].min + [gg, gmax].min
            puts "machパーの回数:#{pp}、チョキの回数:#{cc}、グーの回数:#{gg}"
            # 最大の勝利数なら入れ替える
            win_max = [win, win_max].max
        end
    end
end

puts win_max

puts "解答--------------"
=begin 


=end