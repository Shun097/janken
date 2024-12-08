def janken
    # じゃんけん
    choices = { 0 => "グー", 1 => "チョキ", 2 => "パー", 3 => "終了" }
  
    loop do
      puts "最初はグー、じゃんけん..."
      puts "0→ グー, 1→ チョキ, 2→ パー, 3→ 終了"
      print "あなたの手を選んでください（番号を入力）: "
      player_choice = gets.to_i
  
      
      if player_choice == 3
        puts "じゃんけんを終了します"
        return nil 
      elsif !choices.key?(player_choice)
        puts "無効です。0、1、2入力してください。"
        next
      end
  
     
      computer_choice = rand(3)
      puts "あなた: #{choices[player_choice]}"
      puts "相手: #{choices[computer_choice]}"
  
     
      if player_choice == computer_choice
        puts "結果: あいこです！もう一度！"
        next 
      elsif (player_choice == 0 && computer_choice == 1) ||
            (player_choice == 1 && computer_choice == 2) ||
            (player_choice == 2 && computer_choice == 0)
        puts "結果: あなたの勝ちです！次はあっち向いてホイ！"
        return true
      else
        puts "結果: あなたの負けです。"
        return false 
      end
    end
  end
  
  def acchimuite_hoi
    # あっち向いてホイ
    directions = { 0 => "上", 1 => "下", 2 => "左", 3 => "右" }
  
    puts "あっち向いてホイを始めます！あっち向いて..."
    puts "0: 上, 1: 下, 2: 左, 3: 右"
    print "あなたの指差す方向を選んでください（番号を入力）: "
    player_direction = gets.to_i
  
    if !directions.key?(player_direction)
      puts "無効です。0、1、2、3を入力してください。"
      return false 
    end
  
    computer_direction = rand(4)
    puts "あなた: #{directions[player_direction]}"
    puts "相手: #{directions[computer_direction]}"
  
    if player_direction == computer_direction
      puts "結果: 勝利！ゲーム終了！"
      return true 
    else
      puts "結果: 負け！じゃんけんに戻ります。"
      return false 
    end
  end
  

  loop do
    result = janken
    break if result.nil? 
    if result
      break if acchimuite_hoi
    else
      puts "じゃんけんをやり直します！"
    end
  end
  
  puts "ゲーム終了！お疲れ様でした！"
  