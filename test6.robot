*** Settings ***
Library  Collections

*** Test Cases ***
测试
#    ${list}=            create list     a   b   ${1}
#    Append To List      ${list}     hello      world
#    log to console      ${list}         # ['a', 'b', 1, 'hello', 'world']

#    ${var}=     create dictionary     a=1     b=2
#    set to dictionary       ${var}      c=3
#    log to console      ${var}      # {'a': '1', 'b': '2', 'c': '3'}