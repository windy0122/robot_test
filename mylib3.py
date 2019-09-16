import os, sys, requests
import winsound


def opencalc():
    os.system('calc')


def printarg(*args,**kwargs):

    if len(args) == 0:
        print('** no args **')
    else:
        print('** args are **')
        print('-----------------')
        for one in args:
            print(repr(one))
        print('-----------------')

    if len(kwargs) == 0:
        print('** no kwargs **')
    else:
        print('** kwargs are **')
        print('-----------------')
        for k,v in kwargs.items():
            print(repr(k) + ':' + repr(v))
        print('-----------------')


def returnlist():
    return [1,2,3]


def returndict():
    return {
        'ele1' : 'male',
        'ele2' : 'female'
    }

# opencalc()


def getWebInfo():
    response = requests.get(
        'http://mirrors.163.com/centos/timestamp.txt'
    )
    return response.text


def beep():
    winsound.Beep(1500, 3000)


html = getWebInfo()
if '2018' in html:
    print('是2018年的')
else:
    print('不是2018年的')

