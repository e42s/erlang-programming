1.以HTTP服务提供的webtool
webtool:start().
%用浏览器访问 http://127.0.0.1:8888/
%进程监控、编译等四个工具
% webtool:stop();  停止服务

2. 以HTTP服务提供的crashdump_viewer
crashdump_viewer:start().
% 同样通过 http://127.0.0.1:8888/ 访问

3.进程管理器
pman:start().

4. 启动ets和Mnesia查看器
tv:start().

5. 启动常用工具条
toolbar:start().
% 上面有四个工具

6. 一个图形库的DEMO
wx:demo().

7. 依赖检查的图形程序
reltool:start().

8. WEB版本profile程序
percept:start_webserver().
% 通过浏览器访问服务
