# freemarker
- a template engine 用来自动生成任何来自于 HTML 格式的文本源代码
- a Java library 为程序员提供的一款可以嵌入他们所开发产品的应用程序开发包
- Template + data-model = output

# springboot-freemarker
<code>spring-boot-starter-freemarker</code> A starter for building MVC web applications using FreeMarker views.

The starters contain a lot of the dependencies that you need to get a project up and running quickly and with a consistent, supported set of managed transitive dependencies.

## pom

```java
	<parent> 
		<groupId>org.springframework.boot</groupId> 
		<artifactId>spring-boot-starter-parent</artifactId>
		<version>${spring.boot.version}</version> 
	</parent>
	<dependency>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-freemarker</artifactId>
		<version>${spring.boot.version}</version>
	</dependency>

```

## WebApplication

```java
	@SpringBootApplication
    public class WebApplication extends SpringBootServletInitializer {
        @Override
        protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
            return application.sources(WebApplication.class);
        }
    
        public static void main(String[] args) throws Exception {
            SpringApplication.run(WebApplication.class, args);
        }
    }

```

## data-model
1. hash 哈希表（存储变量和与其相关且有唯一标识名称变量的容器）
```
(root)
 |
 +- book
 |   |
 |   +- title = "Breeding green mouses"
 |   |
 |   +- author
 |       |
 |       +- name = "Julia Smith"
 |       |
 |       +- info = "Biologist, 1923-1985, Canada"
 |
 +- test = "title"
 ```
 - book.title、book["title"]
 - book.author.name、book["author"].name、book.author.["name"]、book["author"]["name"]
 
2. scalars 标量（单值变量，可以是字符串，数字，日期/时间或者是布尔值）
```
"Foo"
'Foo'
"It's \"quoted\""
r"C:\raw\string"
123.45
true
false
```
3. sequences 序列（存储有序变量的容器）
```
["foo", "bar", 123.45]
1..100
```

## Template
1. FTL tags（FreeMarker Template Language，FreeMarker 模版语言）标签
2. Comments 注释
3. directives 指令

## Types
1. scalars
2. hash、sequences
3. method、function、macro

## Expressions
- "some text" and 'some text' are equivalent.
- Note that numerical literals like 08, +8, 8.00 and 8 are totally equivalent as they all symbolize the number eight.
- The string "50" and the number 50 are two totally different things in FreeMarker.
- Generally, FreeMarker never converts a string to a number automatically, but it may convert a number to a string automatically.
- 1..4 gives [1, 2, 3, 4], and 4..1 gives [4, 3, 2, 1].
- 1..<4 gives [1, 2, 3], 4..<1 gives [4, 3, 2], and 1..<1 gives [].
- 10..*4 gives [10, 11, 12, 13], 10..*-4 gives [10, 9, 8, 7], and 10..*0 gives [].
- [#assign myRange = 0..<x] ≠ [#assign myRange = [0..<x]].
- Ranges don't really store the numbers they consist of, thus for example 0..1 and 0..100000000 is equally fast to create and takes the same amount of memory.

## Examples with some of the most commonly used built-ins
http://freemarker.org/docs/dgui_quickstart_template.html#autoid_7

## Nested content
http://freemarker.org/docs/dgui_misc_userdefdir.html#autoid_21

## Defining variables in the template
http://freemarker.org/docs/dgui_misc_var.html#dgui_misc_var

## docs
http://freemarker.org/docs/

## online tester
http://freemarker-online.kenshoo.com/

## common-application-properties
http://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/#common-application-properties