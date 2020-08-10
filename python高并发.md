
数据库设计（以下设计仅供参考，可以根据自己的理解优化扩充。）


|数据名称	|数据长度	|数据类型	|备注|
|管理员ID	|8	|char|	主键|
|姓名	|50	|vchar	
密码	50	vchar	


用户表
数据名称	数据长度	数据类型	备注
用户ID	18	char	主键
密码	10	vchar	
身份证号	18	char	
姓名	50	vchar	
民族	20	vchar	
地址	50	vchar	
联系电话	20	vchar	
电子邮件	50	vchar	

车次表
数据名称	数据长度	数据类型	备注
车次	10	vchar	主键
日期		date	主键
类别	50	vchar	
发车时间		time	
始发站	50	vchar	
终点站	50	vchar	
硬卧数量		int	
硬卧剩余数量		int	
软卧数量		int 	
软卧剩余数量		int 	
硬座数量		int	
硬座剩余数量		int	
一等座数量		int	
一等座剩余数量		int	
二等座数量		int	
二等座剩余数量		int	


车站表
数据名称	数据长度	数据类型	备注
车站ID	8	char	主键
车站名称	50	vchar	
类别	10	vchar	
地址	50	vchar	
负责人ID	18	char	
负责人姓名	50	vchar	
联系电话	20	vchar	

车次停靠车站表
数据名称	数据长度	数据类型	备注
车次	10	vchar	主键
序号	4	int	主键
车站ID	8	char	
车站名称	50	vchar	
开行时长		int	从始发站到本车站火车运行的秒数
到站时间		time	
发车时间		time	

车票表
车票ID	21	char	主键
身份证号	50	vchar	
姓名	50	vchar	
车次	10	vchar	
开车日期		date	
开车时间		time	
上车站ID	8	char	
上车站名称	50	vchar	
下车站ID	8	char	
下车站名称	50	vchar	
座位类型	10	vchar	硬座/硬卧等
座位编号	20	vchar	
票价		float	
购买日期		date	车票购买日期
购买时间		time	车票购买时间

|  表头   | 表头  |
|  ----  | ----  |
| 单元格  | 单元格 |
| 单元格  | 单元格 |
