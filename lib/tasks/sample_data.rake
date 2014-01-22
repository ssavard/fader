namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Stephanie",
                         email: "stephanie@meetrical.com",
                         password: "tsetoung",
                         password_confirmation: "tsetoung",
                         admin: true)
    User.create!(name: "Christine",
                 email: "christine@savardfaire.com",
                 password: "2012zouba",
                 password_confirmation: "2012zouba")
    Market.create!(name: "New York",
                 rank: "1",
                 description: "",
                 longitude: "-74.0059731",
                 latitude: "40.7143528")
    Market.create!(name: "Los Angeles",
                 rank: "2",
                 description: "",
                 longitude: "-118.2436849",
                 latitude: "34.0522342")
    Market.create!(name: "Chicago",
                 rank: "3",
                 description: "",
                 longitude: "-87.6297982",
                 latitude: "41.8781136")
    Market.create!(name: "Philadelphia",
                 rank: "4",
                 description: "",
                 longitude: "-75.163789",
                 latitude: "39.952335")
    Market.create!(name: "Dallas",
                 rank: "5",
                 description: "",
                 longitude: "-96.8004511",
                 latitude: "32.7801399")
    Market.create!(name: "San Francisco",
                 rank: "6",
                 description: "San Francisco-Oakland-San Jose",
                 longitude: "-122.4194155",
                 latitude: "37.7749295")
    Market.create!(name: "Boston",
                 rank: "7",
                 description: "",
                 longitude: "-71.0597732",
                 latitude: "42.3584308")
    Market.create!(name: "Atlanta",
                 rank: "8",
                 description: "",
                 longitude: "-84.3879824",
                 latitude: "33.7489954")
    Market.create!(name: "Washington",
                 rank: "9",
                 description: "",
                 longitude: "-77.0364641",
                 latitude: "38.9072309")
    Market.create!(name: "Houston",
                 rank: "10",
                 description: "",
                 longitude: "-95.3693896",
                 latitude: "29.7601927")
    Market.create!(name: "Detroit",
                 rank: "11",
                 description: "",
                 longitude: "-83.0457538",
                 latitude: "42.331427")
    Market.create!(name: "Phoenix",
                 rank: "12",
                 description: "",
                 longitude: "-112.0740373",
                 latitude: "33.4483771")
    Market.create!(name: "Tampa",
                 rank: "13",
                 description: "Tampa-St. Petersburg",
                 longitude: "-82.4571776",
                 latitude: "27.950575")
    Market.create!(name: "Seattle",
                 rank: "14",
                 description: "Seattle-Tacoma",
                 longitude: "-122.3320708",
                 latitude: "47.6062095")
    Market.create!(name: "Minneapolis",
                 rank: "15",
                 description: "Minneapolis-St. Paul",
                 longitude: "-93.26667",
                 latitude: "44.983334")
    Market.create!(name: "Miami",
                 rank: "16",
                 description: "Miami-Ft.Lauderdale",
                 longitude: "-80.2264393",
                 latitude: "25.7889689")
    Market.create!(name: "Cleveland",
                 rank: "17",
                 description: "Cleveland-Akron",
                 longitude: "-81.6954088",
                 latitude: "41.4994954")
    Market.create!(name: "Denver",
                 rank: "18",
                 description: "Denver",
                 longitude: "-104.9847179",
                 latitude: "39.737567")
    Market.create!(name: "Orlando",
                 rank: "19",
                 description: "Orlando-Daytona Beach-Melbourne",
                 longitude: "-81.3792365",
                 latitude: "28.5383355")
    Market.create!(name: "Sacramento",
                 rank: "20",
                 description: "Sacramento-Stockton-Modesto",
                 longitude: "-121.4943996",
                 latitude: "38.5815719")
    Market.create!(name: "St Louis",
                 rank: "21",
                 description: "",
                 longitude: "-90.1994042",
                 latitude: "38.6270025")
    Market.create!(name: "Portland",
                 rank: "22",
                 description: "",
                 longitude: "-122.6762071",
                 latitude: "45.5234515")
    Market.create!(name: "Pittsburgh",
                 rank: "23",
                 description: "",
                 longitude: "-79.9958864",
                 latitude: "40.4406248")
    Market.create!(name: "Charlotte",
                 rank: "24",
                 description: "",
                 longitude: "-80.8431267",
                 latitude: "35.2270869")
    Market.create!(name: "Indianapolis",
                 rank: "25",
                 description: "",
                 longitude: "-86.158068",
                 latitude: "39.768403")
    Market.create!(name: "Baltimore",
                 rank: "26",
                 description: "",
                 longitude: "-76.6121893",
                 latitude: "39.2903848")
    Market.create!(name: "Raleigh",
                 rank: "27",
                 description: "Raleigh-Durham",
                 longitude: "-78.6381787",
                 latitude: "35.7795897")
    Market.create!(name: "San Diego",
                 rank: "28",
                 description: "San Diego",
                 longitude: "-117.1572551",
                 latitude: "32.7153292")
    Market.create!(name: "Nashville",
                 rank: "29",
                 description: "Nashville",
                 longitude: "-86.7833333",
                 latitude: "36.1666667")
    Market.create!(name: "Hartford",
                 rank: "30",
                 description: "Hartford-New Haven",
                 longitude: "-72.6850932",
                 latitude: "41.7637111")
    Market.create!(name: "Kansas City",
                 rank: "31",
                 description: "",
                 longitude: "-94.5785667",
                 latitude: "39.0997265")
    Market.create!(name: "Columbus",
                 rank: "32",
                 description: "",
                 longitude: "-82.9987942",
                 latitude: "39.9611755")
    Market.create!(name: "Salt Lake City",
                 rank: "33",
                 description: "",
                 longitude: "-111.8910474",
                 latitude: "40.7607793")
    Market.create!(name: "Cincinnati",
                 rank: "34",
                 description: "",
                 longitude: "-84.5120196",
                 latitude: "39.1031182")
    Market.create!(name: "Milwaukee",
                 rank: "35",
                 description: "",
                 longitude: "-87.9064736",
                 latitude: "43.0389025")
    Market.create!(name: "Greenville",
                 rank: "36",
                 description: "Greenville-Spartanburg-Asheville-Anderson",
                 longitude: "-82.3940104",
                 latitude: "34.8526176")
    Market.create!(name: "San Antonio",
                 rank: "37",
                 description: "San Antonio",
                 longitude: "-98.4936282",
                 latitude: "29.4241219")
    Market.create!(name: "West Palm Beach",
                 rank: "38",
                 description: "West Palm Beach-Ft. Pierce",
                 longitude: "-80.0533746",
                 latitude: "26.7153424")
    Market.create!(name: "Grand Rapids",
                 rank: "39",
                 description: "Grand Rapids-Kalamazoo-Battle Creek",
                 longitude: "-85.6680863",
                 latitude: "42.9633599")
    Market.create!(name: "Birmingham",
                 rank: "40",
                 description: "Birmingham",
                 longitude: "-86.80249",
                 latitude: "33.5206608")
    Market.create!(name: "Harrisburg",
                 rank: "41",
                 description: "Harrisburg-Lancaster-Lebanon-York",
                 longitude: "-76.8844179",
                 latitude: "40.2737002")
    Market.create!(name: "Las Vegas",
                 rank: "42",
                 description: "Las Vegas",
                 longitude: "-115.172816",
                 latitude: "36.114646")
    Market.create!(name: "Norfolk",
                 rank: "43",
                 description: "Norfolk-Portsmouth-Newport News",
                 longitude: "-76.2858726",
                 latitude: "36.8507689")
    Market.create!(name: "Albuquerque",
                 rank: "44",
                 description: "Albuquerque-Santa Fe",
                 longitude: "-106.609991",
                 latitude: "35.110703")
    Market.create!(name: "Oklahoma City",
                 rank: "45",
                 description: "Oklahoma City",
                 longitude: "-97.5164276",
                 latitude: "35.4675602")
    Market.create!(name: "Greensboro",
                 rank: "46",
                 description: "Greensboro-High Point-Winston-Salem",
                 longitude: "-79.7919754",
                 latitude: "36.0726354")
    Market.create!(name: "Jacksonville",
                 rank: "47",
                 description: "",
                 longitude: "-81.655651",
                 latitude: "30.3321838")
    Market.create!(name: "Memphis",
                 rank: "48",
                 description: "",
                 longitude: "-90.0489801",
                 latitude: "35.1495343")
    Market.create!(name: "Austin",
                 rank: "49",
                 description: "",
                 longitude: "-97.7430608",
                 latitude: "30.267153")
    Market.create!(name: "Louisville",
                 rank: "50",
                 description: "",
                 longitude: "-85.7584557",
                 latitude: "38.2526647")
    Market.create!(name: "Buffalo",
                 rank: "51",
                 description: "",
                 longitude: "-78.8783689",
                 latitude: "42.8864468")
    Market.create!(name: "Providence",
                 rank: "52",
                 description: "Providence-New Bedford",
                 longitude: "-71.4128343",
                 latitude: "41.8239891")
    Market.create!(name: "New Orleans",
                 rank: "53",
                 description: "New Orleans",
                 longitude: "-90.0715323",
                 latitude: "29.9510658")
    Market.create!(name: "Wilkes-Barre",
                 rank: "54",
                 description: "Wilkes Barre-Scranton",
                 longitude: "-75.8813075",
                 latitude: "41.2459149")
    Market.create!(name: "Fresno",
                 rank: "55",
                 description: "Fresno-Visalia",
                 longitude: "-119.7725868",
                 latitude: "36.7468422")
    Market.create!(name: "Little Rock",
                 rank: "56",
                 description: "Little Rock-Pine Bluff",
                 longitude: "-92.2895948",
                 latitude: "34.7464809")
    Market.create!(name: "Albany",
                 rank: "57",
                 description: "Albany-Schenectady-Troy",
                 longitude: "-73.7562317",
                 latitude: "42.6525793")
    Market.create!(name: "Richmond",
                 rank: "58",
                 description: "Richmond-Petersburg",
                 longitude: "-77.4360481",
                 latitude: "37.5407246")
    Market.create!(name: "Knoxville",
                 rank: "59",
                 description: "Knoxville",
                 longitude: "-83.9207392",
                 latitude: "35.9606384")
    Market.create!(name: "Mobile",
                 rank: "60",
                 description: "Mobile-Pensacola",
                 longitude: "-88.0430541",
                 latitude: "30.6943566")
    Market.create!(name: "Tulsa",
                 rank: "61",
                 description: "Tulsa",
                 longitude: "-95.992775",
                 latitude: "36.1539816")
    Market.create!(name: "Fort Myers",
                 rank: "62",
                 description: "Ft. Myers-Naples",
                 longitude: "-81.8723084",
                 latitude: "26.640628")
    Market.create!(name: "Lexington",
                 rank: "63",
                 description: "Lexington",
                 longitude: "-84.5037164",
                 latitude: "38.0405837")
    Market.create!(name: "Dayton",
                 rank: "64",
                 description: "Dayton",
                 longitude: "-84.1916069",
                 latitude: "39.7589478")
    Market.create!(name: "Charleston",
                 rank: "65",
                 description: "Charleston-Huntington",
                 longitude: "-81.6326234",
                 latitude: "38.3498195")
    Market.create!(name: "Flint",
                 rank: "66",
                 description: "Flint-Saginaw-Bay City",
                 longitude: "-83.6874562",
                 latitude: "43.0125274")
    Market.create!(name: "Roanoke",
                 rank: "67",
                 description: "Roanoke-Lynchburg",
                 longitude: "-79.9414266",
                 latitude: "37.2709704")
    Market.create!(name: "Tucson",
                 rank: "68",
                 description: "Tucson",
                 longitude: "-110.926479",
                 latitude: "32.2217429")
    Market.create!(name: "Wichita",
                 rank: "69",
                 description: "Wichita-Hutchinson",
                 longitude: "-97.3361111",
                 latitude: "37.6888889")
    Market.create!(name: "Green Bay",
                 rank: "70",
                 description: "Green Bay-Appleton",
                 longitude: "-88.019826",
                 latitude: "44.519159")
    Market.create!(name: "Des Moines",
                 rank: "71",
                 description: "Des Moines-Ames",
                 longitude: "-93.6091064",
                 latitude: "41.6005448")
    Market.create!(name: "Honolulu",
                 rank: "72",
                 description: "Honolulu",
                 longitude: "-157.8583333",
                 latitude: "21.3069444")
    Market.create!(name: "Toledo",
                 rank: "73",
                 description: "Toledo",
                 longitude: "-83.555212",
                 latitude: "41.6639383")
    Market.create!(name: "Springfield",
                 rank: "74",
                 description: "Springfield, MO",
                 longitude: "-93.2922989",
                 latitude: "37.2089572")
    Market.create!(name: "Spokane",
                 rank: "75",
                 description: "Spokane",
                 longitude: "-117.4260466",
                 latitude: "47.6587802")
    Market.create!(name: "Omaha",
                 rank: "76",
                 description: "Omaha",
                 longitude: "-95.9979883",
                 latitude: "41.2523634")
    Market.create!(name: "Portland",
                 rank: "77",
                 description: "Portland-Auburn",
                 longitude: "-70.2553259",
                 latitude: "43.661471")
    Market.create!(name: "Paducah",
                 rank: "78",
                 description: "Paducah-Cape Girardeau-Harrisburg",
                 longitude: "-88.6000478",
                 latitude: "37.0833893")
    Market.create!(name: "Columbia",
                 rank: "79",
                 description: "Columbia, SC",
                 longitude: "-81.0348144",
                 latitude: "34.0007104")
    Market.create!(name: "Rochester",
                 rank: "80",
                 description: "Rochester, NY",
                 longitude: "-77.6109219",
                 latitude: "43.16103")
    Market.create!(name: "Syracuse",
                 rank: "81",
                 description: "Syracuse",
                 longitude: "-76.1474244",
                 latitude: "43.0481221")
    Market.create!(name: "Huntsville",
                 rank: "82",
                 description: "Huntsville-Decatur",
                 longitude: "-86.5861037",
                 latitude: "34.7303688")
    Market.create!(name: "Champaign",
                 rank: "83",
                 description: "Champaign-Springfield-Decatur",
                 longitude: "-88.2433829",
                 latitude: "40.1164204")
    Market.create!(name: "Shreveport",
                 rank: "84",
                 description: "Shreveport",
                 longitude: "-93.7501789",
                 latitude: "32.5251516")
    Market.create!(name: "Madison",
                 rank: "85",
                 description: "Madison",
                 longitude: "-89.4012302",
                 latitude: "43.0730517")
    Market.create!(name: "Chattanooga",
                 rank: "86",
                 description: "Chattanooga",
                 longitude: "-85.3096801",
                 latitude: "35.0456297")
    Market.create!(name: "Harlingen",
                 rank: "87",
                 description: "Harlingen-Weslaco-Brownsville-McAllen",
                 longitude: "-97.6961026",
                 latitude: "26.1906306")
    Market.create!(name: "Cedar Rapids",
                 rank: "88",
                 description: "Cedar Rapids-Waterloo-Iowa City-Dubuque",
                 longitude: "-91.6656232",
                 latitude: "41.9778795")
    Market.create!(name: "South Bend",
                 rank: "89",
                 description: "South Bend-Elkhart",
                 longitude: "-86.2519898",
                 latitude: "41.6763545")
    Market.create!(name: "Jackson",
                 rank: "90",
                 description: "Jackson, MS",
                 longitude: "-90.1848103",
                 latitude: "32.2987573")
    Market.create!(name: "Colorado Springs",
                 rank: "91",
                 description: "Colorado Springs-Pueblo",
                 longitude: "-104.8213634",
                 latitude: "38.8338816")
    Market.create!(name: "Johnson City",
                 rank: "92",
                 description: "Tri-Cities, TN-NC-VA",
                 longitude: "-82.3534727",
                 latitude: "36.3134397")
    Market.create!(name: "Burlington",
                 rank: "93",
                 description: "Burlington-Plattsburgh",
                 longitude: "-73.212072",
                 latitude: "44.4758825")
    Market.create!(name: "Waco",
                 rank: "94",
                 description: "Waco-Temple-Bryan",
                 longitude: "-97.1466695",
                 latitude: "31.549333")
    Market.create!(name: "Baton Rouge",
                 rank: "95",
                 description: "Baton Rouge",
                 longitude: "-91.1403196",
                 latitude: "30.4582829")
    Market.create!(name: "Savannah",
                 rank: "96",
                 description: "Savannah",
                 longitude: "-81.0998342",
                 latitude: "32.0835407")
    Market.create!(name: "Davenport",
                 rank: "97",
                 description: "Davenport-Rock Island-Moline",
                 longitude: "-90.5776367",
                 latitude: "41.5236437")
    Market.create!(name: "El Paso",
                 rank: "98",
                 description: "El Paso",
                 longitude: "-106.4968055",
                 latitude: "31.7699559")
    Market.create!(name: "Charleston",
                 rank: "99",
                 description: "Charleston, SC",
                 longitude: "-79.9309216",
                 latitude: "32.7765656")
    Market.create!(name: "Fort Smith",
                 rank: "100",
                 description: "Ft. Smith-Fayetteville-Springdale-Rogers",
                 longitude: "-94.3985475",
                 latitude: "35.3859242")
            
  end
end