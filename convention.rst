附录
===============
1.常用库及库函数参考手册
-----------------------


常用lib
^^^^^^^^^^^^^^^^^^^^^^^^
stdlib    标准库
mnesia    分布式数据库系统
inets     ftp client, http client/server, tftp client/server等
cryto     加密、解密，基于openssl
ssl       加密socket通信，基于openssl
ssh       ssh协议
xmerl     xml解析
snmp      snmp协议
observer  分析和追踪分布式应用
os_mon    对操作系统进行监控
orber     实现CORBA对象请求服务
dialyzer  静态分析
edoc      生成文档
eunit     单元测试



io
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
format([Dev],F,Args)	    按格式 F 输出参数 Args 
get_chars([Dev],P,N)	    输出提示 P 并读出 Dev 的前 N 个字符。
get_line([Dev], P)	        输出提示 P 并读出 Dev 的一行。
n1([Dev])	                输出新的一行。
parse_exprs([Dev], P)	    输出提示 P 并从 Dev 中读出 Erlang 表达。如果成功返回 {form, ExprList} , 否则返回 {error, What} 。
parse_form([Dev], P)	    输出提示 P ，并把 Dev 读成一个 Erlang 表。如果成功返回 {form, Form} ，否则返回 {error, What} 。
put_chars([Dev], L)	        输出列表 L 中的字符。
read([Dev], P)	            输出提示 P 并且从 Dev 中读一项式。如果成功则返回 {term,T} 否则返回 {error,What} 。
write([Dev],Term)	        输出 Term 。
 


file
^^^^^^^^^^^^^^^^^^
read file(File)“	        返回 {ok,Bin} ，其中 Bin 是一个包含文件 File 内容的二进制数据对象。
write file(File, Binary)	把二进制数据对象 Binary 中的内容写入到文件 File 中。
get_cwd()	                返回 {ok,Dir} ，其中 Dir 是当前工作目录。
set cwd(Dir)	            把当前工作目录设为 Dir 。
rename(From, To)	        把文件名 From 改为 To 。
make dir(Dir)	            创建目录 Dir 。
del dir(Dir)	            删除目录 Dir 。
list dir(Dir)	            返回 {ok,L} ，其中 L 是目录 Dir 中的所有文件列表。
file info(File)	            返回 {ok,L} ，其中 L 是包含文件 File 信息的元组。
consult(File)	            如果正确返回 {ok,L} ，这里的 L 是文件 File 。
open(File, Mode)	        打开文件 File 的模式 Mode 有三种，分别是 read 、 write 和 read_write 。如果成功打开返回 {ok,File} ， 失败则返回 {error,What} 。
close(Desc)	                关闭文件 Desc 。
position(Desc, N)           把文件 Desc 的当前位置设为 N 。
truncate(Desc)	            把文件 Desc 在当前位置截断。

lists
^^^^^^^^^^^^^^^^^^^^^^^^^^
append(L1, L2)	            返回 L1+L2 。
append(L)	                把 L 中所有子列表附加起来的。
concat(L)	                把列表 L 中的所有原子式合并形成一个新的原子。
delete(X, L)	            返回把 L 中第一个出现的 X 删除后的列表。
flat_length(L)	            和 length(flatten(L)) 等价。
flatten(L)	                返回对L进行扁平化处理后的列表。
keydelete(Key, N, LTup)	    返回列表 LTup 删除它的第一个元组中第 N 个元素是 Key 的元组后的列表。
keysearch(Key, N, LTup)	    遍历元组列表 LTup ,查找一个第 N 个元素是 Key 的元组,若找到返回 {value, X} ;否则返回 false 。
keysort(N, LTup)	        返回有 LTup 中一系列元组的分类的版本,这其中的第 N 个元素用来作关键字。
member(X, L)	            若 X 是列表 L 中的成员返回 true, 否则返回 false 。
last(L)	                    返回 L 的最后一个元素。
nth(N, L)	                返回 L 的第 N 个元素。
reverse(L)	                把 L 中最上层的元素反转。
reverse(L1, L2)	            和 append(reverse(L1), L2) 等价。
sort(L)	                    对 L 进行排序。

code
^^^^^^^^^^^^^^^^^^^^^^^^^^^

set_path(D)	                把代码服务器查询的路径设为目录 D 。
load_file(File)	            在当前路径上加载文件 File.erl 。加载成功返回 {module, ModuleName } ；失败返回: {error, What} 。
is_loaded(Module)	        检验模块 Module 是否已经加载.若已加载返回 {file, AbsFileName} ，否则返回 false 。
esure_loaded(Module)	    加载之前未加载的模块,它的返回值和 load_file(File) 一样。
purge(Module)	            清楚模块 Module 中的代码。
all_loaded()	            返回所有载入模块的元组 {Module, AbsFileName} 。

2.资源
---------------------
书籍
^^^^^^^^^^^^^^^^^
 Programming Erlang , 《Erlang程序设计》
 Concurrent Programming in Erlang, 《Erlang并发编程》
 Making Reliable Systems in the Presence of Software Errors, 《面向软件错误构建可靠的分布式系统》
 Erlang and OTP in Action, 《Erlang/OTP并发编程实践》
 Building Web Application WithErlang
 OTP Design Pinciples, 《Erlang OTP设计原理》
 Learn You Some Erlang for Great World
 Erlang Programming
  
3.社区
------------------------------------
http://erlang-china.org  Erlang中文社区
http://www.erlang.org/mailman/listinfo   Eralng邮件列表
irc.freenode.net #eralng频道

4.开源项目
------------------------------------------
http://cean.process-one.net
CEAN,
http://yaws.hyber.org
Yaws, Yet another web Server
http://
CouchDB


