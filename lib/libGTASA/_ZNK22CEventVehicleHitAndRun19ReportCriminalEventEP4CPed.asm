; =========================================================
; Game Engine Function: _ZNK22CEventVehicleHitAndRun19ReportCriminalEventEP4CPed
; Address            : 0x379EC2 - 0x379F0E
; =========================================================

379EC2:  PUSH            {R4,R5,R7,LR}
379EC4:  ADD             R7, SP, #8
379EC6:  SUB             SP, SP, #8
379EC8:  MOV             R4, R0
379ECA:  LDR             R0, [R4]
379ECC:  LDR             R1, [R0,#0x20]
379ECE:  MOV             R0, R4
379ED0:  BLX             R1
379ED2:  CMP             R0, #1
379ED4:  BNE             loc_379F0A
379ED6:  LDR             R0, [R4,#0xC]
379ED8:  LDR.W           R5, [R0,#0x59C]
379EDC:  MOV.W           R0, #0xFFFFFFFF; int
379EE0:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
379EE4:  LDR             R1, [R4,#0x10]
379EE6:  LDR             R4, [R1,#0x14]
379EE8:  LDR.W           R3, [R1,#0x464]
379EEC:  ADD.W           R2, R4, #0x30 ; '0'
379EF0:  CMP             R4, #0
379EF2:  IT EQ
379EF4:  ADDEQ           R2, R1, #4
379EF6:  MOVS            R1, #0
379EF8:  CMP             R5, #6
379EFA:  STR             R1, [SP,#0x10+var_10]
379EFC:  ITE EQ
379EFE:  MOVEQ           R1, #0xB
379F00:  MOVNE           R1, #0xA
379F02:  BLX             j__ZN7CWanted13RegisterCrimeE10eCrimeTypeRK7CVectorjb; CWanted::RegisterCrime(eCrimeType,CVector const&,uint,bool)
379F06:  ADD             SP, SP, #8
379F08:  POP             {R4,R5,R7,PC}
379F0A:  ADD             SP, SP, #8
379F0C:  POP             {R4,R5,R7,PC}
