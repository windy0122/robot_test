*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  rc.robot
Library   RequestsLibrary
Suite Setup  Setup WebTest
Suite Teardown   Teardown WebTest


*** Test Cases ***
添加课程
        [setup]  deletecourse

        loginWebsite
        addCourse       初中数学        初中数学        2
        checkCourse     初中数学


        addCourse       初中化学        初中化学        1
        checkCourse     初中化学

        [teardown]  deletecourse
