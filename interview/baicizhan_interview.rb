=begin
# 百词斩面试题
现在有一条公路，起点是0公里，终点是100公里。这条公路被划分为N段，每一段有不同的限速。现在他们从A公里处开始，到B公里处结束。请帮他们计算在不超过限速的情况下，最少需要多少时间完成这段路程。

输入：
1、第一行为公路划分的段数N
2、接下来N行，每行三个正整数，分别是起始点，终止点（前后两段一定保证是连续的），和限速值（单位：公里/小时）
3、紧接是要计算的起始点A，和终止点B

输出：
1、输出为一行，即从A到B需要的最少时间（单位：小时）,精确到小数点后两位

Sample Input:
4
0 30 10
30 40 20
40 80 20
80 100 5
20 60

Sample Output:
2.50
=end

=begin
	没有进行数据的验证，如，输入字符串，分段输入浮点数、路程信息不完整等等。包括A B点之间的关系，比如A点在B点之后，就输入有误
=end


para = gets


paras = []

para.to_i.times do |x|
	paras[x] = gets
end

star_end = gets


star_A = star_end.split(" ")[0].to_i
end_B = star_end.split(" ")[1].to_i

time = 0.00

paras.each do |x|
	arr = x.split(" ").to_a

	#整型进行比较好一点，所以　都to_i

	#这里进行处理，在起点和终点之间完整的路段
	if arr[0].to_i >= star_A && arr[1].to_i <= end_B 
		time += (arr[1].to_f - arr[0].to_f)/arr[2].to_f

	#　对于不再起点和终点之间的路，不进行处理
	elsif arr[1].to_i < star_A || arr[0].to_i > end_B
	
	# 这里处理起点所在的路段			
	elsif arr[0].to_i< star_A && arr[1].to_i > star_A && arr[1].to_i < end_B
		time += (arr[1].to_f - star_A) / arr[2].to_f

	#这里处理终点所在的路段。
	elsif arr[1].to_i > end_B && arr[0].to_i < end_B
		time += (end_B - arr[0].to_f) /arr[2].to_f
	end
end

puts "需要的时间：　#{time}"