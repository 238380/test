meta = {}
mytable = {}

setmetatable(mytable,meta)

meta2 = {
	__tostring = function(t)
	return t.name
end
}

mytable2 = {
	name = "大帅"
}
print(mytable2)
setmetatable(mytable2,meta2)
print(mytable2)

print(mytable2.name)

print("**********特定操作-__call************")


meta3 = {
	--当子表要被当做字符串使用时 会默认调用这个元表中的tostring方法
	__tostring = function(t)
		return t.name
	end,
	--当子表被当做一个函数来使用时 会默认调用这个__call中的内容
	--当希望传参数时 一定要记住 默认第一个参数 是调用者自己
	__call = function(a, b)
		print(a)
		print(b)
		print("唐老狮好爱你")
	end
}
myTable3 = {
	name = "唐老狮2"
}
--设置元表函数
--第一个参数 子表
--第二个参数 元表（爸爸）
setmetatable(myTable3, meta3)
--把子表当做函数使用 就会调用元表的 __call方法
myTable3(1)
print("**********特定操作-__index和__newIndex************")
meta6Father = {
	age = 1
}
meta6Father.__index = meta6Father

meta6 = {
	--age = 1
}
--__index的赋值 写在表外面来初始化
meta6.__index = meta6
--meta6.__index = {age = 2}

myTable6 = {}
setmetatable(meta6, meta6Father)
setmetatable(myTable6, meta6)
--得到元表的方法
print(getmetatable(myTable6))
print(rawget(myTable6, "age"))

--那么会把这个值赋值到newindex所指的表中 不会修改自己
meta7 = {}
meta7.__newindex = {}
myTable7 = {}
setmetatable(myTable7, meta7)
myTable7.age = 1
print(myTable7.age)
rawset(myTable7, "age", 2)
print(myTable7.age)
