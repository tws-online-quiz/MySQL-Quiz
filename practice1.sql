# 创建数据库Employee支持utf8格式
CREATE DATABASE IF NOT EXISTS `employee_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

# 查看数据库是否创建成功
show databases;

# 进入到新创建的数据库
use employee_db;

# 创建数据表该数据表的引擎是InnoDB支持utf8格式
CREATE TABLE Employee(
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(2)
) engine=InnoDB DEFAULT CHARSET = utf8;


