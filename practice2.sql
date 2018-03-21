#取得每个公司最高薪水的人员名称,输出
#公司名称 最高薪资人员姓名
SELECT employee.companyName, employee.name FROM (SELECT employee.*, company.companyName FROM Employee employee LEFT JOIN Company company ON employee.companyId = company.id) employee Right JOIN (SELECT companyId, max(salary) AS maxsal FROM Employee GROUP BY companyId) t ON t.maxsal = employee.salary AND employee.companyId = t.companyId;

# 产生临时表1employee包含公司名称
# 产生临时表2选出公司ID和最高薪资
# 然后右JOIN选出最高的薪资对应人和公司