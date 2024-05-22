a = {["name"] = "大帅",["age"] = 33,[2] = 7,[1] = 0}

print(a["name"])
print(a["age"])
print(a[2])

print(a.age)

a["age"] = 34
print(a["age"])
a["name"]  = nil
print(a["name"])
b = {1,2,3,4,5}
print("------------------------")
for k,v in pairs(a) do
	print(k,v)
end
Student = {
	age = 1,
	sex = true,
	Up = function()
	
		print(Student.age)
		print("我是谁")
	end,-- body
	
	Learn = function(t)
	print(t.sex)
	print("我要学习了")
	end
}

Student.Learn(Student)
Student:Learn()

Student.name = "豪华"
Student.Speak = function()
	print("说话")
end
function Student:Speak2()

	print(self.name .. "0000")
end
print(Student.name)

Student:Speak2()

t1 = { {age = 1, name = "123"}, {age = 2, name = "345"} }

t2 = {name = "唐老狮", sex = true}
print("**********插入************")
print(#t1)
print(#t2)
table.insert(t1,t2)
print(#t1)
print(t1[3][0])
print("**********移除************")
--删除指定元素
--remove方法 传表进去 会移除最后一个索引的内容
t3 = {1,1,3,5,6,8,34,6,1}
table.remove(t3)
print(#t3)
print(t3[1])
print(t3[2])
print(t3[3])
print("**********排序************")

table.sort(t3)
for _,v in pairs(t3) do
	print(v)
end

print("**********排序************")

table.sort(t3,function (a,b)
	if(a>b) then
		return true
	end
	-- body
end)
for _,v in pairs(t3) do
	print(v)
end
table.concat