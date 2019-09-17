import json, requests


def listcouse():
    url = 'http://localhost/api/mgr/sq_mgr/'

    payload = {
        "action": "list_course",
        "pagenum": "1",
        "pagesize": "20"
    }

    r = requests.get(url, params=payload)

    res = r.json()
    # print(res['retlist'])
    # return [one['name'] for one in res['retlist']]

    couse_all = []
    for couse in res['retlist']:
        couse_all.append(couse['name'])
    return couse_all


if __name__ == '__main__':
    print(listcouse())
