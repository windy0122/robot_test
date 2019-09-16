*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
搜索python
    ${var}=             set variable        hello
    log to console      变量名的值为：${var}
    should be equal     ${var}              helle       百度搜索结果错误

*** Test Cases ***
验证
    ${num}=     convert to integer      32
    log to console      ${num}

    ${num2}=    convert to number       32
    log to console      ${num2}

    log to console      ${32}
    log to console      ${32+2*2}

*** Test Cases ***
#测试1
#    should be equal     10      010        #False
#    should be equal as integers         11      011    #pass

#测试2
#    ${num}=     convert to integer     20
#    should be true      ${num}>19       #pass

测试3
    ${str1}=    set variable    hello
##    should be true      ${str1}==hello      # fail 找不到hello变量
##    should be true      ${str1}=='hello'     # fail 找不到hello变量
##    should be true      '${str1}'=='hello'      #pass
#    should be true      $str1=='hello'      #pass

    should be true      $str1=='hello'
    should be true      $str1.startswith('she')     # fail, 如果$str1.startswith('he')则为pass










