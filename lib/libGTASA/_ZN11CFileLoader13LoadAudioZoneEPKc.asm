; =========================================================
; Game Engine Function: _ZN11CFileLoader13LoadAudioZoneEPKc
; Address            : 0x46B190 - 0x46B270
; =========================================================

46B190:  PUSH            {R4-R7,LR}
46B192:  ADD             R7, SP, #0xC
46B194:  PUSH.W          {R8,R9,R11}
46B198:  SUB             SP, SP, #0x58
46B19A:  MOV             R4, R0
46B19C:  LDR             R0, =(__stack_chk_guard_ptr - 0x46B1A8)
46B19E:  ADD             R1, SP, #0x70+var_48
46B1A0:  ADD.W           R8, SP, #0x70+var_40
46B1A4:  ADD             R0, PC; __stack_chk_guard_ptr
46B1A6:  ADD             R5, SP, #0x70+var_38
46B1A8:  ADD             R2, SP, #0x70+var_44
46B1AA:  ADD.W           R9, SP, #0x70+var_3C
46B1AE:  LDR             R0, [R0]; __stack_chk_guard
46B1B0:  ADD             R6, SP, #0x70+var_34
46B1B2:  ADD             R3, SP, #0x70+var_30
46B1B4:  LDR             R0, [R0]
46B1B6:  STR             R0, [SP,#0x70+var_1C]
46B1B8:  ADD             R0, SP, #0x70+var_4C
46B1BA:  STRD.W          R6, R5, [SP,#0x70+var_70]; float
46B1BE:  STRD.W          R9, R8, [SP,#0x70+var_68]; float
46B1C2:  STRD.W          R2, R1, [SP,#0x70+var_60]; float
46B1C6:  ADR             R1, aSDDFFFFFF; "%s %d %d %f %f %f %f %f %f"
46B1C8:  ADD             R2, SP, #0x70+var_2C
46B1CA:  STR             R0, [SP,#0x70+var_58]
46B1CC:  MOV             R0, R4; s
46B1CE:  BLX             sscanf
46B1D2:  CMP             R0, #9
46B1D4:  BNE             loc_46B212
46B1D6:  LDR             R1, [SP,#0x70+var_30]; char *
46B1D8:  ADD             R0, SP, #0x70+var_2C; this
46B1DA:  LDRD.W          R3, R2, [SP,#0x70+var_38]; bool
46B1DE:  CMP             R2, #0
46B1E0:  VLDR            S0, [SP,#0x70+var_3C]
46B1E4:  VLDR            S2, [SP,#0x70+var_40]
46B1E8:  VLDR            S4, [SP,#0x70+var_44]
46B1EC:  VLDR            S6, [SP,#0x70+var_48]
46B1F0:  VLDR            S8, [SP,#0x70+var_4C]
46B1F4:  VSTR            S0, [SP,#0x70+var_70]
46B1F8:  VSTR            S2, [SP,#0x70+var_6C]
46B1FC:  VSTR            S4, [SP,#0x70+var_68]
46B200:  VSTR            S6, [SP,#0x70+var_64]
46B204:  VSTR            S8, [SP,#0x70+var_60]
46B208:  IT NE
46B20A:  MOVNE           R2, #1; int
46B20C:  BLX             j__ZN11CAudioZones16RegisterAudioBoxEPcibffffff; CAudioZones::RegisterAudioBox(char *,int,bool,float,float,float,float,float,float)
46B210:  B               loc_46B256
46B212:  STRD.W          R6, R5, [SP,#0x70+var_70]; float
46B216:  ADD             R5, SP, #0x70+var_2C
46B218:  ADD             R0, SP, #0x70+var_50
46B21A:  ADR             R1, aSDDFFFF; "%s %d %d %f %f %f %f"
46B21C:  ADD             R3, SP, #0x70+var_30
46B21E:  STRD.W          R9, R8, [SP,#0x70+var_68]; float
46B222:  STR             R0, [SP,#0x70+var_60]
46B224:  MOV             R0, R4; s
46B226:  MOV             R2, R5
46B228:  BLX             sscanf
46B22C:  LDR             R2, [SP,#0x70+var_34]
46B22E:  MOV             R0, R5; this
46B230:  VLDR            S0, [SP,#0x70+var_3C]
46B234:  LDR             R1, [SP,#0x70+var_30]; char *
46B236:  CMP             R2, #0
46B238:  LDR             R3, [SP,#0x70+var_38]; bool
46B23A:  VLDR            S2, [SP,#0x70+var_40]
46B23E:  VLDR            S4, [SP,#0x70+var_50]
46B242:  VSTR            S0, [SP,#0x70+var_70]
46B246:  VSTR            S2, [SP,#0x70+var_6C]
46B24A:  VSTR            S4, [SP,#0x70+var_68]
46B24E:  IT NE
46B250:  MOVNE           R2, #1; int
46B252:  BLX             j__ZN11CAudioZones19RegisterAudioSphereEPcibffff; CAudioZones::RegisterAudioSphere(char *,int,bool,float,float,float,float)
46B256:  LDR             R0, =(__stack_chk_guard_ptr - 0x46B25E)
46B258:  LDR             R1, [SP,#0x70+var_1C]
46B25A:  ADD             R0, PC; __stack_chk_guard_ptr
46B25C:  LDR             R0, [R0]; __stack_chk_guard
46B25E:  LDR             R0, [R0]
46B260:  SUBS            R0, R0, R1
46B262:  ITTT EQ
46B264:  ADDEQ           SP, SP, #0x58 ; 'X'
46B266:  POPEQ.W         {R8,R9,R11}
46B26A:  POPEQ           {R4-R7,PC}
46B26C:  BLX             __stack_chk_fail
