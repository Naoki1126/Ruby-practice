#Procは、defをインスタンスにしたもので、Proc.newメソッドによってdefのインスタンス変数を生成できます。

# p1 = Proc.new do |val|
#     p "arg=" + val.to_s
# end
#   p1.call(1)    #=>"arg=1"
#   p2 = p1
#   p2.call(100) #=>"arg=100"

# #lambdaはProcとほぼ同じ挙動をする
# l1 = lambda do |val|
#     p "arg=" + val.to_s
#   end
#   l1.call(1)    #=>"arg=1"
#   l2 = l1
#   l2.call(100) #=>"arg=100"

#Procとlambdaの違い
#lambdaは引数の数をチェックしているため、呼び出し時に引数の数が合わないとエラーになる
#Procは呼び出し時に引数の数が合わなければnilが引数に代入される。

# p1 = Proc.new do |val1, val2|
#       p "arg=" + val1.to_s + " , " + val2.to_s
#      end
# l1 = lambda do |val1, val2|
#        p "arg=" + val1.to_s + " , " + val2.to_s
#      end
#   p1.call(1)    #=> "arg=1 , "
#   l1.call(1)  #->  wrong number of arguments (given 1, expected 2) 引数の数違いによるarugument error 


#returnするときの挙動が違う
#Procのreturnは、callの呼び出し元でreturnを実行したことと見なされます。
#lambdaのreturnは、callの呼び出し先、つまりlambda自身のreturnであるものと見なされます。

# def proc_def
#     p1 = Proc.new { return p "proc's return"}
#     p1.call
#     p "proc_def's end"
#   end
   
#   def lambda_def
#     l1 = lambda{ return p "lambda's return"}
#     l1.call
#     p "lambda_def's end"
#   end
   
#   proc_def
#   #実行結果
#   #=>"proc's return

#   lambda_def
  #実行結果
  #lambda's return
  #lambda_def's end

#proc_defでは、Procでreturnした時点で、proc_defが終了していますね。

#対して、lambda_defでは、lambdaがreturnしても、lambda_defは処理を継続しています。


#Procとlambdaへの引数の渡し方

p1 = Proc.new do |val|
    p "arg=" + val.to_s
  end

  p1.call(1)    #=>"arg=1"
  p1["value"]   #=>"arg=value"
  p1.([1,2,3])  #=>"arg=[1, 2, 3]"

  l1 = lambda do |val|
    p "arg=" + val.to_s
  end
   
  l1.call(1)    #=>"arg=1"
  l1["value"]   #=>"arg=value"
  l1.([1,2,3])  #=>"arg=[1, 2, 3]"

  #配列引数の渡し方

  dump = Proc.new do |*args|
    idx = 1
    # 配列をループ
    args.each do |item|
      # 受け取った引数を1個1個出力
      p "No.#{idx} arg = #{item}"
      idx+=1
    end
  end
  dump.call(10,9,8,"c","b","a")

  #Procの引数定義部（「|」から「|」内）に「*args」としていても、Proc内部では「args」だけで配列として使用できます。