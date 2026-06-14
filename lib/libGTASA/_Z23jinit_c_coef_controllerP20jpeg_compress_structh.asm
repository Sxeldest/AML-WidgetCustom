; =========================================================
; Game Engine Function: _Z23jinit_c_coef_controllerP20jpeg_compress_structh
; Address            : 0x476260 - 0x476330
; =========================================================

476260:  PUSH            {R4-R7,LR}
476262:  ADD             R7, SP, #0xC
476264:  PUSH.W          {R8-R10}
476268:  SUB             SP, SP, #8
47626A:  MOV             R9, R0
47626C:  MOV             R6, R1
47626E:  LDR.W           R0, [R9,#4]
476272:  MOVS            R1, #1
476274:  MOVS            R2, #0x50 ; 'P'
476276:  LDR             R3, [R0]
476278:  MOV             R0, R9
47627A:  BLX             R3
47627C:  MOV             R5, R0
47627E:  LDR             R0, =(sub_476354+1 - 0x47628A)
476280:  CMP             R6, #0
476282:  STR.W           R5, [R9,#0x148]
476286:  ADD             R0, PC; sub_476354
476288:  STR             R0, [R5]
47628A:  BEQ             loc_4762E4
47628C:  LDR.W           R0, [R9,#0x3C]
476290:  CMP             R0, #1
476292:  BLT             loc_476328
476294:  LDR.W           R0, [R9,#0x44]
476298:  ADD.W           R8, R5, #0x40 ; '@'
47629C:  MOVS            R4, #0
47629E:  ADD.W           R6, R0, #0x1C
4762A2:  LDR.W           R2, [R9,#4]
4762A6:  LDR.W           R1, [R6,#-0x14]; int
4762AA:  LDR             R0, [R6]; int
4762AC:  LDR.W           R10, [R2,#0x14]
4762B0:  BLX             j__Z9jround_upll; jround_up(long,long)
4762B4:  MOV             R5, R0
4762B6:  LDR.W           R1, [R6,#-0x10]; int
4762BA:  LDR             R0, [R6,#4]; int
4762BC:  BLX             j__Z9jround_upll; jround_up(long,long)
4762C0:  LDR.W           R1, [R6,#-0x10]
4762C4:  MOVS            R2, #0
4762C6:  MOV             R3, R5
4762C8:  STRD.W          R0, R1, [SP,#0x20+var_20]
4762CC:  MOV             R0, R9
4762CE:  MOVS            R1, #1
4762D0:  BLX             R10
4762D2:  STR.W           R0, [R8,R4,LSL#2]
4762D6:  ADDS            R6, #0x54 ; 'T'
4762D8:  ADDS            R4, #1
4762DA:  LDR.W           R0, [R9,#0x3C]
4762DE:  CMP             R4, R0
4762E0:  BLT             loc_4762A2
4762E2:  B               loc_476328
4762E4:  LDR.W           R0, [R9,#4]
4762E8:  MOVS            R1, #1
4762EA:  MOV.W           R2, #0x500
4762EE:  LDR             R3, [R0,#4]
4762F0:  MOV             R0, R9
4762F2:  BLX             R3
4762F4:  ADR             R1, dword_476330
4762F6:  VDUP.32         Q10, R0
4762FA:  VLD1.64         {D16-D17}, [R1@128]
4762FE:  ADR             R1, dword_476340
476300:  VADD.I32        Q8, Q10, Q8
476304:  VLD1.64         {D18-D19}, [R1@128]
476308:  ADD.W           R1, R0, #0x480
47630C:  VADD.I32        Q9, Q10, Q9
476310:  STR             R0, [R5,#0x18]
476312:  MOVS            R0, #0
476314:  STRD.W          R1, R0, [R5,#0x3C]
476318:  ADD.W           R0, R5, #0x1C
47631C:  VST1.32         {D16-D17}, [R0]
476320:  ADD.W           R0, R5, #0x2C ; ','
476324:  VST1.32         {D18-D19}, [R0]
476328:  ADD             SP, SP, #8
47632A:  POP.W           {R8-R10}
47632E:  POP             {R4-R7,PC}
