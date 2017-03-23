#global variable

def hello
  puts $$ # process id.
  puts $: # ruby loading path  代码加载路径。
end

hello