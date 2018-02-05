#-----------------------------作用域------------------------------------#
=begin
作用域
  Ruby中不具备嵌套作用域(即在内部作用域，可以看到外部作用域的)的特点，它的作用域是截然分开的，一旦
进入一个新的作用域，原先的绑定会被替换为一组新的绑定。类定义class 模块定义 module  方法定义 def

(1)扁平化作用域（局部变量）,规避关键字的定义，采用方法定义
    Class.new替代class
    Module#define_method代替def
    Module.new代替module
=end

  my_var = "Success"
  MyClass = Class.new do
        puts "#{my_var} in  the class definition"
        define_method :my_method do
            puts "#{my_var} in the method"
        end
  end

  obj2=MyClass.new
  obj2.my_method
