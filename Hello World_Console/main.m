//
//  main.m
//  HelloWord
//
//  Created by 董兴斌 on 16/1/10.
//  Copyright © 2016年 董兴斌. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {//系统会在合适的时机自动释放该对象所占用的内存空间。
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSLog(@"Hello World + %d", 2);
        NSLog(@"Hello World + %f", 2.0f);
        NSLog(@"Hello World + %ld", 20L);
        NSLog(@"Hello World + %ul", 2);
        NSLog(@"Hello World + %c", 'o');
        
        //将NSNumber类型的数据与NSString类型的数据拼接并且打印
        NSLog(@"%@+%@",@(9),@"Hello World");
        
        //NSString 对象的初始化
        //        NSString 内存中的位置
        //        NSString 常用的几个方法
        //        1.NSString 对象的初始化
        //
        //        NSString初始化有两种：第一种是调用类方法；第二种是调用实例方法。
        //
        //        类方法的调用：一般都通过[NSStringstringWithFormat:@"HelloWorld%@",@"OC"];
        //
        //        实例方法调用：[[NSStringalloc]initWithFormat:@"HelloWorld"] 以及将 字节码转换为NSString的方法
        //
        //        [[NSStringalloc]initWithData:[NSDatadata]encoding:NSUTF8StringEncoding]；
        
        
        //        2.NSString 内存中的位置
        //
        //        2.1 NSString声明的变量 指向的内存地址中的值是不会变的。我们以代码的方式讲解：
        
        NSString *str1 = @"HelloWorld";
        NSString *str2 = str1;
        str2 = @"HelloWorld111";
        
        NSLog(@"%@", str1);
        
        //        2.2 所有的长的一样的常量(集合类型除外)，在内存中占用同一块内存。
        
        NSString *str11 = @"HelloWorld";
        NSString *str21 = @"HelloWorld";
        NSLog(@"%d", str11 == str21);
        //        执行上述代码可以看到会打印1.说明两个对象的地址是相同的。
        
        //        3.NSString常用的几种方法与属性
        //
        //        获取当前字符串对象的字符长度(字符个数)
        
        //        @property (readonly) NSUInteger length;
        
        //        获取字符串 第index 位置的字符的ASCII 码,
        //        - (unichar) characterAtIndex:(NSUInteger)index;
        
        //        判断字符串长的是否一样
        //        - (BOOL)isEqualToString:(NSString *)aString;
        
        //        判断是否包含前后缀
        //        - (BOOL)hasPrefix:(NSString *)aString;
        //        - (BOOL)hasSuffix:(NSString *)aString;
        
        //        判断是否包含某个字符串
        //        - (BOOL)containsString:(NSString *)aString</span>
        //        判断一个字符串在该字符串中出现的位置
        //        - (NSRange)rangeOfString:(NSString *)aString;
        
        //        字符串的拼接，返回另外一个字符串。
        //        - (NSString *)stringByAppendingString:(NSString *)aString;
        //        - (NSString *)stringByAppendingFormat:(NSString *)format, ...
        //        字符串的分割
        //        - (NSArray *)componentsSeparatedByString:(NSString *)separator;
        //        通过正则表达式去除两端不想要的字符串，一般是去除空格
        //        - (NSArray *)componentsSeparatedByString:(NSString *)separator;
        //        字符串的替换
        //        - (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement
        //        字符串转NSData对象(字节对象)
        //        - (NSData *)dataUsingEncoding:(NSStringEncoding)encoding;
        //
        //        可以尝试着多联系一下以上方法的使用。基本上NSString 就掌握了。
        //
        //        2.4 NSMutableString 比NSString多了 几个操作本对象的方法
        //
        //        - (void)insertString:(NSString *)aString atIndex:(NSUInteger)loc;
        //        - (void)deleteCharactersInRange:(NSRange)range;
        //        - (void)appendString:(NSString *)aString;  
        //        - (void)appendFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);  
        //        - (void)setString:(NSString *)aString;  
        //        主要是用于增删改查该对象的值。并且这个变量指向内存地址的值会随着这些函数的调用而改变。
        
    }
    return 0;
}
