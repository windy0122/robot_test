*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  delete_course.py
Resource  rc.robot

*** Test Cases ***
添加课程
        [setup]         delete_all_course
        [teardown]      delete_all_course

        loginWebsite    auto            sdfsdfsdf

        addCourse       初中化学        初中化学课程          2

        checkCourse

        close browser


