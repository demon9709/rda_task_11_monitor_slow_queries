create database ShopDB; 

use ShopDB; 

-- Create tables 

CREATE TABLE Products1 (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;




# The MySQL configuration change (long_query_time=0 and slow query log enabled)

vitalii@mateubuntu:/etc/mysql/mysql.conf.d$ sudo tail -n 20 /etc/mysql/mysql.conf.d/task.cnf
slow_query_log          = 1

#slow_query_log_file    = /data/mysql-slow.log
 slow_query_log_file    = /var/log/mysql/mysql-slow.log

long_query_time = 0
# long_query_time = 2


# log-queries-not-using-indexes
#
# The following can be used as easy to replay backup logs or for replication.
# note: if you are setting up a replication slave, see README.Debian about
#       other settings you may need to change.
# server-id             = 1
# log_bin                       = /var/log/mysql/mysql-bin.log
# binlog_expire_logs_seconds    = 2592000
max_binlog_size   = 100M
# binlog_do_db          = include_database_name
# binlog_ignore_db      = include_database_name



# The MySQL service restart
vitalii@mateubuntu:/etc/mysql/mysql.conf.d$ sudo systemctl restart mysql



# The execution of both queries at least 10 times each
Time                 Id Command    Argument
# Time: 2025-08-18T21:13:24.805676Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000154  Lock_time: 0.000000 Rows_sent: 1  Rows_examined: 1
SET timestamp=1755551604;
select @@version_comment limit 1;
# Time: 2025-08-18T21:13:32.582183Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000329  Lock_time: 0.000000 Rows_sent: 1  Rows_examined: 1
SET timestamp=1755551612;
SELECT DATABASE();
# Time: 2025-08-18T21:13:32.582658Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000381  Lock_time: 0.000001 Rows_sent: 1  Rows_examined: 1
use ShopDB;
SET timestamp=1755551612;
# administrator command: Init DB;
# Time: 2025-08-18T21:13:32.588155Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.004080  Lock_time: 0.000005 Rows_sent: 5  Rows_examined: 21
SET timestamp=1755551612;
show databases;
# Time: 2025-08-18T21:13:32.590138Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001949  Lock_time: 0.000004 Rows_sent: 6  Rows_examined: 26
SET timestamp=1755551612;
show tables;
# Time: 2025-08-18T21:13:32.597033Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.006863  Lock_time: 0.000014 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755551612;
;
# Time: 2025-08-18T21:13:32.597392Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000320  Lock_time: 0.000001 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755551612;
;
# Time: 2025-08-18T21:13:32.598484Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001071  Lock_time: 0.000006 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755551612;
;
# Time: 2025-08-18T21:13:32.599095Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000587  Lock_time: 0.000001 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755551612;
;
# Time: 2025-08-18T21:13:32.599437Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000320  Lock_time: 0.000002 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755551612;
;
# Time: 2025-08-18T21:13:32.600091Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000635  Lock_time: 0.000002 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755551612;
;
# Time: 2025-08-18T21:13:42.567385Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000366  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551622;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:43.788337Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000643  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551623;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:44.474108Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000431  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551624;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:45.178466Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000240  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551625;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:45.786892Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000281  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551625;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:46.293755Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000505  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551626;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:46.796163Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000364  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551626;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:47.284712Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000311  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551627;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:47.753431Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000188  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551627;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:48.414331Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000570  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551628;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:53.513731Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000330  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551633;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:53.957349Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000475  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551633;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:54.364470Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000480  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551634;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:54.923635Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000274  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551634;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:55.515447Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000436  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551635;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:56.025795Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000247  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551636;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:56.519541Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000275  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551636;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:56.948654Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000276  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551636;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:57.355707Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000319  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755551637;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:13:59.597582Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000006  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 60
SET timestamp=1755551639;
# administrator command: Quit;
/usr/sbin/mysqld, Version: 8.0.43-0ubuntu0.24.04.1 ((Ubuntu)). started with:
Tcp port: 3306  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
/usr/sbin/mysqld, Version: 8.0.43-0ubuntu0.24.04.1 ((Ubuntu)). started with:
Tcp port: 3306  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2025-08-18T21:50:04.069304Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000242  Lock_time: 0.000000 Rows_sent: 1  Rows_examined: 1
SET timestamp=1755553804;
select @@version_comment limit 1;
# Time: 2025-08-18T21:50:21.014785Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000556  Lock_time: 0.000000 Rows_sent: 1  Rows_examined: 1
SET timestamp=1755553821;
SELECT DATABASE();
# Time: 2025-08-18T21:50:21.015581Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000430  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 1
use ShopDB;
SET timestamp=1755553821;
# administrator command: Init DB;
# Time: 2025-08-18T21:50:21.020683Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.003907  Lock_time: 0.000004 Rows_sent: 5  Rows_examined: 21
SET timestamp=1755553821;
show databases;
# Time: 2025-08-18T21:50:21.022776Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001580  Lock_time: 0.000005 Rows_sent: 6  Rows_examined: 26
SET timestamp=1755553821;
show tables;
# Time: 2025-08-18T21:50:21.030106Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.005937  Lock_time: 0.000012 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755553821;
;
# Time: 2025-08-18T21:50:21.030552Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000268  Lock_time: 0.000001 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755553821;
;
# Time: 2025-08-18T21:50:21.031999Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001054  Lock_time: 0.000010 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755553821;
;
# Time: 2025-08-18T21:50:21.033066Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000631  Lock_time: 0.000004 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755553821;
;
# Time: 2025-08-18T21:50:21.033995Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000543  Lock_time: 0.000002 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755553821;
;
# Time: 2025-08-18T21:50:21.034990Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000568  Lock_time: 0.000002 Rows_sent: 0  Rows_examined: 0
SET timestamp=1755553821;
;
# Time: 2025-08-18T21:51:11.761595Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000471  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553871;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:21.651160Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000517  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553881;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:23.634233Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000233  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553883;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:24.389699Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000263  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553884;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:24.987533Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000220  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553884;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:25.881563Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000271  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553885;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:26.447216Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000623  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553886;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:27.034664Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000512  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553887;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:27.624617Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000205  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553887;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:28.178795Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000199  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553888;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:28.874875Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000481  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553888;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:29.434447Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000238  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553889;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:30.004342Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000696  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553890;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:30.588105Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000484  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553890;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:52.476038Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000586  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553912;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:54.481109Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000428  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553914;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:54.903479Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000536  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553914;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:55.387967Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000468  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553915;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:56.329371Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000443  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553916;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:56.989462Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000328  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553916;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:57.597621Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000409  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553917;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:58.305246Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000540  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553918;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:59.091311Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001075  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553919;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:51:59.852789Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000377  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553919;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:52:00.650300Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001011  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553920;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:52:01.418519Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000546  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553921;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:52:01.997699Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000250  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755553921;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-18T21:52:04.704973Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000005  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 60
SET timestamp=1755553924;
# administrator command: Quit;




The average query speed in the Products2 table turned out to be slower, so I deleted it.