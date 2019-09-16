*** Settings ***
Library  mylib3.py

*** Test Cases ***
测试
#    ${var}=     evaluate    890
#    printarg    ${var}

    ${var}=     evaluate    ['hello']*10    #['hello', 0]
    printarg    ${var}