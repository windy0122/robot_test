*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  delete_course.py

*** Test Cases ***
添加课程
        [setup]         delete_all_course
        open browser    http://localhost/mgr/login/login.html       chrome
        set selenium implicit wait      5

        # 登录
        input text          id=username         auto
        input text          id=password         sdfsdfsdf
        click button        class=btn
        sleep               2

        # 添加课程
        click element       class=btn-blue
        input text          css=[ng-model='addData\.name']          初中化学
        input text          css=textarea                            初中化学课程
        input text          css=[ng-model='addData\.display_idx']   2
        click button        css=[ng-click='addOne\(\)']

        sleep               2

        # 因为只添加一门课程，所以直接获取该课程的课程名即可
        ${lesson}=        get text         css=tr>td:nth-child(2)
        log to console      ${lesson}

        # 通过run keyword if 判断添加后的课程是否为自己添加的课程，注意$lesson 不要加{}，因为
        # 题目要求只需要添加一门课程即可，所以此方法可行，如果多门课程则需通过列表判断
        run keyword if      $lesson=='初中化学'       log to console      课程添加正确
        ...     ELSE        log to console      课程添加错误，请重新添加


        close browser

        [teardown]