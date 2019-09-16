*** Settings ***
Library  SeleniumLibrary
Library  mylib3.py

*** Test Cases ***
#Example 1
#        :FOR    ${animal}   IN      猫   狗   猪
#        \       log to console      ${animal}
#        \       log to console      第二行
#        log to console      循环外面

#遍历list变量
#        ${list}=    returnlist
#        :FOR        ${index}    IN      @{list}
#        \     log to console        ${index}

range用法
#        :FOR        ${index}    IN RANGE    10      #循环0到9
#        \   log to console      ${index}

#        :FOR        ${index}    IN RANGE    1   11      #循环1到10
#        \   log to console      ${index}

#        :FOR        ${index}    IN RANGE    5   26  10   #循环5到25，每次加10
#        \    log to console     ${index}

#        :FOR        ${index}    IN RANGE    13   -13    -10   #循环13到-12，每次减10
#        \    log to console     ${index}

