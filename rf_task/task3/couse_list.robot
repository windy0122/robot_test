*** Settings ***
Library  course_mgr.py
Library  Collections
Library  SeleniumLibrary

*** Test Cases ***
返回课程
        ${courselist}=           listcouse
#        log to console          ${couselist}
        :FOR    ${couse}        IN      @{courselist}
        \       log to console      ${couse}

        ${expethed}=    create list     Python      Java        C
#        should be equal     ${courselist}       ${expethed}
        lists should be equal        ${courselist}          ${expethed}


华为商城
        open browser        https://www.vmall.com/index.html        chrome
        set selenium implicit wait      5
        ${hot_goods}=       get webelements      css=.home-hot-goods .grid-items div
        :FOR    ${hot_good}     IN      @{hot_goods}
#        \       log to console      ${hot_good.text}   # 为什么用这个方法只能打印出6个

        \       ${eletxt}=   evaluate  $hot_good.get_attribute('innerText')
        \       log to console   ${eletxt}

        close browser
