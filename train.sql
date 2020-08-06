CREATE TABLE IF NOT EXISTS `manager`(
   `id` char(8) ,
   `name` VARCHAR(100) NOT NULL,
   `pd` VARCHAR(40) NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*用户表*/
CREATE TABLE IF NOT EXISTS `user`(
   `id` char(18) ,
   `pd` VARCHAR(10) NOT NULL,
    `identification` CHAR(18) NOT NULL,
   `name` VARCHAR(50) NOT NULL,
   `minor` VARCHAR(20) NOT NULL,
   `address` VARCHAR(50) NOT NULL,
    `tel` VARCHAR(20) NOT NULL,
   `email` VARCHAR(50) NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*车次表*/
CREATE TABLE IF NOT EXISTS `schedule`(
   `id` varchar(10) ,
   `date` date NOT NULL,
    `category` varchar(50) NOT NULL,
   `leaveTime` time NOT NULL,
   `departure` VARCHAR(50) NOT NULL,
   `destination` VARCHAR(50) NOT NULL,
    `hardSleeperNum` int NOT NULL,
   `hardSleeperRestNum` int NOT NULL,
    `softSleeperNum` int NOT NULL,
   `softSleeperRestNum` int NOT NULL,
    `firstClassSeatNum` int NOT NULL,
   `firstClassSeatRestNum` int NOT NULL,
    `secondClassSeatNum` int NOT NULL,
   `secondClassSeatRestNum` int NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*车站表*/
CREATE TABLE IF NOT EXISTS `station`(
   `id` varchar(8) ,
   `name` date NOT NULL,
    `category` varchar(10) NOT NULL,
   `address` varchar(50) NOT NULL,
   `stuffid` VARCHAR(18) NOT NULL,
   `stuffname` VARCHAR(50) NOT NULL,
    `tel` VARCHAR(50) NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*车站停靠表*/
CREATE TABLE IF NOT EXISTS `trainStop`(
   `scheduleId` varchar(10) COMMENT '车次' ,
   `id` int NOT NULL COMMENT '序号',
    `stationId` char(8) NOT NULL COMMENT '车站id',
   `stationName` varchar(50) NOT NULL COMMENT '车站名称',
   `intervalTime` int  NOT NULL COMMENT '从始发站到本站',
   `arrive` time NOT NULL COMMENT '到站时间',
   `leaveTime` time NOT NULL COMMENT '发车时间',
   PRIMARY KEY ( `id`,`scheduleId` ),
   FOREIGN KEY (`stationId`) REFERENCES station(`id`),
   FOREIGN KEY (`scheduleId`) REFERENCES schedule(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 车票表*/
CREATE TABLE IF NOT EXISTS `ticket`(
   `id` varchar(21) COMMENT '车票id' ,
   `identification` date NOT NULL COMMENT '身份证',
    `name` varchar(10) NOT NULL COMMENT '乘客名称',
   `scheduleId` varchar(50) NOT NULL COMMENT '车次',
   `leaveTime` VARCHAR(18) NOT NULL COMMENT '出发时间',
   `totalTime` VARCHAR(50) NOT NULL COMMENT '到站时间',
   `departureId` VARCHAR(50) NOT NULL ,
   `departureName` VARCHAR(50) NOT NULL,
   `destinationId` VARCHAR(50) NOT NULL ,
   `destinationName` VARCHAR(50) NOT NULL, 
   `seatClass` VARCHAR(50) NOT NULL ,
   `seatId` VARCHAR(50) NOT NULL ,
   `price` VARCHAR(50) NOT NULL,
   `buyTime` VARCHAR(50) NOT NULL, 
   `buydate` VARCHAR(50) NOT NULL ,
   PRIMARY KEY ( `id` )
   FOREIGN KEY (`scheduleId`) REFERENCES schedule(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;