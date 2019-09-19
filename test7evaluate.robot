*** Settings ***
Library  mylib3.py
Library  Collections
Library  RequestsLibrary
Library  JSONLibrary
Library  String

*** Test Cases ***
测试
#    ${var}=     evaluate    890
#    printarg    ${var}

    ${var}=     evaluate    ['hello']*10    #['hello', 0]
    ${params}=        set variable       {"action":"list_course", "pagenum":"1" , "pagesize":"20"}
    ${paramsjson}=         convert string to json       ${params}
    ${paramsjson1}=          to json       ${params}        pretty_print=true
#    printarg    ${params}
    ${typeparmas}       evaluate    type(${paramsjson1})
#    ${typeparmas1}       evaluate    type(${params})
    log to console      ${typeparmas}
#    log to console      ${typeparmas1}
#    log to console      ${params}
#    log to console      ${paramsjson1}


