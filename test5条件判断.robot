*** Settings ***
Library  SeleniumLibrary
Library  mylib3.py
Library  Dialogs

*** Test Cases ***
条件判断
#        ${html}=            getwebinfo
##        run keyword if      '2019' in $html     log to console      2019年的
#        run keyword if      '2018' in $html and 'UTC' in $html     log to console      2019年的UTC时间
#        ...     ELSE    log to console      不是2019年的UTC时间

#        ${html}=            getWebInfo
#        run keyword if      '2019' in $html and 'UTC5' in $html
#        ...     log to console      2019年的UTC时间
#        ...     ELSE IF     '2018' in $html     log to console      2018年的
#        ...     ELSE IF     'UTC5' in $html     log to console      UTC5时间
#        ...     ELSE        log to console      以上都不是

#        ${weight}=          get value from user     请输入你的体重     60
#        log to console      体重为${weight}
#        run keyword if      int(${weight})>60       log to console      太重了
#        ...  ELSE           log to console          太轻了

        :FOR    ${one}      IN RANGE    999999
        \       ${weight}=      get value from user     请输入你的体重     60
        \       run keyword if      $weight=='over'     exit for loop
        \       log to console      体重为${weight}
        \       run keyword if      int(${weight})>60       log to console      太重了
        ...     ELSE    log to console      太轻了













