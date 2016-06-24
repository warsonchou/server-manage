# 服务器管理自动化
###服务器管理流程
* 首先是启动服务器，因为断电或者各种原因
* 然后就是一个个挨着启动服务，这里面有很多服务在同一个服务器上，而且服务启动有时候还要按一定的顺序
* 再而就是因为启动服务有顺序，所以所有的服务启动完了之后就要检查所有的服务是否正常

###缘由
	如果服务很多的话，那么我们需要很多的检查工作，而且有时候检查工作也是麻烦的，有可能需要按照顺序来，比较麻烦，所以我们需要一个自动化的启动服务的程序或者脚本！

###环境

	server：Window8系统，物理主机
	服务宿主：VMware，虚拟主机（服务所在地）
	反向代理：nginx(放在物理主机)
	
	

###解决方法

往物理主机添加脚本，然后在用户登录的时候，执行相应的脚本

1. 实现用户开机自动登录，使用windows官方提供的[Autologon](https://technet.microsoft.com/en-us/sysinternals/bb963905.aspx)
* 然后在[task scheduler](http://stackoverflow.com/questions/21218346/run-batch-file-on-start-up)(任务计划程序)里面添加新的task，这个task是在用户登录之后执行脚本，启动服务


###脚本编写
主要是batch脚本的编程，batch的基础知识可以参考[这里](http://www.tutorialspoint.com/batch_script/batch_script_tutorial.pdf)
根据官方VMware官方提供的[api](https://www.vmware.com/support/developer/prog-api/)和[知识](http://pubs.vmware.com/workstation-12/index.jsp?topic=%2Fcom.vmware.ws.using.doc%2FGUID-DA203314-F153-4F1F-8FCF-A7700530943D.html), 编写出脚本[autoRunMutipleServices.bat]()
	