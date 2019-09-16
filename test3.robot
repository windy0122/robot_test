*** Settings ***
Library  SeleniumLibrary    implicit_wait=10
Library  mylib3.py


*** Test Cases ***
测试
#    opencalc

#    ${var1}=    set variable            123
#    printarg    ${var1}
#
#    ${var2}=    convert to integer      123
#    printarg    ${var2}
#
#    ${var2}=    convert to integer      23
#    printarg    ${var2}     Hello

    ${var1}=            returnlist
    printarg            ${var1}
    log to console      ${var1}                     #[1,2,3]
    log to console      ${var1} is not right        # 相当于拼接字符串

    printarg            @{var1}                     # 1,2,3每个拆开打印出
    printarg            @{var1}[2]                  # 打印出2

    ${var2}=            returndict
    printarg            &{var2}







