*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
百度搜索松勤
    open browser                    http://www.baidu.com        chrome
    set selenium implicit wait      5
    input text                      id=kw                       松勤\n
    ${firstRet}=                    get text                    id=1
    should contain                  ${firstRet}                 松勤网