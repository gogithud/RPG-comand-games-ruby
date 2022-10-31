en = 10000
atack = 0
atack_1 = 0
hp = 0
hp_1 = 100
teki_hp = 0
tekihp = 100
teki_atack = 0
kensetting = 0
kenhp = 100
ken = 0
atackken = ["1", "2", "3"]
mesersh = ["よし！冒険に出る準備をしよう！", "あなたは、冒険に出る為に、武器を用意する必要があります。あなたは今10000円持っています。お金の限度を超えないようにこつけてお買い物をして下さい。１〜3", "次に、盾を買いましょう.1か２を入力しなさい", "あなたは、1時間歩いてある洞窟に入ります。そこには、何と大きな蜘蛛がいました。"]
whichi = ["1.木のけん100円", "2.鉄のけん300円", "3.黒曜石のけん400円", ]
whichi_1 = ["1.木の盾100円", "2.鉄の盾200円" ]
whichi_2 = ["1.けんで攻撃", "2.下がる"]
puts "冒険に出る時間だ！1か２で答えなさい！"
puts "1.冒険にでない"
puts "2.冒険にでる"
nunber = gets.to_i
if nunber == 2
    40.times do
        print "--"
    end
    puts mesersh[0]
    puts mesersh[1]
    whichi.each do |whichi|
     puts whichi
    end
    nunver_1 = gets.to_i
    if nunver_1 == 1
     en = 10000 - 100
     puts "木の剣を買い残りのお金は、"
     puts en
     ken = 1
     elsif nunver_1 == 2
     en = 10000 - 300
      puts "鉄の剣を買い残りのお金は、"
     puts en
     ken = 2
     elsif　nunver_1 == 3
     en  = 10000 - 400
     puts "黒曜石を買い残りのお金は、"
     puts en
     ken = 3
    end
    40.times do
        print "--"
    end
    puts mesersh[2]
    whichi_1.each do |whichi_1|
     puts whichi_1
    end
    puts mesersh[3]
    teki_name = "蜘蛛"
   while tekihp and hp_1 > 0  do
     kensetting = 3
     atack = 1
     kenminas = 1
     puts teki_name + "が、襲いかかった。"
     puts "ダメージが減った。"
     hp = hp_1 - rand(1...5)
     puts hp
     if 0 > hp_1
        teki_hp = 0
     end
     kenhps = kenhp - kenminas
     hp_1 = hp
     puts "君のばんだ！"
     whichi_2.each do |whichi_2|
      puts whichi_2
     end
     atack_1 = gets.to_i
     if atack_1 == 1
       teki_hp = tekihp - rand(1...5)
       puts "敵は、"
       puts teki_hp
       puts "減った"
       teki_hp = tekihp
       if 0 > tekihp
        puts "勝ったぞ！"
       end
     end
     if kenhps == 0
        teki_hp = 0
     end
   end
end
if hp_1 == 0
    puts "end"
end
if nunber == 1
    puts "残念です、、、"
end
