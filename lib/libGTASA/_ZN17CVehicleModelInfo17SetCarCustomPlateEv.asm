; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo17SetCarCustomPlateEv
; Address            : 0x387968 - 0x3879CA
; =========================================================

387968:  PUSH            {R4,R5,R7,LR}
38796A:  ADD             R7, SP, #8
38796C:  SUB             SP, SP, #0x10
38796E:  MOV             R4, R0
387970:  LDR             R0, =(__stack_chk_guard_ptr - 0x38797A)
387972:  LDR             R1, =(aDefault_1 - 0x38797E); "DEFAULT"
387974:  MOVS            R2, #0xFF; int
387976:  ADD             R0, PC; __stack_chk_guard_ptr
387978:  MOV             R5, SP
38797A:  ADD             R1, PC; "DEFAULT"
38797C:  LDR             R0, [R0]; __stack_chk_guard
38797E:  VLDR            D16, [R1]
387982:  MOVS            R1, #byte_8; char *
387984:  LDR             R0, [R0]
387986:  STR             R0, [SP,#0x18+var_C]
387988:  MOVS            R0, #0
38798A:  STRB.W          R0, [R4,#0x40]
38798E:  STR             R0, [R4,#0x3C]
387990:  STRB.W          R2, [R4,#0x49]
387994:  STRB.W          R0, [SP,#0x18+var_10]
387998:  MOV             R0, R5; this
38799A:  VSTR            D16, [SP,#0x18+var_18]
38799E:  BLX             j__ZN18CCustomCarPlateMgr17GeneratePlateTextEPci; CCustomCarPlateMgr::GeneratePlateText(char *,int)
3879A2:  LDR             R0, [R4,#0x34]
3879A4:  MOV             R1, R5
3879A6:  LDRB.W          R2, [R4,#0x49]
3879AA:  BLX             j__ZN18CCustomCarPlateMgr10SetupClumpEP7RpClumpPch; CCustomCarPlateMgr::SetupClump(RpClump *,char *,uchar)
3879AE:  CMP             R0, #0
3879B0:  IT NE
3879B2:  STRNE           R0, [R4,#0x3C]
3879B4:  LDR             R0, =(__stack_chk_guard_ptr - 0x3879BC)
3879B6:  LDR             R1, [SP,#0x18+var_C]
3879B8:  ADD             R0, PC; __stack_chk_guard_ptr
3879BA:  LDR             R0, [R0]; __stack_chk_guard
3879BC:  LDR             R0, [R0]
3879BE:  SUBS            R0, R0, R1
3879C0:  ITT EQ
3879C2:  ADDEQ           SP, SP, #0x10
3879C4:  POPEQ           {R4,R5,R7,PC}
3879C6:  BLX             __stack_chk_fail
