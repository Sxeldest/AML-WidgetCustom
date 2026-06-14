; =========================================================
; Game Engine Function: _Z26CameraObscuredByWaterLevelv
; Address            : 0x3E12F8 - 0x3E1346
; =========================================================

3E12F8:  PUSH            {R4,R5,R7,LR}
3E12FA:  ADD             R7, SP, #8
3E12FC:  SUB             SP, SP, #0x10
3E12FE:  LDR             R0, =(TheCamera_ptr - 0x3E1308)
3E1300:  MOVS            R4, #0
3E1302:  MOVS            R3, #(stderr+1)
3E1304:  ADD             R0, PC; TheCamera_ptr
3E1306:  LDR             R0, [R0]; TheCamera
3E1308:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3E130C:  ADD.W           R1, R1, R1,LSL#5
3E1310:  ADD.W           R5, R0, R1,LSL#4
3E1314:  ADD.W           R2, R5, #0x2E4
3E1318:  LDM             R2, {R0-R2}; float
3E131A:  STRD.W          R3, R4, [SP,#0x18+var_18]; float *
3E131E:  ADD             R3, SP, #0x18+var_C; float
3E1320:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
3E1324:  CMP             R0, #1
3E1326:  BNE             loc_3E1340
3E1328:  ADD.W           R0, R5, #0x2EC
3E132C:  VLDR            S0, [SP,#0x18+var_C]
3E1330:  VLDR            S2, [R0]
3E1334:  VCMPE.F32       S0, S2
3E1338:  VMRS            APSR_nzcv, FPSCR
3E133C:  IT GE
3E133E:  MOVGE           R4, #1
3E1340:  MOV             R0, R4
3E1342:  ADD             SP, SP, #0x10
3E1344:  POP             {R4,R5,R7,PC}
