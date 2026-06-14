; =========================================================
; Game Engine Function: _Z18RpWorldRemoveClumpP7RpWorldP7RpClump
; Address            : 0x21E450 - 0x21E4D0
; =========================================================

21E450:  PUSH            {R4-R7,LR}
21E452:  ADD             R7, SP, #0xC
21E454:  PUSH.W          {R11}
21E458:  SUB             SP, SP, #8
21E45A:  MOV             R4, R0
21E45C:  LDR             R0, =(dword_6BD640 - 0x21E464)
21E45E:  MOV             R5, R1
21E460:  ADD             R0, PC; dword_6BD640
21E462:  LDR             R6, [R0]
21E464:  LDR             R0, [R5,R6]
21E466:  CBZ             R0, loc_21E4B4
21E468:  LDR             R1, [R0,#0x24]
21E46A:  SUBS            R1, #1
21E46C:  STR             R1, [R0,#0x24]
21E46E:  LDR             R0, [R5,R6]
21E470:  ADD.W           R1, R5, #0x20 ; ' '
21E474:  LDR             R2, [R0,#0x28]
21E476:  CMP             R1, R2
21E478:  ITT EQ
21E47A:  LDREQ           R1, [R1]
21E47C:  STREQ           R1, [R0,#0x28]
21E47E:  LDRD.W          R0, R1, [R5,#0x20]
21E482:  STR             R0, [R1]
21E484:  LDRD.W          R0, R2, [R5,#0x20]
21E488:  LDR             R1, =(sub_21E4E0+1 - 0x21E48E)
21E48A:  ADD             R1, PC; sub_21E4E0
21E48C:  STR             R2, [R0,#4]
21E48E:  MOV             R0, R5
21E490:  MOV             R2, R4
21E492:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
21E496:  LDR             R1, =(sub_21E580+1 - 0x21E4A0)
21E498:  MOV             R0, R5
21E49A:  MOV             R2, R4
21E49C:  ADD             R1, PC; sub_21E580
21E49E:  BLX             j__Z19RpClumpForAllLightsP7RpClumpPFP7RpLightS2_PvES3_; RpClumpForAllLights(RpClump *,RpLight * (*)(RpLight *,void *),void *)
21E4A2:  LDR             R1, =(sub_21E608+1 - 0x21E4AC)
21E4A4:  MOV             R0, R5
21E4A6:  MOV             R2, R4
21E4A8:  ADD             R1, PC; sub_21E608
21E4AA:  BLX             j__Z20RpClumpForAllCamerasP7RpClumpPFP8RwCameraS2_PvES3_; RpClumpForAllCameras(RpClump *,RwCamera * (*)(RwCamera *,void *),void *)
21E4AE:  MOVS            R0, #0
21E4B0:  STR             R0, [R5,R6]
21E4B2:  B               loc_21E4C6
21E4B4:  MOVS            R4, #0
21E4B6:  MOVS            R0, #4; int
21E4B8:  STR             R4, [SP,#0x18+var_18]
21E4BA:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21E4BE:  STR             R0, [SP,#0x18+var_14]
21E4C0:  MOV             R0, SP
21E4C2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21E4C6:  MOV             R0, R4
21E4C8:  ADD             SP, SP, #8
21E4CA:  POP.W           {R11}
21E4CE:  POP             {R4-R7,PC}
