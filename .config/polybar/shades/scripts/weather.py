import requests
import datetime
#import api

API_KEY="31584b1d32ccd495ad40ce91ca0978da"
GEO = {
        "Detroit": {"lat": 42.335242, "lon": -83.054855},
        "HoChiMinh": {"lat": 10.8231, "lon": 106.6297}
}
current_city = "Detroit"
UNIT_KEY="Metric"
url=f"http://api.openweathermap.org/data/2.5/weather?lat={GEO[current_city]['lat']}&lon={GEO[current_city]['lon']}&appid={API_KEY}&units={UNIT_KEY}"
if API_KEY is None:
    print("Invalid API keys")
    exit()

try:
    res = requests.get(url).json()
    icloud=""
    ihumidity=""
    itemp=""
    main_weather = res["weather"][0]["description"].capitalize() 
    temp = res["main"]["temp"]
    humidity = res["main"]["humidity"]
    cloud = res["clouds"]["all"]

    time = int(datetime.datetime.now().strftime("%H"))
    if time > 5 and time < 18: 
        which = ''
    else:
        which = ''
    sys_res=f"{which} {main_weather} {itemp}: {temp}°C  {icloud}: {cloud}%  {ihumidity}: {humidity}%"
except Exception as e:
    print("Connect to a network!")
    sys_res = ""
    




print(sys_res)
