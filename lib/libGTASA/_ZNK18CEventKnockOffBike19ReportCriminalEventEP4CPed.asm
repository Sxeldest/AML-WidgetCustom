; =========================================================
; Game Engine Function: _ZNK18CEventKnockOffBike19ReportCriminalEventEP4CPed
; Address            : 0x3760A8 - 0x3760FC
; =========================================================

3760A8:  PUSH            {R4,R5,R7,LR}
3760AA:  ADD             R7, SP, #8
3760AC:  SUB             SP, SP, #8
3760AE:  MOV             R5, R0
3760B0:  MOV             R4, R1
3760B2:  LDR             R0, [R5]
3760B4:  LDR             R1, [R0,#0x20]
3760B6:  MOV             R0, R5
3760B8:  BLX             R1
3760BA:  CMP             R0, #1
3760BC:  ITT EQ
3760BE:  LDREQ.W         R0, [R4,#0x59C]
3760C2:  CMPEQ           R0, #6
3760C4:  BEQ             loc_3760CA
3760C6:  ADD             SP, SP, #8
3760C8:  POP             {R4,R5,R7,PC}
3760CA:  LDR             R0, [R5,#0x30]; this
3760CC:  CMP             R0, #0
3760CE:  BEQ             loc_3760C6
3760D0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3760D4:  CMP             R0, #1
3760D6:  BNE             loc_3760C6
3760D8:  MOV.W           R0, #0xFFFFFFFF; int
3760DC:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
3760E0:  LDR             R1, [R4,#0x14]
3760E2:  MOVS            R2, #0
3760E4:  STR             R2, [SP,#0x10+var_10]
3760E6:  MOV             R3, R4
3760E8:  ADD.W           R2, R1, #0x30 ; '0'
3760EC:  CMP             R1, #0
3760EE:  IT EQ
3760F0:  ADDEQ           R2, R4, #4
3760F2:  MOVS            R1, #5
3760F4:  BLX             j__ZN7CWanted13RegisterCrimeE10eCrimeTypeRK7CVectorjb; CWanted::RegisterCrime(eCrimeType,CVector const&,uint,bool)
3760F8:  ADD             SP, SP, #8
3760FA:  POP             {R4,R5,R7,PC}
