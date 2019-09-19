import json, requests


def list_course():
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

    course_id = []
    for course in res['retlist']:
        course_id.append(course['id'])
    return course_id


def delete_all_course():
    url = 'http://localhost/api/mgr/sq_mgr/'

    for i in list_course():
        payload = {
            "action": "delete_course",
            "id": i
        }

        r = requests.delete(url, data=payload)
        res = r.json()
        print(res)


if __name__ == '__main__':
    print(list_course())
    # print(delete_all_course())
