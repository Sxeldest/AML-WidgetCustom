; =========================================================
; Game Engine Function: _Z16InitModelIndicesv
; Address            : 0x471FE8 - 0x4723D4
; =========================================================

471FE8:  PUSH            {R4-R7,LR}
471FEA:  ADD             R7, SP, #0xC
471FEC:  PUSH.W          {R11}
471FF0:  LDR.W           R0, =(MI_TRAFFICLIGHTS_VERTICAL_ptr - 0x471FFC)
471FF4:  LDR.W           R12, =(MI_BASKETBALL_ptr - 0x472006)
471FF8:  ADD             R0, PC; MI_TRAFFICLIGHTS_VERTICAL_ptr
471FFA:  LDR.W           R2, =(MI_POOL_CUE_BALL_ptr - 0x472012)
471FFE:  LDR.W           R3, =(MI_PUNCHBAG_ptr - 0x472018)
472002:  ADD             R12, PC; MI_BASKETBALL_ptr
472004:  LDR             R1, [R0]; MI_TRAFFICLIGHTS_VERTICAL
472006:  MOVW            R0, #0xFFFF
47200A:  LDR.W           R4, =(MI_IMY_GRAY_CRATE_ptr - 0x47201C)
47200E:  ADD             R2, PC; MI_POOL_CUE_BALL_ptr
472010:  LDR.W           R5, =(MI_STEREO_UPGRADE_ptr - 0x472022)
472014:  ADD             R3, PC; MI_PUNCHBAG_ptr
472016:  STRH            R0, [R1]
472018:  ADD             R4, PC; MI_IMY_GRAY_CRATE_ptr
47201A:  LDR.W           R1, =(MI_TRAFFICLIGHTS_ptr - 0x472028)
47201E:  ADD             R5, PC; MI_STEREO_UPGRADE_ptr
472020:  LDR.W           R6, =(MI_HYDRAULICS_ptr - 0x47202E)
472024:  ADD             R1, PC; MI_TRAFFICLIGHTS_ptr
472026:  LDR.W           LR, [R2]; MI_POOL_CUE_BALL
47202A:  ADD             R6, PC; MI_HYDRAULICS_ptr
47202C:  LDR             R2, [R3]; MI_PUNCHBAG
47202E:  LDR             R1, [R1]; MI_TRAFFICLIGHTS
472030:  LDR             R3, [R4]; MI_IMY_GRAY_CRATE
472032:  LDR.W           R12, [R12]; MI_BASKETBALL
472036:  STRH            R0, [R1]
472038:  LDR.W           R1, =(MI_TRAFFICLIGHTS_MIAMI_ptr - 0x472042)
47203C:  LDR             R5, [R5]; MI_STEREO_UPGRADE
47203E:  ADD             R1, PC; MI_TRAFFICLIGHTS_MIAMI_ptr
472040:  LDR             R4, [R6]; MI_HYDRAULICS
472042:  STRH.W          R0, [R12]
472046:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_MIAMI
472048:  STRH            R0, [R4]
47204A:  STRH            R0, [R5]
47204C:  STRH            R0, [R1]
47204E:  LDR.W           R1, =(MI_TRAFFICLIGHTS_VEGAS_ptr - 0x47205A)
472052:  STRH.W          R0, [LR]
472056:  ADD             R1, PC; MI_TRAFFICLIGHTS_VEGAS_ptr
472058:  STRH            R0, [R2]
47205A:  STRH            R0, [R3]
47205C:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_VEGAS
47205E:  STRH            R0, [R1]
472060:  LDR.W           R1, =(MI_TRAFFICLIGHTS_TWOVERTICAL_ptr - 0x472068)
472064:  ADD             R1, PC; MI_TRAFFICLIGHTS_TWOVERTICAL_ptr
472066:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_TWOVERTICAL
472068:  STRH            R0, [R1]
47206A:  LDR.W           R1, =(MI_SINGLESTREETLIGHTS1_ptr - 0x472072)
47206E:  ADD             R1, PC; MI_SINGLESTREETLIGHTS1_ptr
472070:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS1
472072:  STRH            R0, [R1]
472074:  LDR.W           R1, =(MI_SINGLESTREETLIGHTS2_ptr - 0x47207C)
472078:  ADD             R1, PC; MI_SINGLESTREETLIGHTS2_ptr
47207A:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS2
47207C:  STRH            R0, [R1]
47207E:  LDR.W           R1, =(MI_SINGLESTREETLIGHTS3_ptr - 0x472086)
472082:  ADD             R1, PC; MI_SINGLESTREETLIGHTS3_ptr
472084:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS3
472086:  STRH            R0, [R1]
472088:  LDR.W           R1, =(MI_DOUBLESTREETLIGHTS_ptr - 0x472090)
47208C:  ADD             R1, PC; MI_DOUBLESTREETLIGHTS_ptr
47208E:  LDR             R1, [R1]; MI_DOUBLESTREETLIGHTS
472090:  STRH            R0, [R1]
472092:  LDR.W           R1, =(MI_STREETLAMP1_ptr - 0x47209A)
472096:  ADD             R1, PC; MI_STREETLAMP1_ptr
472098:  LDR             R1, [R1]; MI_STREETLAMP1
47209A:  STRH            R0, [R1]
47209C:  LDR.W           R1, =(MI_STREETLAMP2_ptr - 0x4720A4)
4720A0:  ADD             R1, PC; MI_STREETLAMP2_ptr
4720A2:  LDR             R1, [R1]; MI_STREETLAMP2
4720A4:  STRH            R0, [R1]
4720A6:  LDR.W           R1, =(MODELID_CRANE_1_ptr - 0x4720AE)
4720AA:  ADD             R1, PC; MODELID_CRANE_1_ptr
4720AC:  LDR             R1, [R1]; MODELID_CRANE_1
4720AE:  STRH            R0, [R1]
4720B0:  LDR.W           R1, =(MODELID_CRANE_2_ptr - 0x4720B8)
4720B4:  ADD             R1, PC; MODELID_CRANE_2_ptr
4720B6:  LDR             R1, [R1]; MODELID_CRANE_2
4720B8:  STRH            R0, [R1]
4720BA:  LDR.W           R1, =(MODELID_CRANE_3_ptr - 0x4720C2)
4720BE:  ADD             R1, PC; MODELID_CRANE_3_ptr
4720C0:  LDR             R1, [R1]; MODELID_CRANE_3
4720C2:  STRH            R0, [R1]
4720C4:  LDR.W           R1, =(MODELID_CRANE_4_ptr - 0x4720CC)
4720C8:  ADD             R1, PC; MODELID_CRANE_4_ptr
4720CA:  LDR             R1, [R1]; MODELID_CRANE_4
4720CC:  STRH            R0, [R1]
4720CE:  LDR.W           R1, =(MODELID_CRANE_5_ptr - 0x4720D6)
4720D2:  ADD             R1, PC; MODELID_CRANE_5_ptr
4720D4:  LDR             R1, [R1]; MODELID_CRANE_5
4720D6:  STRH            R0, [R1]
4720D8:  LDR.W           R1, =(MODELID_CRANE_6_ptr - 0x4720E0)
4720DC:  ADD             R1, PC; MODELID_CRANE_6_ptr
4720DE:  LDR             R1, [R1]; MODELID_CRANE_6
4720E0:  STRH            R0, [R1]
4720E2:  LDR.W           R1, =(MI_PARKINGMETER_ptr - 0x4720EA)
4720E6:  ADD             R1, PC; MI_PARKINGMETER_ptr
4720E8:  LDR             R1, [R1]; MI_PARKINGMETER
4720EA:  STRH            R0, [R1]
4720EC:  LDR.W           R1, =(MI_PARKINGMETER2_ptr - 0x4720F4)
4720F0:  ADD             R1, PC; MI_PARKINGMETER2_ptr
4720F2:  LDR             R1, [R1]; MI_PARKINGMETER2
4720F4:  STRH            R0, [R1]
4720F6:  LDR             R1, =(MI_HOTELFAN_NIGHT_ptr - 0x4720FC)
4720F8:  ADD             R1, PC; MI_HOTELFAN_NIGHT_ptr
4720FA:  LDR             R1, [R1]; MI_HOTELFAN_NIGHT
4720FC:  STRH            R0, [R1]
4720FE:  LDR             R1, =(MI_MALLFAN_ptr - 0x472104)
472100:  ADD             R1, PC; MI_MALLFAN_ptr
472102:  LDR             R1, [R1]; MI_MALLFAN
472104:  STRH            R0, [R1]
472106:  LDR             R1, =(MI_HOTELFAN_DAY_ptr - 0x47210C)
472108:  ADD             R1, PC; MI_HOTELFAN_DAY_ptr
47210A:  LDR             R1, [R1]; MI_HOTELFAN_DAY
47210C:  STRH            R0, [R1]
47210E:  LDR             R1, =(MI_HOTROOMFAN_ptr - 0x472114)
472110:  ADD             R1, PC; MI_HOTROOMFAN_ptr
472112:  LDR             R1, [R1]; MI_HOTROOMFAN
472114:  STRH            R0, [R1]
472116:  LDR             R1, =(MI_PHONEBOOTH1_ptr - 0x47211C)
472118:  ADD             R1, PC; MI_PHONEBOOTH1_ptr
47211A:  LDR             R1, [R1]; MI_PHONEBOOTH1
47211C:  STRH            R0, [R1]
47211E:  LDR             R1, =(MI_WASTEBIN_ptr - 0x472124)
472120:  ADD             R1, PC; MI_WASTEBIN_ptr
472122:  LDR             R1, [R1]; MI_WASTEBIN
472124:  STRH            R0, [R1]
472126:  LDR             R1, =(MI_BIN_ptr - 0x47212C)
472128:  ADD             R1, PC; MI_BIN_ptr
47212A:  LDR             R1, [R1]; MI_BIN
47212C:  STRH            R0, [R1]
47212E:  LDR             R1, =(MI_POSTBOX1_ptr - 0x472134)
472130:  ADD             R1, PC; MI_POSTBOX1_ptr
472132:  LDR             R1, [R1]; MI_POSTBOX1
472134:  STRH            R0, [R1]
472136:  LDR             R1, =(MI_NEWSSTAND_ptr - 0x47213C)
472138:  ADD             R1, PC; MI_NEWSSTAND_ptr
47213A:  LDR             R1, [R1]; MI_NEWSSTAND
47213C:  STRH            R0, [R1]
47213E:  LDR             R1, =(MI_TRAFFICCONE_ptr - 0x472144)
472140:  ADD             R1, PC; MI_TRAFFICCONE_ptr
472142:  LDR             R1, [R1]; MI_TRAFFICCONE
472144:  STRH            R0, [R1]
472146:  LDR             R1, =(MI_DUMP1_ptr - 0x47214C)
472148:  ADD             R1, PC; MI_DUMP1_ptr
47214A:  LDR             R1, [R1]; MI_DUMP1
47214C:  STRH            R0, [R1]
47214E:  LDR             R1, =(MI_ROADWORKBARRIER1_ptr - 0x472154)
472150:  ADD             R1, PC; MI_ROADWORKBARRIER1_ptr
472152:  LDR             R1, [R1]; MI_ROADWORKBARRIER1
472154:  STRH            R0, [R1]
472156:  LDR             R1, =(MI_ROADBLOCKFUCKEDCAR1_ptr - 0x47215C)
472158:  ADD             R1, PC; MI_ROADBLOCKFUCKEDCAR1_ptr
47215A:  LDR             R1, [R1]; MI_ROADBLOCKFUCKEDCAR1
47215C:  STRH            R0, [R1]
47215E:  LDR             R1, =(MI_ROADBLOCKFUCKEDCAR2_ptr - 0x472164)
472160:  ADD             R1, PC; MI_ROADBLOCKFUCKEDCAR2_ptr
472162:  LDR             R1, [R1]; MI_ROADBLOCKFUCKEDCAR2
472164:  STRH            R0, [R1]
472166:  LDR             R1, =(MI_BUSSIGN1_ptr - 0x47216C)
472168:  ADD             R1, PC; MI_BUSSIGN1_ptr
47216A:  LDR             R1, [R1]; MI_BUSSIGN1
47216C:  STRH            R0, [R1]
47216E:  LDR             R1, =(MI_NOPARKINGSIGN1_ptr - 0x472174)
472170:  ADD             R1, PC; MI_NOPARKINGSIGN1_ptr
472172:  LDR             R1, [R1]; MI_NOPARKINGSIGN1
472174:  STRH            R0, [R1]
472176:  LDR             R1, =(MI_PHONESIGN_ptr - 0x47217C)
472178:  ADD             R1, PC; MI_PHONESIGN_ptr
47217A:  LDR             R1, [R1]; MI_PHONESIGN
47217C:  STRH            R0, [R1]
47217E:  LDR             R1, =(MI_FIRE_HYDRANT_ptr - 0x472184)
472180:  ADD             R1, PC; MI_FIRE_HYDRANT_ptr
472182:  LDR             R1, [R1]; MI_FIRE_HYDRANT
472184:  STRH            R0, [R1]
472186:  LDR             R1, =(MI_COLLECTABLE1_ptr - 0x47218C)
472188:  ADD             R1, PC; MI_COLLECTABLE1_ptr
47218A:  LDR             R1, [R1]; MI_COLLECTABLE1
47218C:  STRH            R0, [R1]
47218E:  LDR             R1, =(MI_MONEY_ptr - 0x472194)
472190:  ADD             R1, PC; MI_MONEY_ptr
472192:  LDR             R1, [R1]; MI_MONEY
472194:  STRH            R0, [R1]
472196:  LDR             R1, =(MI_CARMINE_ptr - 0x47219C)
472198:  ADD             R1, PC; MI_CARMINE_ptr
47219A:  LDR             R1, [R1]; MI_CARMINE
47219C:  STRH            R0, [R1]
47219E:  LDR             R1, =(MI_NAUTICALMINE_ptr - 0x4721A4)
4721A0:  ADD             R1, PC; MI_NAUTICALMINE_ptr
4721A2:  LDR             R1, [R1]; MI_NAUTICALMINE
4721A4:  STRH            R0, [R1]
4721A6:  LDR             R1, =(MI_TELLY_ptr - 0x4721AC)
4721A8:  ADD             R1, PC; MI_TELLY_ptr
4721AA:  LDR             R1, [R1]; MI_TELLY
4721AC:  STRH            R0, [R1]
4721AE:  LDR             R1, =(MI_BRIEFCASE_ptr - 0x4721B4)
4721B0:  ADD             R1, PC; MI_BRIEFCASE_ptr
4721B2:  LDR             R1, [R1]; MI_BRIEFCASE
4721B4:  STRH            R0, [R1]
4721B6:  LDR             R1, =(MI_GLASS1_ptr - 0x4721BC)
4721B8:  ADD             R1, PC; MI_GLASS1_ptr
4721BA:  LDR             R1, [R1]; MI_GLASS1
4721BC:  STRH            R0, [R1]
4721BE:  LDR             R1, =(MI_GLASS8_ptr - 0x4721C4)
4721C0:  ADD             R1, PC; MI_GLASS8_ptr
4721C2:  LDR             R1, [R1]; MI_GLASS8
4721C4:  STRH            R0, [R1]
4721C6:  LDR             R1, =(MI_EXPLODINGBARREL_ptr - 0x4721CC)
4721C8:  ADD             R1, PC; MI_EXPLODINGBARREL_ptr
4721CA:  LDR             R1, [R1]; MI_EXPLODINGBARREL
4721CC:  STRH            R0, [R1]
4721CE:  LDR             R1, =(MI_PICKUP_ADRENALINE_ptr - 0x4721D4)
4721D0:  ADD             R1, PC; MI_PICKUP_ADRENALINE_ptr
4721D2:  LDR             R1, [R1]; MI_PICKUP_ADRENALINE
4721D4:  STRH            R0, [R1]
4721D6:  LDR             R1, =(MI_PICKUP_BODYARMOUR_ptr - 0x4721DC)
4721D8:  ADD             R1, PC; MI_PICKUP_BODYARMOUR_ptr
4721DA:  LDR             R1, [R1]; MI_PICKUP_BODYARMOUR
4721DC:  STRH            R0, [R1]
4721DE:  LDR             R1, =(MI_PICKUP_INFO_ptr - 0x4721E4)
4721E0:  ADD             R1, PC; MI_PICKUP_INFO_ptr
4721E2:  LDR             R1, [R1]; MI_PICKUP_INFO
4721E4:  STRH            R0, [R1]
4721E6:  LDR             R1, =(MI_PICKUP_HEALTH_ptr - 0x4721EC)
4721E8:  ADD             R1, PC; MI_PICKUP_HEALTH_ptr
4721EA:  LDR             R1, [R1]; MI_PICKUP_HEALTH
4721EC:  STRH            R0, [R1]
4721EE:  LDR             R1, =(MI_PICKUP_PROPERTY_ptr - 0x4721F4)
4721F0:  ADD             R1, PC; MI_PICKUP_PROPERTY_ptr
4721F2:  LDR             R1, [R1]; MI_PICKUP_PROPERTY
4721F4:  STRH            R0, [R1]
4721F6:  LDR             R1, =(MI_PICKUP_PROPERTY_FORSALE_ptr - 0x4721FC)
4721F8:  ADD             R1, PC; MI_PICKUP_PROPERTY_FORSALE_ptr
4721FA:  LDR             R1, [R1]; MI_PICKUP_PROPERTY_FORSALE
4721FC:  STRH            R0, [R1]
4721FE:  LDR             R1, =(MI_PICKUP_BONUS_ptr - 0x472204)
472200:  ADD             R1, PC; MI_PICKUP_BONUS_ptr
472202:  LDR             R1, [R1]; MI_PICKUP_BONUS
472204:  STRH            R0, [R1]
472206:  LDR             R1, =(MI_PICKUP_BRIBE_ptr - 0x47220C)
472208:  ADD             R1, PC; MI_PICKUP_BRIBE_ptr
47220A:  LDR             R1, [R1]; MI_PICKUP_BRIBE
47220C:  STRH            R0, [R1]
47220E:  LDR             R1, =(MI_PICKUP_KILLFRENZY_ptr - 0x472214)
472210:  ADD             R1, PC; MI_PICKUP_KILLFRENZY_ptr
472212:  LDR             R1, [R1]; MI_PICKUP_KILLFRENZY
472214:  STRH            R0, [R1]
472216:  LDR             R1, =(MI_PICKUP_CAMERA_ptr - 0x47221C)
472218:  ADD             R1, PC; MI_PICKUP_CAMERA_ptr
47221A:  LDR             R1, [R1]; MI_PICKUP_CAMERA
47221C:  STRH            R0, [R1]
47221E:  LDR             R1, =(MI_PICKUP_PARACHUTE_ptr - 0x472224)
472220:  ADD             R1, PC; MI_PICKUP_PARACHUTE_ptr
472222:  LDR             R1, [R1]; MI_PICKUP_PARACHUTE
472224:  STRH            R0, [R1]
472226:  LDR             R1, =(MI_PICKUP_REVENUE_ptr - 0x47222C)
472228:  ADD             R1, PC; MI_PICKUP_REVENUE_ptr
47222A:  LDR             R1, [R1]; MI_PICKUP_REVENUE
47222C:  STRH            R0, [R1]
47222E:  LDR             R1, =(MI_PICKUP_SAVEGAME_ptr - 0x472234)
472230:  ADD             R1, PC; MI_PICKUP_SAVEGAME_ptr
472232:  LDR             R1, [R1]; MI_PICKUP_SAVEGAME
472234:  STRH            R0, [R1]
472236:  LDR             R1, =(MI_PICKUP_CLOTHES_ptr - 0x47223C)
472238:  ADD             R1, PC; MI_PICKUP_CLOTHES_ptr
47223A:  LDR             R1, [R1]; MI_PICKUP_CLOTHES
47223C:  STRH            R0, [R1]
47223E:  LDR             R1, =(MI_PICKUP_2P_KILLFRENZY_ptr - 0x472244)
472240:  ADD             R1, PC; MI_PICKUP_2P_KILLFRENZY_ptr
472242:  LDR             R1, [R1]; MI_PICKUP_2P_KILLFRENZY
472244:  STRH            R0, [R1]
472246:  LDR             R1, =(MI_PICKUP_2P_COOP_ptr - 0x47224C)
472248:  ADD             R1, PC; MI_PICKUP_2P_COOP_ptr
47224A:  LDR             R1, [R1]; MI_PICKUP_2P_COOP
47224C:  STRH            R0, [R1]
47224E:  LDR             R1, =(MI_BOLLARDLIGHT_ptr - 0x472254)
472250:  ADD             R1, PC; MI_BOLLARDLIGHT_ptr
472252:  LDR             R1, [R1]; MI_BOLLARDLIGHT
472254:  STRH            R0, [R1]
472256:  LDR             R1, =(MI_PARACHUTE_BACKPACK_ptr - 0x47225C)
472258:  ADD             R1, PC; MI_PARACHUTE_BACKPACK_ptr
47225A:  LDR             R1, [R1]; MI_PARACHUTE_BACKPACK
47225C:  STRH            R0, [R1]
47225E:  LDR             R1, =(MI_OYSTER_ptr - 0x472264)
472260:  ADD             R1, PC; MI_OYSTER_ptr
472262:  LDR             R1, [R1]; MI_OYSTER
472264:  STRH            R0, [R1]
472266:  LDR             R1, =(MI_HORSESHOE_ptr - 0x47226C)
472268:  ADD             R1, PC; MI_HORSESHOE_ptr
47226A:  LDR             R1, [R1]; MI_HORSESHOE
47226C:  STRH            R0, [R1]
47226E:  LDR             R1, =(MI_LAMPPOST1_ptr - 0x472274)
472270:  ADD             R1, PC; MI_LAMPPOST1_ptr
472272:  LDR             R1, [R1]; MI_LAMPPOST1
472274:  STRH            R0, [R1]
472276:  LDR             R1, =(MI_MLAMPPOST_ptr - 0x47227C)
472278:  ADD             R1, PC; MI_MLAMPPOST_ptr
47227A:  LDR             R1, [R1]; MI_MLAMPPOST
47227C:  STRH            R0, [R1]
47227E:  LDR             R1, =(MI_BARRIER1_ptr - 0x472284)
472280:  ADD             R1, PC; MI_BARRIER1_ptr
472282:  LDR             R1, [R1]; MI_BARRIER1
472284:  STRH            R0, [R1]
472286:  LDR             R1, =(MI_LITTLEHA_POLICE_ptr - 0x47228C)
472288:  ADD             R1, PC; MI_LITTLEHA_POLICE_ptr
47228A:  LDR             R1, [R1]; MI_LITTLEHA_POLICE
47228C:  STRH            R0, [R1]
47228E:  LDR             R1, =(MI_TELPOLE02_ptr - 0x472294)
472290:  ADD             R1, PC; MI_TELPOLE02_ptr
472292:  LDR             R1, [R1]; MI_TELPOLE02
472294:  STRH            R0, [R1]
472296:  LDR             R1, =(MI_TRAFFICLIGHT01_ptr - 0x47229C)
472298:  ADD             R1, PC; MI_TRAFFICLIGHT01_ptr
47229A:  LDR             R1, [R1]; MI_TRAFFICLIGHT01
47229C:  STRH            R0, [R1]
47229E:  LDR             R1, =(MI_PARKBENCH_ptr - 0x4722A4)
4722A0:  ADD             R1, PC; MI_PARKBENCH_ptr
4722A2:  LDR             R1, [R1]; MI_PARKBENCH
4722A4:  STRH            R0, [R1]
4722A6:  LDR             R1, =(MI_LIGHTBEAM_ptr - 0x4722AC)
4722A8:  ADD             R1, PC; MI_LIGHTBEAM_ptr
4722AA:  LDR             R1, [R1]; MI_LIGHTBEAM
4722AC:  STRH            R0, [R1]
4722AE:  LDR             R1, =(MI_AIRPORTRADAR_ptr - 0x4722B4)
4722B0:  ADD             R1, PC; MI_AIRPORTRADAR_ptr
4722B2:  LDR             R1, [R1]; MI_AIRPORTRADAR
4722B4:  STRH            R0, [R1]
4722B6:  LDR             R1, =(MI_RCBOMB_ptr - 0x4722BC)
4722B8:  ADD             R1, PC; MI_RCBOMB_ptr
4722BA:  LDR             R1, [R1]; MI_RCBOMB
4722BC:  STRH            R0, [R1]
4722BE:  LDR             R1, =(MI_BEACHBALL_ptr - 0x4722C4)
4722C0:  ADD             R1, PC; MI_BEACHBALL_ptr
4722C2:  LDR             R1, [R1]; MI_BEACHBALL
4722C4:  STRH            R0, [R1]
4722C6:  LDR             R1, =(MI_SANDCASTLE1_ptr - 0x4722CC)
4722C8:  ADD             R1, PC; MI_SANDCASTLE1_ptr
4722CA:  LDR             R1, [R1]; MI_SANDCASTLE1
4722CC:  STRH            R0, [R1]
4722CE:  LDR             R1, =(MI_SANDCASTLE2_ptr - 0x4722D4)
4722D0:  ADD             R1, PC; MI_SANDCASTLE2_ptr
4722D2:  LDR             R1, [R1]; MI_SANDCASTLE2
4722D4:  STRH            R0, [R1]
4722D6:  LDR             R1, =(MI_JELLYFISH_ptr - 0x4722DC)
4722D8:  ADD             R1, PC; MI_JELLYFISH_ptr
4722DA:  LDR             R1, [R1]; MI_JELLYFISH
4722DC:  STRH            R0, [R1]
4722DE:  LDR             R1, =(MI_JELLYFISH01_ptr - 0x4722E4)
4722E0:  ADD             R1, PC; MI_JELLYFISH01_ptr
4722E2:  LDR             R1, [R1]; MI_JELLYFISH01
4722E4:  STRH            R0, [R1]
4722E6:  LDR             R1, =(MI_FISH1SINGLE_ptr - 0x4722EC)
4722E8:  ADD             R1, PC; MI_FISH1SINGLE_ptr
4722EA:  LDR             R1, [R1]; MI_FISH1SINGLE
4722EC:  STRH            R0, [R1]
4722EE:  LDR             R1, =(MI_FISH1S_ptr - 0x4722F4)
4722F0:  ADD             R1, PC; MI_FISH1S_ptr
4722F2:  LDR             R1, [R1]; MI_FISH1S
4722F4:  STRH            R0, [R1]
4722F6:  LDR             R1, =(MI_FISH2SINGLE_ptr - 0x4722FC)
4722F8:  ADD             R1, PC; MI_FISH2SINGLE_ptr
4722FA:  LDR             R1, [R1]; MI_FISH2SINGLE
4722FC:  STRH            R0, [R1]
4722FE:  LDR             R1, =(MI_FISH2S_ptr - 0x472304)
472300:  ADD             R1, PC; MI_FISH2S_ptr
472302:  LDR             R1, [R1]; MI_FISH2S
472304:  STRH            R0, [R1]
472306:  LDR             R1, =(MI_FISH3SINGLE_ptr - 0x47230C)
472308:  ADD             R1, PC; MI_FISH3SINGLE_ptr
47230A:  LDR             R1, [R1]; MI_FISH3SINGLE
47230C:  STRH            R0, [R1]
47230E:  LDR             R1, =(MI_FISH3S_ptr - 0x472314)
472310:  ADD             R1, PC; MI_FISH3S_ptr
472312:  LDR             R1, [R1]; MI_FISH3S
472314:  STRH            R0, [R1]
472316:  LDR             R1, =(MI_TURTLE_ptr - 0x47231C)
472318:  ADD             R1, PC; MI_TURTLE_ptr
47231A:  LDR             R1, [R1]; MI_TURTLE
47231C:  STRH            R0, [R1]
47231E:  LDR             R1, =(MI_DOLPHIN_ptr - 0x472324)
472320:  ADD             R1, PC; MI_DOLPHIN_ptr
472322:  LDR             R1, [R1]; MI_DOLPHIN
472324:  STRH            R0, [R1]
472326:  LDR             R1, =(MI_SHARK_ptr - 0x47232C)
472328:  ADD             R1, PC; MI_SHARK_ptr
47232A:  LDR             R1, [R1]; MI_SHARK
47232C:  STRH            R0, [R1]
47232E:  LDR             R1, =(MI_SUBMARINE_ptr - 0x472334)
472330:  ADD             R1, PC; MI_SUBMARINE_ptr
472332:  LDR             R1, [R1]; MI_SUBMARINE
472334:  STRH            R0, [R1]
472336:  LDR             R1, =(MI_ESCALATORSTEP_ptr - 0x47233C)
472338:  ADD             R1, PC; MI_ESCALATORSTEP_ptr
47233A:  LDR             R1, [R1]; MI_ESCALATORSTEP
47233C:  STRH            R0, [R1]
47233E:  LDR             R1, =(MI_ESCALATORSTEP8_ptr - 0x472344)
472340:  ADD             R1, PC; MI_ESCALATORSTEP8_ptr
472342:  LDR             R1, [R1]; MI_ESCALATORSTEP8
472344:  STRH            R0, [R1]
472346:  LDR             R1, =(MI_LOUNGE_WOOD_UP_ptr - 0x47234C)
472348:  ADD             R1, PC; MI_LOUNGE_WOOD_UP_ptr
47234A:  LDR             R1, [R1]; MI_LOUNGE_WOOD_UP
47234C:  STRH            R0, [R1]
47234E:  LDR             R1, =(MI_LOUNGE_TOWEL_UP_ptr - 0x472354)
472350:  ADD             R1, PC; MI_LOUNGE_TOWEL_UP_ptr
472352:  LDR             R1, [R1]; MI_LOUNGE_TOWEL_UP
472354:  STRH            R0, [R1]
472356:  LDR             R1, =(MI_LOUNGE_WOOD_DN_ptr - 0x47235C)
472358:  ADD             R1, PC; MI_LOUNGE_WOOD_DN_ptr
47235A:  LDR             R1, [R1]; MI_LOUNGE_WOOD_DN
47235C:  STRH            R0, [R1]
47235E:  LDR             R1, =(MI_LOTION_ptr - 0x472364)
472360:  ADD             R1, PC; MI_LOTION_ptr
472362:  LDR             R1, [R1]; MI_LOTION
472364:  STRH            R0, [R1]
472366:  LDR             R1, =(MI_BEACHTOWEL01_ptr - 0x47236C)
472368:  ADD             R1, PC; MI_BEACHTOWEL01_ptr
47236A:  LDR             R1, [R1]; MI_BEACHTOWEL01
47236C:  STRH            R0, [R1]
47236E:  LDR             R1, =(MI_BEACHTOWEL02_ptr - 0x472374)
472370:  ADD             R1, PC; MI_BEACHTOWEL02_ptr
472372:  LDR             R1, [R1]; MI_BEACHTOWEL02
472374:  STRH            R0, [R1]
472376:  LDR             R1, =(MI_BEACHTOWEL03_ptr - 0x47237C)
472378:  ADD             R1, PC; MI_BEACHTOWEL03_ptr
47237A:  LDR             R1, [R1]; MI_BEACHTOWEL03
47237C:  STRH            R0, [R1]
47237E:  LDR             R1, =(MI_BEACHTOWEL04_ptr - 0x472384)
472380:  ADD             R1, PC; MI_BEACHTOWEL04_ptr
472382:  LDR             R1, [R1]; MI_BEACHTOWEL04
472384:  STRH            R0, [R1]
472386:  LDR             R1, =(MI_BLIMP_NIGHT_ptr - 0x47238C)
472388:  ADD             R1, PC; MI_BLIMP_NIGHT_ptr
47238A:  LDR             R1, [R1]; MI_BLIMP_NIGHT
47238C:  STRH            R0, [R1]
47238E:  LDR             R1, =(MI_BLIMP_DAY_ptr - 0x472394)
472390:  ADD             R1, PC; MI_BLIMP_DAY_ptr
472392:  LDR             R1, [R1]; MI_BLIMP_DAY
472394:  STRH            R0, [R1]
472396:  LDR             R1, =(MI_YT_MAIN_BODY_ptr - 0x47239C)
472398:  ADD             R1, PC; MI_YT_MAIN_BODY_ptr
47239A:  LDR             R1, [R1]; MI_YT_MAIN_BODY
47239C:  STRH            R0, [R1]
47239E:  LDR             R1, =(MI_YT_MAIN_BODY2_ptr - 0x4723A4)
4723A0:  ADD             R1, PC; MI_YT_MAIN_BODY2_ptr
4723A2:  LDR             R1, [R1]; MI_YT_MAIN_BODY2
4723A4:  STRH            R0, [R1]
4723A6:  LDR             R1, =(MI_TRAFFICLIGHTS_3_ptr - 0x4723AC)
4723A8:  ADD             R1, PC; MI_TRAFFICLIGHTS_3_ptr
4723AA:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_3
4723AC:  STRH            R0, [R1]
4723AE:  LDR             R1, =(MI_TRAFFICLIGHTS_4_ptr - 0x4723B4)
4723B0:  ADD             R1, PC; MI_TRAFFICLIGHTS_4_ptr
4723B2:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_4
4723B4:  STRH            R0, [R1]
4723B6:  LDR             R1, =(MI_TRAFFICLIGHTS_5_ptr - 0x4723BC)
4723B8:  ADD             R1, PC; MI_TRAFFICLIGHTS_5_ptr
4723BA:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_5
4723BC:  STRH            R0, [R1]
4723BE:  LDR             R1, =(MI_TRAFFICLIGHTS_GAY_ptr - 0x4723C4)
4723C0:  ADD             R1, PC; MI_TRAFFICLIGHTS_GAY_ptr
4723C2:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_GAY
4723C4:  STRH            R0, [R1]
4723C6:  LDR             R1, =(MI_IMY_SHASH_WALL_ptr - 0x4723CC)
4723C8:  ADD             R1, PC; MI_IMY_SHASH_WALL_ptr
4723CA:  LDR             R1, [R1]; MI_IMY_SHASH_WALL
4723CC:  STRH            R0, [R1]
4723CE:  POP.W           {R11}
4723D2:  POP             {R4-R7,PC}
