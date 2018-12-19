local fisica = require("physics")

Bolas = {}

circulos = {}

function Bolas:bolinhas(event)

      for i = 0, 133 do
        circulos[i]= display.newCircle(20,2,2)
       fisica.addBody(circulos[i],"static")
        circulos[i].isSensor = true
      end
      

      circulos[1].x = 20
      circulos[1].y = 23
      circulos[2].x = 20
      circulos[2].y = 46
      circulos[3].x = 20
      circulos[3].y = 69
      circulos[4].x = 20
      circulos[4].y = 92
      circulos[5].x = 20
      circulos[5].y = 115
      circulos[6].x = 20
      circulos[6].y = 138
      circulos[7].x = 20
      circulos[7].y = 161
      circulos[8].x = 20
      circulos[8].y = 184
      circulos[9].x = 20
      circulos[9].y = 207
      circulos[10].x = 20
      circulos[10].y = 230
      circulos[11].x = 20
      circulos[11].y = 253
      circulos[12].x = 20
      circulos[12].y = 276
      circulos[13].x = 20
      circulos[13].y = 299
      circulos[14].x = 20
      circulos[14].y = 322
      circulos[15].x = 20
      circulos[15].y = 345
      circulos[16].x = 20
      circulos[16].y = 373

      circulos[17].x = 43
      circulos[17].y = 0
      circulos[18].x = 66
      circulos[18].y = 0
      circulos[19].x = 89
      circulos[19].y = 0
      circulos[20].x = 112
      circulos[20].y = 0
      circulos[21].x = 135
      circulos[21].y = 0
      circulos[22].x = 158
      circulos[22].y = 0
      circulos[23].x = 181
      circulos[23].y = 0
      circulos[24].x = 204
      circulos[24].y = 0
      circulos[25].x = 227
      circulos[25].y = 0
      circulos[26].x = 250
      circulos[26].y = 0
      circulos[27].x = 273
      circulos[27].y = 0
      
      circulos[28].x = 298
      circulos[28].y = 23
      circulos[29].x = 298
      circulos[29].y = 46
      circulos[30].x = 298
      circulos[30].y = 69
      circulos[31].x = 298
      circulos[31].y = 92
      circulos[32].x = 298
      circulos[32].y = 115
      circulos[33].x = 298
      circulos[33].y = 138
      circulos[34].x = 298
      circulos[34].y = 161
      circulos[35].x = 298
      circulos[35].y = 184
      circulos[36].x = 298
      circulos[36].y = 207
      circulos[37].x = 298
      circulos[37].y = 230
      circulos[38].x = 298
      circulos[38].y = 253
      circulos[39].x = 298
      circulos[39].y = 276
      circulos[40].x = 298
      circulos[40].y = 299
      circulos[41].x = 298
      circulos[41].y = 322
      circulos[42].x = 298
      circulos[42].y = 348
      circulos[43].x = 298
      circulos[43].y = 375
      circulos[44].x = 298
      circulos[44].y = 0

      circulos[45].x = 46
      circulos[45].y = 375
      circulos[46].x = 69
      circulos[46].y = 375
      circulos[47].x = 92
      circulos[47].y = 375
      circulos[48].x = 115
      circulos[48].y = 375
      circulos[49].x = 138
      circulos[49].y = 375
      circulos[50].x = 161
      circulos[50].y = 375
      circulos[51].x = 184
      circulos[51].y = 375
      circulos[52].x = 207
      circulos[52].y = 375
      circulos[53].x = 230
      circulos[53].y = 375
      circulos[54].x = 253
      circulos[54].y = 375
      circulos[55].x = 276
      circulos[55].y = 375 

      circulos[56].x = 40
      circulos[56].y = 272
      circulos[57].x = 60
      circulos[57].y = 272
      circulos[58].x = 77
      circulos[58].y = 275
      circulos[59].x = 100
      circulos[59].y = 272
      circulos[60].x = 120
      circulos[60].y = 272
      circulos[61].x = 140
      circulos[61].y = 272
      circulos[62].x = 160
      circulos[62].y = 272
      circulos[63].x = 180
      circulos[63].y = 272
      circulos[64].x = 200
      circulos[64].y = 272
      circulos[65].x = 220
      circulos[65].y = 272
      circulos[66].x = 240
      circulos[66].y = 272
      circulos[67].x = 260
      circulos[67].y = 272
      circulos[68].x = 280
      circulos[68].y = 272

      circulos[69].x = 75
      circulos[69].y = 50
      circulos[70].x = 75
      circulos[70].y = 73
      circulos[71].x = 75
      circulos[71].y = 96
      circulos[72].x = 75
      circulos[72].y = 119
      circulos[73].x = 75
      circulos[73].y = 142
      circulos[74].x = 75
      circulos[74].y = 165
      circulos[75].x = 75
      circulos[75].y = 188
      circulos[76].x = 75
      circulos[76].y = 211
      circulos[77].x = 75
      circulos[77].y = 234
      circulos[78].x = 75
      circulos[78].y = 257  
     
      circulos[79].x = 75
      circulos[79].y = 303  
      circulos[80].x = 75
      circulos[80].y = 326   
      

      circulos[81].x = 243
      circulos[81].y = 50   
      circulos[82].x = 243
      circulos[82].y = 73   
      circulos[83].x = 243
      circulos[83].y = 94   
      circulos[84].x = 243
      circulos[84].y = 114   
      circulos[85].x = 243
      circulos[85].y = 132 
      circulos[86].x = 243
      circulos[86].y = 150 
      circulos[87].x = 243
      circulos[87].y = 170 
      circulos[88].x = 243
      circulos[88].y = 190 
      circulos[89].x = 243
      circulos[89].y = 210 
      circulos[90].x = 243
      circulos[90].y = 230 
      circulos[91].x = 243
      circulos[91].y = 250 
      circulos[92].x = 243
      circulos[92].y = 290 
      circulos[93].x = 243
      circulos[93].y = 310 
      circulos[94].x = 243
      circulos[94].y = 330 

      circulos[95].x = 95
      circulos[95].y = 48 
      circulos[96].x = 115
      circulos[96].y = 48 
      circulos[97].x = 135
      circulos[97].y = 48 
      circulos[98].x = 155
      circulos[98].y = 48 
      circulos[99].x = 178
      circulos[99].y = 48 
      circulos[100].x = 200
      circulos[100].y = 48
      circulos[101].x = 220
      circulos[101].y = 48 

      circulos[102].x = 95
      circulos[102].y = 148 
      circulos[103].x = 115
      circulos[103].y = 148 
      circulos[104].x = 135
      circulos[104].y = 148 
      circulos[105].x = 155
      circulos[105].y = 148 
      circulos[106].x = 175
      circulos[106].y = 148 
      circulos[107].x = 195
      circulos[107].y = 148
      circulos[108].x = 215
      circulos[108].y = 148 

      circulos[109].x = 95
      circulos[109].y = 223 
      circulos[110].x = 115
      circulos[110].y = 223 
      circulos[111].x = 135
      circulos[111].y = 223 
      circulos[112].x = 155
      circulos[112].y = 223 
      circulos[113].x = 175
      circulos[113].y = 223 
      circulos[114].x = 195
      circulos[114].y = 223
      circulos[115].x = 215
      circulos[115].y = 223 

      circulos[116].x = 158
      circulos[116].y = 175
      circulos[117].x = 158
      circulos[117].y = 195

      circulos[118].x = 37
      circulos[118].y = 93
      circulos[119].x = 57
      circulos[119].y = 93
      circulos[120].x = 40
      circulos[120].y = 186
      circulos[121].x = 55
      circulos[121].y = 186

      circulos[122].x = 260
      circulos[122].y = 93
      circulos[123].x = 278
      circulos[123].y = 93

      circulos[124].x = 260
      circulos[124].y = 186
      circulos[125].x = 278
      circulos[125].y = 186

      circulos[126].x = 115
      circulos[126].y = 25
      circulos[127].x = 200
      circulos[127].y = 25

      circulos[128].x = 110
      circulos[128].y = 330
      circulos[129].x = 110
      circulos[129].y = 355
      circulos[130].x = 95
      circulos[130].y = 330

      circulos[131].x = 200
      circulos[131].y = 330
      circulos[132].x = 200
      circulos[132].y = 355
      circulos[133].x = 218
      circulos[133].y = 330

      for i=0,133 do
        circulos[i].name = "bolas"
       
      end
    end