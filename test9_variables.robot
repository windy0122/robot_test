*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{database}     127.0.0.1       3306
&{user}         name=wudi       password=123456

*** Test Cases ***
测试
#    log to console      ${database}[0]     # 127.0.0.1
#    log to console      ${database[0]}     # 127.0.0.1
    log to console      ${user}
    log to console      &{user}[name]
    log to console      &{user}[password]
    log to console      ${user['name']}
    log to console      ${user['password']}