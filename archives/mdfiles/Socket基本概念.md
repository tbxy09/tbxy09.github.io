有IP地址必须要走网卡
[Linux Socket编程（不限Linux）](http://www.cnblogs.com/skynet/archive/2010/12/12/1903949.html)

# 进程通信
本地进程间通信有很多方式，但总结为下面四类
1. 消息传递（管道，FIFO，消息队列）
2. 同步（互斥量，条件变量，读写锁，文件和写记录锁，信号量）
3. 共享内存（匿名和具名）
4. 远程过程调用（solaris门和Sun RPC)
# 网络中进程如何通信？
如何标识？
本地可以通过PID来标识一个进程，
网络层的“ip地址”,传输层的协议+端口，可以唯一标识主机中的应用程序。

引用编程接口
UNIX  BSD的套接字（socket）和UNIX System V的TLI（已经被淘汰）
# 什么是socket
socket起源于unix,Unix/Linux，基本哲学之一，
```
一切皆文件,都可以用open->write/read->close模式来实现
```

socket就是该模式的实现，socket即是一种特殊的文件，

int socket(int domain, int type, int protocol)
domain:决定了socket的地址类型，返回的socket描述符存于domain当中，
type:__SOCK_STREAM__ __SOCK_DGRAM__
protocol:协议

[相关阅读](http://tbxy09.github.io/070115.html)

由于系统启动最初就需要通过网卡从其他共享文件系统中加载所需要的资源，网卡驱动必须静态编译进内核
可加载模块都是系统启动后才进行动态加载的

动态加载进内核的硬件驱动


shell也是种语言
Shell只是把用户的意图告诉内核，然后该干嘛干嘛
命令进程--->Shell程序--->UNIX内核--->计算机硬件。当用户输入一个命令，如$ls, Shell将定位其可执行文件/bin/ls并把其传递给内核执行。内核产生一个新的子进程调用并执行/bin/ls。当程序执行完毕后，内核取消 该子进程并把控制交给其父进程，即Shell程序。

静态库和动态库 http://www.cnblogs.com/skynet/p/3372855.html

云访问，速度（缓存）与安全（只提供算法），网络设备通讯

内核调试
http://blog.chinaunix.net/uid-28458801-id-4990166.html
