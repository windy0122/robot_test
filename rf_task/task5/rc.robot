*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  RequestsLibrary
Library  JSONLibrary

*** Variables ***
${username}         auto
${password}         sdfsdfsdf
${loginurl}         http://localhost/mgr/login/login.html

*** Keywords ***
Setup WebTest
        open browser        ${loginurl}         chrome
        set selenium implicit wait              5

Teardown WebTest
        close browser

deleteCourse
        [Tags]      删除课程
        #   先列出课程
        create session       url       http://localhost
        ${params}=        Create Dictionary      action=list_course     pagenum=1       pagesize=20
    #    log to console      ${params}
        ${res}=             get request        url       /api/mgr/sq_mgr/       params=${params}
    #    log to console      ${res.status_code}
        ${res1}=         to json         ${res.content}
    #    ${res_list}=       evaluate          ${res1['retlist']}
    #    log to console      ${res_list}

        #   循环列出课程后的信息，获取所有课程的id值，通过id值删除课程
        :FOR        ${res_id}       IN      @{res1['retlist']}
#        \   log to console       ${res_id['id']}
        \   ${params_delete}=        Create Dictionary      action=delete_course       id=${res_id['id']}
        \    ${res}=        delete request      url       /api/mgr/sq_mgr/       ${params_delete}


loginWebsite
#        open browser        ${loginurl}       chrome
#        set selenium implicit wait      5

        # 登录
        input text          id=username         ${username}
        input text          id=password         ${password}
        click button        class=btn
        sleep               2

addCourse
        [Arguments]     ${name}     ${desc}     ${idx}

        # 添加课程
        click element       class=btn-blue
        input text          css=[ng-model='addData\.name']          ${name}
        input text          css=textarea                            ${desc}
        input text          css=[ng-model='addData\.display_idx']   ${idx}
        click button        css=[ng-click='addOne\(\)']
        click button        css=[ng-click='\$parent\.showAddOne\=false']

        sleep               2

checkCourse
        [Arguments]     ${name}
        # 因为只添加一门课程，所以直接获取该课程的课程名即可
        ${lesson}=        get text         css=tr>td:nth-child(2)
        log to console      ${lesson}

        # 通过run keyword if 判断添加后的课程是否为自己添加的课程，注意$lesson 不要加{}，因为
        # 题目要求只需要添加一门课程即可，所以此方法可行，如果多门课程则需通过列表判断
        run keyword if      $lesson==$name       log to console      课程添加正确
        ...     ELSE        log to console      课程添加错误，请重新添加