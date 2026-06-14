; =========================================================
; Game Engine Function: sub_1A8150
; Address            : 0x1A8150 - 0x1A835E
; =========================================================

1A8150:  PUSH            {R4-R7,LR}
1A8152:  ADD             R7, SP, #0xC
1A8154:  PUSH.W          {R8,R9,R11}
1A8158:  SUB             SP, SP, #8
1A815A:  LDR             R0, =(unk_A12ED0 - 0x1A8166)
1A815C:  MOVS            R4, #0xFF
1A815E:  MOVS            R1, #0xFF; unsigned __int8
1A8160:  MOVS            R2, #0; unsigned __int8
1A8162:  ADD             R0, PC; unk_A12ED0 ; this
1A8164:  MOVS            R3, #0; unsigned __int8
1A8166:  STR             R4, [SP,#0x20+var_20]; unsigned __int8
1A8168:  MOVS            R6, #0
1A816A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A816E:  LDR             R0, =(unk_A12ED4 - 0x1A817A)
1A8170:  MOVS            R1, #0xFF; unsigned __int8
1A8172:  MOVS            R2, #0xFF; unsigned __int8
1A8174:  MOVS            R3, #0; unsigned __int8
1A8176:  ADD             R0, PC; unk_A12ED4 ; this
1A8178:  STR             R4, [SP,#0x20+var_20]; unsigned __int8
1A817A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A817E:  LDR             R0, =(unk_A12ED8 - 0x1A818A)
1A8180:  MOVS            R1, #0x64 ; 'd'
1A8182:  STR             R1, [SP,#0x20+var_20]; unsigned __int8
1A8184:  MOVS            R1, #0xFF; unsigned __int8
1A8186:  ADD             R0, PC; unk_A12ED8 ; this
1A8188:  MOVS            R2, #0; unsigned __int8
1A818A:  MOVS            R3, #0; unsigned __int8
1A818C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A8190:  LDR             R0, =(unk_A12EDC - 0x1A819C)
1A8192:  MOVS            R1, #0xFF; unsigned __int8
1A8194:  MOVS            R2, #0; unsigned __int8
1A8196:  MOVS            R3, #0; unsigned __int8
1A8198:  ADD             R0, PC; unk_A12EDC ; this
1A819A:  STR             R4, [SP,#0x20+var_20]; unsigned __int8
1A819C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A81A0:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x1A81A6)
1A81A2:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
1A81A4:  LDR             R4, [R0]; CVehicle::m_aSpecialColModel ...
1A81A6:  MOV             R0, R4; this
1A81A8:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
1A81AC:  ADD.W           R0, R4, #0x30 ; '0'; this
1A81B0:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
1A81B4:  ADD.W           R0, R4, #0x60 ; '`'; this
1A81B8:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
1A81BC:  ADD.W           R0, R4, #0x90; this
1A81C0:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
1A81C4:  LDR             R4, =(unk_67A000 - 0x1A81CE)
1A81C6:  MOVS            R1, #0; obj
1A81C8:  LDR             R0, =(sub_1A8120+1 - 0x1A81D0)
1A81CA:  ADD             R4, PC; unk_67A000
1A81CC:  ADD             R0, PC; sub_1A8120 ; lpfunc
1A81CE:  MOV             R2, R4; lpdso_handle
1A81D0:  BLX             __cxa_atexit
1A81D4:  LDR             R5, =(unk_A13064 - 0x1A81DA)
1A81D6:  ADD             R5, PC; unk_A13064
1A81D8:  MOV             R0, R5; this
1A81DA:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
1A81DE:  LDR             R0, =(_ZN9CColModelD2Ev_ptr_0 - 0x1A81E8)
1A81E0:  MOV             R1, R5; obj
1A81E2:  MOV             R2, R4; lpdso_handle
1A81E4:  ADD             R0, PC; _ZN9CColModelD2Ev_ptr_0
1A81E6:  LDR             R0, [R0]; CColModel::~CColModel() ; lpfunc
1A81E8:  BLX             __cxa_atexit
1A81EC:  LDR             R0, =(word_A13094 - 0x1A81F2)
1A81EE:  ADD             R0, PC; word_A13094 ; this
1A81F0:  BLX             j__ZN14CCollisionDataC2Ev; CCollisionData::CCollisionData(void)
1A81F4:  LDR             R0, =(dword_A130F0 - 0x1A8206)
1A81F6:  MOVW            R4, #0x1EB8
1A81FA:  LDR             R1, =(dword_A13100 - 0x1A8212)
1A81FC:  MOVW            LR, #0x8F5C
1A8200:  LDR             R2, =(dword_A13110 - 0x1A8218)
1A8202:  ADD             R0, PC; dword_A130F0
1A8204:  MOVT            R4, #0x408D
1A8208:  MOVT            LR, #0xBFA2
1A820C:  LDR             R3, =(dword_A13120 - 0x1A822C)
1A820E:  ADD             R1, PC; dword_A13100
1A8210:  STRD.W          R6, R4, [R0]
1A8214:  ADD             R2, PC; dword_A13110
1A8216:  STR.W           LR, [R0,#(dword_A130F8 - 0xA130F0)]
1A821A:  MOV             R0, #0x40366666
1A8222:  MOV.W           R4, #0xBF000000
1A8226:  LDR             R5, =(dword_A13130 - 0x1A8238)
1A8228:  ADD             R3, PC; dword_A13120
1A822A:  STRD.W          R6, R0, [R1]
1A822E:  MOVW            R8, #0xF5C3
1A8232:  STR             R0, [R2,#(dword_A13114 - 0xA13110)]
1A8234:  ADD             R5, PC; dword_A13130
1A8236:  STR             R6, [R2]
1A8238:  MOVT            R8, #0xBF48
1A823C:  STR             R4, [R2,#(dword_A13118 - 0xA13110)]
1A823E:  MOV             R2, #0x4019999A
1A8246:  LDR.W           R12, =(dword_A13140 - 0x1A8278)
1A824A:  STR             R4, [R1,#(dword_A13108 - 0xA13100)]
1A824C:  MOVW            R9, #0x7AE1
1A8250:  STRD.W          R4, R2, [R3]
1A8254:  MOVW            R2, #0xD70A
1A8258:  LDR             R1, =(dword_A1314C - 0x1A827A)
1A825A:  MOVT            R2, #0x40DB
1A825E:  STR.W           R8, [R3,#(dword_A13128 - 0xA13120)]
1A8262:  MOVW            R3, #0x3333
1A8266:  LDR             R0, =(dword_A13158 - 0x1A8296)
1A8268:  MOVW            R8, #0x28F6
1A826C:  STRD.W          R6, R2, [R5]
1A8270:  MOVW            R2, #0xCCCD
1A8274:  ADD             R12, PC; dword_A13140
1A8276:  ADD             R1, PC; dword_A1314C
1A8278:  MOVT            R3, #0xBFD3
1A827C:  MOVT            R8, #0x400C
1A8280:  MOV.W           R4, #0x3FC00000
1A8284:  MOVT            R9, #0xBF14
1A8288:  MOVT            R2, #0x3E4C
1A828C:  STR             R3, [R5,#(dword_A13138 - 0xA13130)]
1A828E:  STRD.W          R8, R4, [R12]
1A8292:  ADD             R0, PC; dword_A13158
1A8294:  STR.W           R9, [R12,#(dword_A13148 - 0xA13140)]
1A8298:  MOVW            R3, #0x1EB8
1A829C:  STR             R2, [R1]
1A829E:  MOVT            R3, #0xBF05
1A82A2:  STRD.W          R6, R6, [R1,#(dword_A13150 - 0xA1314C)]
1A82A6:  MOV             R1, #0x3EE147AE
1A82AE:  LDR.W           LR, =(dword_A13168 - 0x1A82C4)
1A82B2:  STR             R1, [R0,#(dword_A1315C - 0xA13158)]
1A82B4:  MOVW            R1, #0x70A4
1A82B8:  LDR             R2, =(dword_A13178 - 0x1A82C8)
1A82BA:  MOVT            R1, #0x3FBD
1A82BE:  STR             R1, [R0]
1A82C0:  ADD             LR, PC; dword_A13168
1A82C2:  LDR             R1, =(dword_A13188 - 0x1A82D0)
1A82C4:  ADD             R2, PC; dword_A13178
1A82C6:  STR             R3, [R0,#(dword_A13160 - 0xA13158)]
1A82C8:  MOVW            R3, #0x6666
1A82CC:  ADD             R1, PC; dword_A13188
1A82CE:  MOVT            R3, #0x3EE6
1A82D2:  STRD.W          R6, R6, [LR]
1A82D6:  MOVW            R5, #0xCCCD
1A82DA:  STR             R3, [R2,#(dword_A1317C - 0xA13178)]
1A82DC:  MOVT            R5, #0xBF4C
1A82E0:  STR             R6, [R2]
1A82E2:  MOVW            R12, #0xCCCD
1A82E6:  STR             R6, [R2,#(dword_A13180 - 0xA13178)]
1A82E8:  MOV.W           R2, #0x3F800000
1A82EC:  LDR             R0, =(dword_A13198 - 0x1A8302)
1A82EE:  MOVT            R12, #0x406C
1A82F2:  LDR             R3, =(dword_A131A8 - 0x1A8306)
1A82F4:  STR             R2, [R1,#(dword_A1318C - 0xA13188)]
1A82F6:  MOV             R2, #0x400AE148
1A82FE:  ADD             R0, PC; dword_A13198
1A8300:  STR             R2, [R1]
1A8302:  ADD             R3, PC; dword_A131A8
1A8304:  LDR             R2, =(dword_A131B8 - 0x1A830E)
1A8306:  STR             R5, [R1,#(dword_A13190 - 0xA13188)]
1A8308:  LDR             R5, =(dword_A131E8 - 0x1A8318)
1A830A:  ADD             R2, PC; dword_A131B8
1A830C:  STR.W           R6, [LR,#(dword_A13170 - 0xA13168)]
1A8310:  STRD.W          R6, R6, [R0]
1A8314:  ADD             R5, PC; dword_A131E8
1A8316:  STR             R4, [R3,#(dword_A131AC - 0xA131A8)]
1A8318:  MOVW            R4, #0x8F5C
1A831C:  STR             R6, [R0,#(dword_A131A0 - 0xA13198)]
1A831E:  MOVT            R4, #0xBF82
1A8322:  LDR             R0, =(dword_A131D8 - 0x1A833E)
1A8324:  STR.W           R8, [R3]
1A8328:  STR.W           R9, [R3,#(dword_A131B0 - 0xA131A8)]
1A832C:  MOVW            R3, #0xE148
1A8330:  LDR             R1, =(unk_A131C8 - 0x1A8346)
1A8332:  MOVT            R3, #0x3F7A
1A8336:  STRD.W          R12, R3, [R2]
1A833A:  ADD             R0, PC; dword_A131D8
1A833C:  STR             R4, [R2,#(dword_A131C0 - 0xA131B8)]
1A833E:  MOVW            R2, #0xE148
1A8342:  ADD             R1, PC; unk_A131C8
1A8344:  MOVT            R2, #0x407A
1A8348:  STM             R1!, {R2-R4}
1A834A:  STRD.W          R6, R6, [R0]
1A834E:  STR             R6, [R0,#(dword_A131E0 - 0xA131D8)]
1A8350:  STRD.W          R6, R6, [R5]
1A8354:  STR             R6, [R5,#(dword_A131F0 - 0xA131E8)]
1A8356:  ADD             SP, SP, #8
1A8358:  POP.W           {R8,R9,R11}
1A835C:  POP             {R4-R7,PC}
