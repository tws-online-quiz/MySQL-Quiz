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
    gender VARCHAR(10),
    companyId INT NOT NULL,
    salary INT NOT NULL
) engine=InnoDB DEFAULT CHARSET = utf8;

#将csv文件中的数据导入数据表中
LOAD DATA LOCAL INFILE '/yourPath/employee-data.csv' INTO TABLE Employee FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (id, name, age, gender, companyId, salary);

# 创建数据表company该数据表的引擎是InnoDB支持utf8格式
CREATE TABLE Company(
    id INT PRIMARY KEY,
    companyName VARCHAR(255) NOT NULL,
    employeesNumber INT NOT NULL
) engine=InnoDB DEFAULT CHARSET = gbk;

#将csv文件中的数据导入数据表中
LOAD DATA LOCAL INFILE '/yourPath/company-data.csv' INTO TABLE Company FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (id, companyName, employeesNumber);

# 找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
SELECT * FROM Employee WHERE `name` LIKE '%n%' AND salary > 6000;