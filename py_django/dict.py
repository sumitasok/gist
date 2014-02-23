params = dict([(k, v) for k, v in kwargs.items() if '__' not in k])

params.update({"key": "value"})

def test(k,v):
    return(k, v+1)

params = dict([test(k, v) for k, v in kwargs.items() if '__' not in k])
# kwargs => {'a': 1, 'b': 2}
# params => {'a': 2, 'b': 3}

a = "545.2222"
float(a)
# http://stackoverflow.com/questions/379906/parse-string-to-float-or-int

1 in [1,2,3]
4 in [1,2,3,4]
5 in [1,2,3,4]
# http://www.gossamer-threads.com/lists/python/python/738925

# {'userLongitude': '77.6167075', 'longitude': '77.6167075', 'postLocationName': 'Momos Chinese Delicacy', 'latitude': '12.936214', 'qxtFriends': '1, 2', 'postText': 'post text', 'category': 'Reflectors ,Road', 'userLatitude': '12.936214'}
>>> post_data = _
dict([(k, float(v))  for k, v in post_data.items() if(k in ['userLongitude','longitude','latitude','userLatitude'])])
float_values = dict([(k, float(v))  for k, v in post_data.items() if(k in ['userLongitude','longitude','latitude','userLatitude'])])
float_values
# {'latitude': 12.936214, 'userLongitude': 77.6167075, 'longitude': 77.6167075, 'userLatitude': 12.936214}
post_data.update(float_values)
post_data
# {'userLongitude': 77.6167075, 'longitude': 77.6167075, 'postLocationName': 'Momos Chinese Delicacy', 'latitude': 12.936214, 'qxtFriends': '1, 2', 'postText': 'post text', 'category': 'Reflectors ,Road', 'userLatitude': 12.936214}
