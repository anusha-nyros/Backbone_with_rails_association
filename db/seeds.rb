# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

countries = Country.create([{name: "Afghanistan"}, {name: "Albania"}, {name: "Algeria"}, {name: "American Samoa"}, {name: "Angola"}, {name: "Anguilla"}, {name: "Antartica"}, {name: "Antigua and Barbuda"}, {name: "Argentina"}, {name: "Armenia"}, {name: "Aruba"}, {name: "Ashmore and Cartier Island"}, {name: "Australia"}, {name: "Austria"}, {name: "Azerbaijan"}, {name: "Bahamas"}, {name: "Bahrain"}, {name: "Bangladesh"}, {name: "Barbados"}, {name: "Belarus"}, {name: "Belgium"}, {name: "Belize"}, {name: "Benin"}, {name: "Bermuda"}, {name: "Bhutan"}, {name: "Bolivia"}, {name: "Bosnia and Herzegovina"}, {name: "Botswana"}, {name: "Brazil"}, {name: "British Virgin Islands"}, {name: "Brunei"}, {name: "Bulgaria"}, {name: "Burkina Faso"}, {name: "Burma"}, {name: "Burundi"}, {name: "Cambodia"}, {name: "Cameroon"}, {name: "Canada"}, {name: "Cape Verde"}, {name: "Cayman Islands"}, {name: "Central African Republic"}, {name: "Chad"}, {name: "Chile"}, {name: "China"}, {name: "Christmas Island"}, {name: "Clipperton Island"}, {name: "Cocos (Keeling) Islands"}, {name: "Colombia"}, {name: "Comoros"}, {name: "Congo, Democratic Republic of the"}, {name: "Congo, Republic of the"}, {name: "Cook Islands"}, {name: "Costa Rica"}, {name: "Cote d'Ivoire"}, {name: "Croatia"}, {name: "Cuba"}, {name: "Cyprus"}, {name: "Czeck Republic"}, {name: "Denmark"}, {name: "Djibouti"}, {name: "Dominica"}, {name: "Dominican Republic"}, {name: "Ecuador"}, {name: "Egypt"}, {name: "El Salvador"}, {name: "Equatorial Guinea"}, {name: "Eritrea"}, {name: "Estonia"}, {name: "Ethiopia"}, {name: "Europa Island"}, {name: "Falkland Islands (Islas Malvinas)"}, {name: "Faroe Islands"}, {name: "Fiji"}, {name: "Finland"}, {name: "France"}, {name: "French Guiana"}, {name: "French Polynesia"}, {name: "French Southern and Antarctic Lands"}, {name: "Gabon"}, {name: "Gambia, The"}, {name: "Gaza Strip"}, {name: "Georgia"}, {name: "Germany"}, {name: "Ghana"}, {name: "Gibraltar"}, {name: "Glorioso Islands"}, {name: "Greece"}, {name: "Greenland"}, {name: "Grenada"}, {name: "Guadeloupe"}, {name: "Guam"}, {name: "Guatemala"}, {name: "Guernsey"}, {name: "Guinea"}, {name: "Guinea-Bissau"}, {name: "Guyana"}, {name: "Haiti"}, {name: "Heard Island and McDonald Islands"}, {name: "Holy See (Vatican City)"}, {name: "Honduras"}, {name: "Hong Kong"}, {name: "Howland Island"}, {name: "Hungary"}, {name: "Iceland"}, {name: "India"}, {name: "Indonesia"}, {name: "Iran"}, {name: "Iraq"}, {name: "Ireland"}, {name: "Ireland, Northern"}, {name: "Israel"}, {name: "Italy"}, {name: "Jamaica"}, {name: "Jan Mayen"}, {name: "Japan"}, {name: "Jarvis Island"}, {name: "Jersey"}, {name: "Johnston Atoll"}, {name: "Jordan"}, {name: "Juan de Nova Island"}, {name: "Kazakhstan"}, {name: "Kenya"}, {name: "Kiribati"}, {name: "Korea, North"}, {name: "Korea, South"}, {name: "Kuwait"}, {name: "Kyrgyzstan"}, {name: "Laos"}, {name: "Latvia"}, {name: "Lebanon"}, {name: "Lesotho"}, {name: "Liberia"}, {name: "Libya"}, {name: "Liechtenstein"}, {name: "Lithuania"}, {name: "Luxembourg"}, {name: "Macau"}, {name: "Macedonia, Former Yugoslav Republic of"}, {name: "Madagascar"}, {name: "Malawi"}, {name: "Malaysia"}, {name: "Maldives"}, {name: "Mali"}, {name: "Malta"}, {name: "Man, Isle of"}, {name: "Marshall Islands"}, {name: "Martinique"}, {name: "Mauritania"}, {name: "Mauritius"}, {name: "Mayotte"}, {name: "Mexico"}, {name: "Micronesia, Federated States of"}, {name: "Midway Islands"}, {name: "Moldova"}, {name: "Monaco"}, {name: "Mongolia"}, {name: "Montserrat"}, {name: "Morocco"}, {name: "Mozambique"}, {name: "Namibia"}, {name: "Nauru"}, {name: "Nepal"}, {name: "Netherlands"}, {name: "Netherlands Antilles"}, {name: "New Caledonia"}, {name: "New Zealand"}, {name: "Nicaragua"}, {name: "Niger"}, {name: "Nigeria"}, {name: "Niue"}, {name: "Norfolk Island"}, {name: "Northern Mariana Islands"}, {name: "Norway"}, {name: "Oman"}, {name: "Pakistan"}, {name: "Palau"}, {name: "Panama"}, {name: "Papua New Guinea"}, {name: "Paraguay"}, {name: "Peru"}, {name: "Philippines"}, {name: "Pitcaim Islands"}, {name: "Poland"}, {name: "Portugal"}, {name: "Puerto Rico"}, {name: "Qatar"}, {name: "Reunion"}, {name: "Romainia"}, {name: "Russia"}, {name: "Rwanda"}, {name: "Saint Helena"}, {name: "Saint Kitts and Nevis"}, {name: "Saint Lucia"}, {name: "Saint Pierre and Miquelon"}, {name: "Saint Vincent and the Grenadines"}, {name: "Samoa"}, {name: "San Marino"}, {name: "Sao Tome and Principe"}, {name: "Saudi Arabia"}, {name: "Scotland"}, {name: "Senegal"}, {name: "Seychelles"}, {name: "Sierra Leone"}, {name: "Singapore"}, {name: "Slovakia"}, {name: "Slovenia"}, {name: "Solomon Islands"}, {name: "Somalia"}, {name: "South Africa"}, {name: "South Georgia and South Sandwich Islands"}, {name: "Spain"}, {name: "Spratly Islands"}, {name: "Sri Lanka"}, {name: "Sudan"}, {name: "Suriname"}, {name: "Svalbard"}, {name: "Swaziland"}, {name: "Sweden"}, {name: "Switzerland"}, {name: "Syria"}, {name: "Taiwan"}, {name: "Tajikistan"}, {name: "Tanzania"}, {name: "Thailand"}, {name: "Tobago"}, {name: "Toga"}, {name: "Tokelau"}, {name: "Tonga"}, {name: "Trinidad"}, {name: "Tunisia"}, {name: "Turkey"}, {name: "Turkmenistan"}, {name: "Tuvalu"}, {name: "Uganda"}, {name: "Ukraine"}, {name: "United Arab Emirates"}, {name: "United Kingdom"}, {name: "Uruguay"}, {name: "USA"}, {name: "Uzbekistan"}, {name: "Vanuatu"}, {name: "Venezuela"}, {name: "Vietnam"}, {name: "Virgin Islands"}, {name: "Wales"}, {name: "Wallis and Futuna"}, {name: "West Bank"}, {name: "Western Sahara"}, {name: "Yemen"}, {name: "Yugoslavia"}, {name: "Zambia"}, {name: "Zimbabwe"}])

country_arr = ["Afghanistan", "Albania", "Algeria", "American Samoa", "Angola", "Anguilla", "Antartica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Ashmore and Cartier Island", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brazil", "British Virgin Islands", "Brunei", "Bulgaria", "Burkina Faso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Clipperton Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo, Democratic Republic of the", "Congo, Republic of the", "Cook Islands", "Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czeck Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Europa Island", "Falkland Islands (Islas Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "French Guiana", "French Polynesia", "French Southern and Antarctic Lands", "Gabon", "Gambia, The", "Gaza Strip", "Georgia", "Germany", "Ghana", "Gibraltar", "Glorioso Islands", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard Island and McDonald Islands", "Holy See (Vatican City)", "Honduras", "Hong Kong", "Howland Island", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Ireland, Northern", "Israel", "Italy", "Jamaica", "Jan Mayen", "Japan", "Jarvis Island", "Jersey", "Johnston Atoll", "Jordan", "Juan de Nova Island", "Kazakhstan", "Kenya", "Kiribati", "Korea, North", "Korea, South", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia, Former Yugoslav Republic of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Man, Isle of", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Midway Islands", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcaim Islands", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romainia", "Russia", "Rwanda", "Saint Helena", "Saint Kitts and Nevis", "Saint Lucia", "Saint Pierre and Miquelon", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Scotland", "Senegal", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and South Sandwich Islands", "Spain", "Spratly Islands", "Sri Lanka", "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Tobago", "Toga", "Tokelau", "Tonga", "Trinidad", "Tunisia", "Turkey", "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "Uruguay", "USA", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Virgin Islands", "Wales", "Wallis and Futuna", "West Bank", "Western Sahara", "Yemen", "Yugoslavia", "Zambia", "Zimbabwe"]

Afghanistan_states = State.create([{name: "Badakhshan"}, {name: "Badghis"}, {name: "Baghlan"}, {name: "Balkh"}, {name: "Bamian"}, {name: "Farah"}, {name: "Faryab"}, {name: "Ghazni"}, {name: "Ghowr"}, {name: "Helmand"}, {name: "Herat"}, {name: "Jowzjan"}, {name: "Kabol"}, {name: "Kandahar"}, {name: "Kapisa"}, {name: "Konar"}, {name: "Kondoz"}, {name: "Laghman"}, {name: "Lowgar"}, {name: "Nangarhar"}, {name: "Nimruz"}, {name: "Oruzgan"}, {name: "Paktia"}, {name: "Paktika"}, {name: "Parvan"},{name: "Samangan"}, {name: "Sar-e Pol"}, {name: "Takhar"}, {name: "Vardak"}, {name: "Zabol"}])

Albania_states = State.create([{name: "Berat"}, {name: "Bulqize"}, {name: "Delvine"}, {name: "Devoll (Bilisht)"}, {name: "Diber (Peshkopi)"}, {name: "Durres"}, {name: "Elbasan"}, {name: "Fier"}, {name: "Gjirokaste"}, {name: "Gramsh"}, {name: "Has (Krume)"}, {name: "Kavaje"}, {name: "Kolonje (Erseke)"}, {name: "Korce"}, {name: "Kruje"}, {name: "Kucove"}, {name: "Kukes"}, {name: "Kurbin"}, {name: "Lezhe"}, {name: "Librazhd"}, {name: "Lushnje"}, {name: "Malesi e Madhe (Koplik)"}, {name: "Mallakaster (Ballsh)"}, {name: "Mat (Burrel)"}, {name: "Mirdite (Rreshen)"}, {name: "Peqin"}, {name: "Permet"}, {name: "Pogradec"}, {name: "Puke"}, {name: "Sarande"}, {name: "Shkoder"}, {name: "Skrapar (Corovode)"}, {name: "Tepelene"}, {name: "Tirane (Tirana)"}, {name: "Tirane (Tirana)"}, {name: "Tropoje (Bajram Curri)"}, {name: "Vlore"}])

Algeria_states = State.create([{name: "Adrar"}, {name: "Ain Defla"}, {name: "Ain Temouchent"}, {name: "Alger"}, {name: "Annaba"}, {name: "Batna"}, {name: "Bechar"}, {name: "Bejaia"}, {name: "Biskra"}, {name: "Blida"}, {name: "Bordj Bou Arreridj"}, {name: "Bouira"}, {name: "Boumerdes"}, {name: "Chlef"}, {name: "Constantine"}, {name: "Djelfa"}, {name: "El Bayadh"}, {name: "El Tarf"}, {name: "Ghardaia"}, {name: "Guelma"}, {name: "Illizi"}, {name: "Jijel"}, {name: "Khenchela"}, {name: "Laghouat"}, {name: "M'Sila"}, {name: "Mascara"}, {name: "Medea"}, {name: "Mila"}, {name: "Mostaganem"}, {name: "Naama"}, {name: "Oran"}, {name: "Ouargla"}, {name: "Oum el Bouaghi"}, {name: "Relizane"}, {name: "Saida"}, {name: "Setif"}, {name: "Sidi Bel Abbes"}, {name: "Skikda"}, {name: "Souk Ahras"}, {name: "Tamanghasset"}, {name: "Tebessa"}, {name: "Tiaret"}, {name: "Tindouf"}, {name: "Tipaza"}, {name: "Tissemsilt"}, {name: "Tizi Ouzou"}, {name: "Tlemcen"}])

American_Samoa_states = State.create([{name: "Eastern"}, {name: "Manu'a"}, {name: "Rose Island"}, {name: "Swains Island"}, {name: "Western"}])

Angola_states = State.create([{name: "Andorra la Vella"}, {name: "Bengo"}, {name: "Benguela"}, {name: "Bie"}, {name: "Cabinda"}, {name: "Canillo"}, {name: "Cuando Cubango"}, {name: "Cuanza Norte"}, {name: "Cuanza Sul"}, {name: "Cunene"}, {name: "Encamp"}, {name: "Escaldes-Engordany"}, {name: "Huambo"}, {name: "Huila"}, {name: "La Massana"}, {name: "Luanda"}, {name: "Lunda Norte"}, {name: "Lunda Sul"}, {name: "Malanje"}, {name: "Moxico"}, {name: "Namibe"}, {name: "Ordino"}, {name: "Sant Julia de Loria"}, {name: "Uige"}, {name: "Zaire"}])

Anguilla_states = State.create([{name: "Anguilla"}])

Antartica_states = State.create([{name: "Antartica"}])

Antigua_and_Barbuda_states = State.create([{name: "Barbuda"}, {name: "Redonda"}, {name: "Saint George"}, {name: "Saint John"}, {name: "Saint Mary"}, {name: "Saint Paul"}, {name: "Saint Peter"}, {name: "Saint Philip"}])


Argentina_states = State.create([{name: "Aragatsotn"}, {name: "Ararat"}, {name: "Armavir"}, {name: "Geghark'unik'"}, {name: "Kotayk'"}, {name: "Lorri"}, {name: "Shirak"}, {name: "Syunik'"}, {name: "Tavush"}, {name: "Vayots' Dzor"}, {name: "Yerevan"}])

Armenia_states = State.create([{name: "Aragatsotn"}, {name: "Ararat"}, {name: "Armavir"}, {name: "Geghark'unik'"}, {name: "Kotayk'"}, {name: "Lorri"}, {name: "Shirak"}, {name: "Syunik'"}, {name: "Tavush"}, {name: "Vayots' Dzor"}, {name: "Yerevan"}])

Aruba_states = State.create([{name: "Aruba"}])

Ashmore_and_Cartier_Island_states = State.create([{name: "Ashmore and Cartier Island"}])


Australia_states = State.create([{name: "Australian Capital Territory"}, {name: "New South Wales"}, {name: "Northern Territory"}, {name: "Queensland'"}, {name: "South Australia'"}, {name: "Tasmania"}, {name: "Victoria"}, {name: "Syunik'"}, {name: "Western Australia"}])

Austria_states = State.create([{name: "Burgenland"}, {name: "Kaernten"}, {name: "Niederoesterreich"}, {name: "Oberoesterreich'"}, {name: "Salzburg'"}, {name: "Steiermark"}, {name: "Tirol"}, {name: "Vorarlberg'"}, {name: "Wien"}])


Azerbaijan_states = State.create([{name: "Abseron Rayonu"}, {name: "Agcabadi Rayonu"}, {name: "Agdam Rayonu"}, {name: "Agdas Rayonu'"}, {name: "Agstafa Rayonu'"}, {name: "Agsu Rayonu"}, {name: "Ali Bayramli Sahari"}, {name: "Astara Rayonu"}, {name: "Baki Sahari"}, {name: "Balakan Rayonu"}, {name: "Barda Rayonu"}, {name: "Beylaqan Rayonu"}, {name: "Bilasuvar Rayonu"}, {name: "Cabrayil Rayonu"}, {name: "Calilabad Rayonu"}, {name: "Daskasan Rayonu"}, {name: "Davaci Rayonu"}, {name: "Kalbacar Rayonu"}, {name: "Kurdamir Rayonu"}, {name: "Lacin Rayonu"}, {name: "Lankaran Rayonu"}, {name: "Lankaran Sahari"}, {name: "Lerik Rayonu"}, {name: "Masalli Rayonu"}, {name: "Mingacevir Sahari"}, {name: "Naftalan Sahari"}, {name: "Naxcivan Muxtar Respublikasi"}, {name: "Neftcala Rayonu"}, {name: "Oguz Rayonu"}, {name: "Qabala Rayonu"}, {name: "Qax Rayonu"}, {name: "Qazax Rayonu"}, {name: "Qobustan Rayonu"}, {name: "Quba Rayonu"}, {name: "Qubadli Rayonu"}, {name: "Qusar Rayonu"}, {name: "Saatli Rayonu"}, {name: "Sabirabad Rayonu"}, {name: "Saki Rayonu"}, {name: "Saki Sahari"}, {name: "Salyan Rayonu"}, {name: "Samaxi Rayonu"}, {name: "Samux Rayonu"}, {name: "Siyazan Rayonu"}, {name: "Sumqayit Sahari"}, {name: "Susa Rayonu"}, {name: "Susa Sahari"}, {name: "Tartar Rayonu"}, {name: "Tovuz Rayonu"}, {name: "Xanlar Rayonu"}, {name: "Xizi Rayonu"}, {name: "Xocali Rayonu"}, {name: "Xocavand Rayonu"}, {name: "Yardimli Rayonu"}, {name: "Xankandi Sahari"}, {name: "Yevlax Rayonu"}, {name: "Yevlax Sahari"}, {name: "Zangilan Rayonu"}, {name: "Zaqatala Rayonu"}, {name: "Zardab Rayonu"}])


Bahamas_states = State.create([{name: "Acklins and Crooked Islands"}, {name: "Bimini"}, {name: "Cat Island"}, {name: "Exuma"}, {name: "Agstafa Rayonu"}, {name: "Agsu Rayonu"}, {name: "Freeport"}, {name: "Fresh Creek"}, {name: "Governor's Harbour"}, {name: "Green Turtle Cay"}, {name: "Harbour Island"}, {name: "High Rock"}, {name: "Inagua"}, {name: "Kemps Bay"}, {name: "Long Island"}, {name: "Marsh Harbour"}, {name: "Mayaguana"}, {name: "New Providence"}, {name: "Nicholls Town and Berry Islands"}, {name: "Ragged Island"}, {name: "Rock Sound"}, {name: "San Salvador and Rum Cay"}, {name: "Sandy Point"}])

Bahrain_states = State.create([{name: "Al Hadd"}, {name: "Al Manamah"}, {name: "Al Mintaqah al Gharbiyah"}, {name: "Al Mintaqah al Wusta"}, {name: "Al Mintaqah ash Shamaliyah"}, {name: "Al Muharraq"}, {name: "Ar Rifa' wa al Mintaqah al Janubiyah"}, {name: "Jidd Hafs"}, {name: "Juzur Hawar"}, {name: "Madinat 'Isa"}, {name: "Madinat Hamad"}, {name: "Sitrah"}])

Bangladesh_states = State.create([{name: "Barguna"}, {name: "Barisal"}, {name: "Bhola"}, {name: "Jhalokati"}, {name: "Patuakhali"}, {name: "Pirojpur"}, {name: "Bandarban"}, {name: "Brahmanbaria"}, {name: "Chandpur"}, {name: "Chittagong"}, {name: "Comilla"}, {name: "Cox's Bazar"}, {name: "Feni"}, {name: "Khagrachari"}, {name: "Lakshmipur"}, {name: "Noakhali"}, {name: "Rangamati"}, {name: "Faridpur"}, {name: "Dhaka"}, {name: "Gazipur"}, {name: "Gopalganj"}, {name: "Jamalpur"}, {name: "Kishoreganj"}, {name: "Madaripur"}, {name: "Manikganj"}, {name: "Munshiganj"}, {name: "Mymensingh"}, {name: "Narayanganj"}, {name: "Narsingdi"}, {name: "Netrokona"}, {name: "Rajbari"}, {name: "Shariatpur"}, {name: "Sherpur"}, {name: "Tangail"}, {name: "Bagerhat"}, {name: "Chuadanga"}, {name: "Jessore"}, {name: "Jhenaidah"}, {name: "Khulna"}, {name: "Kushtia"}, {name: "Magura"}, {name: "Lalmonirhat"}, {name: "Meherpur"}, {name: "Narail"}, {name: "Satkhira"}, {name: "Bogra"}, {name: "Dinajpur"}, {name: "Gaibandha"}, {name: "Kurigram"}, {name: "Jaipurhat"}, {name: "Naogaon"}, {name: "Natore"}, {name: "Nawabganj"}, {name: "Nilphamari"}, {name: "Pabna"}, {name: "Panchagarh"}, {name: "Rajshahi"}, {name: "Rangpur"}, {name: "Sirajganj"}, {name: "Habiganj"}, {name: "Maulvi bazar"}, {name: "Sunamganj"}, {name: "Sylhet"}])

Barbados_states = State.create([{name: "Bridgetown"}, {name: "Christ Church"}, {name: "Saint Andrew"}, {name: "Saint George"}, {name: "Saint James"}, {name: "Saint John"}, {name: "Saint Joseph"}, {name: "Saint Lucy"}, {name: "Saint Michael"}, {name: "Saint Peter"}, {name: "Saint Philip"}, {name: "Saint Thomas"}])

Belarus_states = State.create([{name: "Brestskaya (Brest)"}, {name: "Homyel'skaya (Homyel')"}, {name: "Horad Minsk"}, {name: "Hrodzyenskaya (Hrodna)"}, {name: "Saint George"}, {name: "Mahilyowskaya (Mahilyow)"}, {name: "Minskaya"}, {name: "Vitsyebskaya (Vitsyebsk)"}])

Belgium_states = State.create([{name: "Antwerpen"}, {name: "Brabant Wallon"}, {name: "Brussels Capitol Region"}, {name: "Hainaut"}, {name: "Liege"}, {name: "Limburg"}, {name: "Luxembourg"}, {name: "Namur"}, {name: "Oost-Vlaanderen"}, {name: "Vlaams Brabant"}, {name: "West-Vlaanderen"}])

Belize_states = State.create([{name: "Belize"}, {name: "Cayo|"}, {name: "Corozal"}, {name: "Orange Walk"}, {name: "Stann Creek"}, {name: "Toledo"}])

Afghanistan_states = State.create([{name: "Alibori"}, {name: "Atakora"}, {name: "Atlantique"}, {name: "Borgou"}, {name: "Collines"}, {name: "Couffo"}, {name: "Donga"}, {name: "Littoral"}, {name: "Mono"}, {name: "Oueme"}, {name: "Plateau"}, {name: "Zou"}])

Benin_states = State.create([{name: "Devonshire"}, {name: "Hamilton"}, {name: "Hamilton"}, {name: "Paget"}, {name: "Pembroke"}, {name: "Saint George"}, {name: "Saint Georges"}, {name: "Sandys"}, {name: "Smiths"}, {name: "Southampton"}, {name: "Warwick"}])

Bermuda_states = State.create([{name: "Bumthang"}, {name: "Chhukha"}, {name: "Chirang"}, {name: "Daga"}, {name: "Geylegphug"}, {name: "Ha"}, {name: "Lhuntshi"}, {name: "Mongar"}, {name: "Paro"}, {name: "Pemagatsel"}, {name: "Punakha"}, {name: "Samchi"}, {name: "Samdrup Jongkhar"}, {name: "Shemgang"}, {name: "Tashigang"}, {name: "Thimphu"}, {name: "Tongsa"}, {name: "Wangdi Phodrang"}])

Bhutan_states = State.create([{name: "Beni"}, {name: "Chuquisaca"}, {name: "Cochabamba"}, {name: "La Paz"}, {name: "Oruro"}, {name: "Pando"}, {name: "Potosi"}, {name: "Santa Cruz"}, {name: "Tarija"}])

Bolivia_states = State.create([{name: "Federation of Bosnia and Herzegovina"}, {name: "Republika Srpska"}])

Bosnia_and_Herzegovina_states = State.create([{name: "Central"}, {name: "Chobe"}, {name: "Francistown"}, {name: "Gaborone"}, {name: "Ghanzi"}, {name: "Kgalagadi"}, {name: "Kgatleng"}, {name: "Kweneng"}, {name: "Lobatse"}, {name: "Ngamiland"}, {name: "North-East"}, {name: "Selebi-Pikwe"}, {name: "South-East"}, {name: "Southern"}])

i=1
countries.each do |country, i|
	puts i
        if(country.name.include?(country_arr[i]))
	  if(country_arr[i].include(' '))
		country_arr[i] = country_arr[i].gsub(' ', '_')
	  end
	  country.states << "#{country_arr[i]}"+_states
	end
end
