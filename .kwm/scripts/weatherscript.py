#! /usr/local/bin/python3

import json
import urllib.request
import socket
from socket import AF_INET, SOCK_STREAM, timeout
from urllib.error import URLError, HTTPError

def check_connectivity(host="8.8.8.8", port=53, timeout=10):
    """
    Host: 8.8.8.8 (google-public-dns-a.google.com)
    OpenPort: 53/tcp
    Service: domain (DNS/TCP)
    """
    try:
      socket.setdefaulttimeout(timeout)
      socket.socket(socket.AF_INET, socket.SOCK_STREAM).connect((host, port))
      return True
    except socket.timeout:
        return False
    except socket.error:
        return False
    else:
        return False

def main():
  if check_connectivity() == True:
    loc_json = "http://ip-api.com/json"
    loc_result = urllib.request.urlopen(loc_json).read()
    loc_data = json.loads(loc_result.decode())
    latitude = str(loc_data['lat'])
    longitude = str(loc_data['lon'])
    city = loc_data['city']
    region = loc_data['region']
    # print(city + ", " + region)

    baseurl = "https://query.yahooapis.com/v1/public/yql?"
    yql_query = 'SELECT * FROM weather.forecast where woeid in (SELECT woeid FROM geo.places(1) WHERE text="'+ city + ', ' + region + '")'
    yql_url = baseurl + urllib.parse.urlencode({'q':yql_query}) + "&format=json"
    try:
        data = []
        result = urllib.request.urlopen(yql_url).read()
        data = json.loads(result.decode())
        if data['query']['results']['channel']['item']['forecast'][4]['day'] != None:
          print(data['query']['results']['channel']['item']['condition']['temp'] + '@' +
            data['query']['results']['channel']['item']['condition']['code'] +'@' +
            data['query']['results']['channel']['item']['forecast'][0]['low'] + '@' +
            data['query']['results']['channel']['item']['forecast'][0]['high'] + '@' +
            data['query']['results']['channel']['item']['forecast'][0]['code'] + '@' +
            data['query']['results']['channel']['item']['forecast'][0]['day'] + '@' +
            data['query']['results']['channel']['item']['forecast'][1]['low'] + '@' +
            data['query']['results']['channel']['item']['forecast'][1]['high'] + '@' +
            data['query']['results']['channel']['item']['forecast'][1]['code'] + '@' +
            data['query']['results']['channel']['item']['forecast'][1]['day'] + '@' +
            data['query']['results']['channel']['item']['forecast'][2]['low'] + '@' +
            data['query']['results']['channel']['item']['forecast'][2]['high'] + '@' +
            data['query']['results']['channel']['item']['forecast'][2]['code'] + '@' +
            data['query']['results']['channel']['item']['forecast'][2]['day'] + '@' +
            data['query']['results']['channel']['item']['forecast'][3]['low'] + '@' +
            data['query']['results']['channel']['item']['forecast'][3]['high'] + '@' +
            data['query']['results']['channel']['item']['forecast'][3]['code'] + '@' +
            data['query']['results']['channel']['item']['forecast'][3]['day'] + '@' +
            data['query']['results']['channel']['item']['forecast'][4]['low'] + '@' +
            data['query']['results']['channel']['item']['forecast'][4]['high'] + '@' +
            data['query']['results']['channel']['item']['forecast'][4]['code'] + '@' +
            data['query']['results']['channel']['item']['forecast'][4]['day'] + '@' +
            city + '@' + region)
        else:
          print("--@99")
        return
    except HTTPError:
        print("--@99")
        return
    except URLError:
        print("--@99")
        return
    except TypeError:
        print("--@99")
        return
    except timeout:
        print("--@99")
        return
    else:
        return
  else:
    print("--@99")

main()

