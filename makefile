- 格式
 target:dependency_files
  command
-  -c:只是编译不链接　　生成.o文件　　gcc *.c -Wall（编译所有ｃ文件）
- eg１:(可使用make f1.o　单独make)
    （OBJS=f1.o f2.o 
      OBJS+=main.o）
    （include ...）包含变量进来
    test:f1.o f2.o main.o
      gcc f1.o f2.o main.o -o test
    f1.o:f1.c
      gcc -c -Wall f1.c -o f1.o
    f2.o:f2.c
      gcc -c -Wall f2.c -o f2.o
    main.o:main.c
      gcc -c -Wall main.c -o main.o
    .PHONY:clean（伪目标  无条件执行）
    clean:
      rm *.o test
- eg2:
  OBJS=kang.o yul.o 
  CC=gcc
  CFLAGS=-Wall -O -g -I include/
  sunq:$(OBJS)
    $(CC) $(OBJS) -o sunq
-  ?= 定义变量   FOO ?= bar　　如果ＦOO没有定义 则FOO=bar
- $@ 目标文件的完整名称
- $< 第一个依赖
- $+ 所有依赖，以空格分开并以先后顺序出现，包含重复依赖
- $? 所有时间戳比目标文件晚的依赖文件
- $^ 不重复的依赖文件
- $% 如果目标是归档文件，则该变量表示目标的归档成员名称

make  -C　　运行制定目录下的make
      -f   使用一个普通文件作为makefile文件　　make -f file(以file为makefile)
      -i   当执行过程遇到错误，忽略错误
      -n　　只打印不执行
      -p   打印make数据库　隐含规则
      -s  执行命令　不显示
      -w  r如果执行中修改目录　　打印目录名(默认有)
 
 - 隐含推导　　f2.o:f2.c  （不用　gcc.... 就可以生成f2.o）
 -　隐含规则   f1:f1.o f2.o main.o  （可以自动推导生成,但是目标必须和依赖中的一个同名，如 f1 f2 main）
 
 VPATH：虚路径
  VPATH=src:../head/  先看当前目录　如果没有就到src中查找　　然后../head/中找
 - eg3
    CFLAGS＝-c -Wall -I include
    test:src1/f1.o src2/f2.o main/main.o
      gcc $^ -o $@
    src1/f1.o:src1/f1.c
      gcc $^ -o $@
    ....
    .PHONY:clean
    clean:
     find ./ -name "*.o" -exec rm {} \; rm test
  
- eg4:
    CFLAGS＝-c -Wall -I include
    VPATH=src1 src2 main
    f1:f1.o f2.o main.o
    .PHONY:clean
    clean:
     find ./ -name "*.o" -exec rm {} \; rm test
  
makefile嵌套:
每个源码都有makefile 负责.c 到　.o
-eg5:
 主make
     cc=gcc
     SUBDIRS=f1\
             f2\
             main\
             obj
     OBJS=f1.o f2.o main.o
     BIN=myapp
     OBJS_DIR=obj
     BIN_DIR=bin
     export CC OBJS BIN OBJS_DIR BIN_DIR（让下级makefile也可以使用这些变量）
     all:CHECK_DIR $(SUBDIRS)
     CHECK_DIR:
       mkdir -p $(BIN_DIR)
     $(SUBDIRS):ECHO
       make -C $@
     ECHO:
       ＠echo $(SUBDIRS)
       @echo begin compile
     CLEAN:
       @$(RM) $(BIN_DIR/*.o
       @rm -rf $(BIN_DIR)
 
 其他下级目录的make 
     ../$(OBJS_DIR)/f1.o:f1.c
     $(cc) -c $^ $@
     
     ../$(OBJS_DIR)/$(BIN)：./f1/f1.o f2/f2.o main/main.o
         $(cc) -o ../bin/$(BIN) $^ 
 
    
    
    
    
    
    
