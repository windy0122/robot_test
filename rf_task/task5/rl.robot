*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  String
Library  Collections

*** Test Cases ***
deletecourse
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
    \   log to console       ${res_id['id']}
    \   ${params_delete}=        Create Dictionary      action=delete_course       id=${res_id['id']}
    \    ${res}=        delete request      url       /api/mgr/sq_mgr/       ${params_delete}




