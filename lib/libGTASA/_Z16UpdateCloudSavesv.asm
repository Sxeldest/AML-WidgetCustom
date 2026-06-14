; =========================================================
; Game Engine Function: _Z16UpdateCloudSavesv
; Address            : 0x287004 - 0x2870A4
; =========================================================

287004:  PUSH            {R4,R5,R7,LR}
287006:  ADD             R7, SP, #8
287008:  SUB             SP, SP, #8
28700A:  MOV             R0, SP; tv
28700C:  MOVS            R1, #0; tz
28700E:  BLX             gettimeofday
287012:  LDR             R0, [SP,#0x10+var_10]
287014:  MOV.W           R2, #0x3E8
287018:  LDR             R1, =(dword_6DFE78 - 0x287020)
28701A:  MULS            R0, R2
28701C:  ADD             R1, PC; dword_6DFE78
28701E:  LDRD.W          R1, R2, [R1]
287022:  ADDS            R1, #0x1E
287024:  ADC.W           R2, R2, #0
287028:  ASRS            R3, R0, #0x1F
28702A:  SUBS            R0, R0, R1
28702C:  SBCS.W          R0, R3, R2
287030:  BLT             loc_2870A0
287032:  LDR             R0, =(NextCheckTime_ptr - 0x28703C)
287034:  MOVW            R1, #0x1388
287038:  ADD             R0, PC; NextCheckTime_ptr
28703A:  LDR             R0, [R0]; NextCheckTime
28703C:  LDR             R0, [R0]
28703E:  ADDS            R4, R0, R1
287040:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
287044:  CMP             R4, R0
287046:  BCS             loc_287060
287048:  LDR             R0, =(TempSignIn_ptr - 0x287050)
28704A:  LDR             R1, =(NextCheckTime_ptr - 0x287052)
28704C:  ADD             R0, PC; TempSignIn_ptr
28704E:  ADD             R1, PC; NextCheckTime_ptr
287050:  LDR             R4, [R0]; TempSignIn
287052:  LDR             R5, [R1]; NextCheckTime
287054:  BLX             _Z12IsSCSignedInv; IsSCSignedIn(void)
287058:  STRB            R0, [R4]
28705A:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
28705E:  STR             R0, [R5]
287060:  LDR             R0, =(TempSignIn_ptr - 0x287066)
287062:  ADD             R0, PC; TempSignIn_ptr
287064:  LDR             R0, [R0]; TempSignIn
287066:  LDRB            R0, [R0]
287068:  CBZ             R0, loc_2870A0
28706A:  BLX             cloudGetBufferPtr
28706E:  CBNZ            R0, loc_2870A0
287070:  LDR             R0, =(CloudSaveState_ptr - 0x287076)
287072:  ADD             R0, PC; CloudSaveState_ptr
287074:  LDR             R0, [R0]; CloudSaveState
287076:  LDR             R0, [R0]
287078:  CMP             R0, #9
28707A:  BNE             loc_2870A0
28707C:  LDR             R0, =(CloudSaveState_ptr - 0x287084)
28707E:  MOVS            R1, #1
287080:  ADD             R0, PC; CloudSaveState_ptr
287082:  LDR             R0, [R0]; CloudSaveState
287084:  STR             R1, [R0]
287086:  MOV             R0, SP; tv
287088:  MOVS            R1, #0; tz
28708A:  BLX             gettimeofday
28708E:  LDR             R0, [SP,#0x10+var_10]
287090:  MOV.W           R1, #0x3E8
287094:  MULS            R0, R1
287096:  LDR             R1, =(dword_6DFE78 - 0x28709C)
287098:  ADD             R1, PC; dword_6DFE78
28709A:  ASRS            R2, R0, #0x1F
28709C:  STRD.W          R0, R2, [R1]
2870A0:  ADD             SP, SP, #8
2870A2:  POP             {R4,R5,R7,PC}
