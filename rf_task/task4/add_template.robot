*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  delete_course.py
Resource  rc.robot
Suite Setup  delete_all_course
Suite Teardown  delete_all_course

*** Test Cases ***
添加课程
        [Template]      addCourseWithData
        [setup]         loginWebsite    auto            sdfsdfsdf
        [teardown]      close browser

        初中化学        初中化学课程          2





*** Keywords ***
addCourseWithData
    [Arguments]     ${name}     ${desc}     ${idx}
    addCourse       ${name}     ${desc}     ${idx}
    checkCourse     ${name}

