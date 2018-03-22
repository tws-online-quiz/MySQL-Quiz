# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

#先算出公司的平均薪资水平输出companyId | avgsal
SELECT companyId, avg(salary) AS avgsal FROM Employee GROUP BY companyId;
#将employee表中多加字段companyName
SELECT employee.*, company.companyName FROM Employee employee LEFT JOIN Company company ON employee.companyId = company.id
#将employee表中多加字段companyName和avgsal
SELECT e.*, c.avgsal FROM  (SELECT employee.*, company.companyName FROM Employee employee LEFT JOIN Company company ON employee.companyId = company.id) e LEFT JOIN (SELECT companyId, avg(salary) AS avgsal FROM Employee GROUP BY companyId) c ON e.companyId = c.companyId
#从上一个生成的表中筛选出大于平均水平的

#结果
SELECT * FROM (SELECT e.*, c.avgsal FROM  (SELECT employee.*, company.companyName FROM Employee employee LEFT JOIN Company company ON employee.companyId = company.id) e LEFT JOIN (SELECT companyId, avg(salary) AS avgsal FROM Employee GROUP BY companyId) c ON e.companyId = c.companyId
) t WHERE t.salary >= t.avgsal
