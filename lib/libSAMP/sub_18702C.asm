; =========================================================
; Game Engine Function: sub_18702C
; Address            : 0x18702C - 0x187144
; =========================================================

18702C:  PUSH            {R4-R7,LR}
18702E:  ADD             R7, SP, #0xC
187030:  PUSH.W          {R8-R11}
187034:  LDR             R1, =(dword_2390B4 - 0x18703A)
187036:  ADD             R1, PC; dword_2390B4
187038:  LDR             R0, [R1]
18703A:  LDR             R6, =(dword_381D88 - 0x187044)
18703C:  CMN.W           R0, #2
187040:  ADD             R6, PC; dword_381D88
187042:  BGT             loc_187062
187044:  MOVW            R3, #:lower16:(elf_gnu_hash_bucket+0x711)
187048:  MOVW            R0, #0x1105
18704C:  MOVS            R2, #1
18704E:  MOVT            R3, #:upper16:(elf_gnu_hash_bucket+0x711)
187052:  STR             R0, [R6]
187054:  MULS            R0, R3
187056:  STR.W           R0, [R6,R2,LSL#2]
18705A:  ADDS            R2, #1
18705C:  CMP.W           R2, #0x270
187060:  BNE             loc_187054
187062:  LDR             R2, =(dword_38274C - 0x187072)
187064:  MOV             R3, R6
187066:  LDR.W           R10, [R3,#(dword_381D8C - 0x381D88)]!
18706A:  MOVW            LR, #0xFFFE
18706E:  ADD             R2, PC; dword_38274C
187070:  MOVW            R12, #0xB0DF
187074:  MOVT            LR, #0x7FFF
187078:  MOVT            R12, #0x9908
18707C:  STR             R3, [R2]
18707E:  MOVW            R2, #0x26F
187082:  STR             R2, [R1]
187084:  MOVS            R1, #0
187086:  LDR             R2, [R6]
187088:  AND.W           R0, R10, LR
18708C:  AND.W           R2, R2, #0x80000000
187090:  ADD             R2, R0
187092:  ADDS            R0, R6, R1
187094:  MOVS.W          R5, R10,LSL#31
187098:  MOV             R4, R10
18709A:  LDR.W           R5, [R0,#0x634]
18709E:  EOR.W           R3, R12, R2,LSR#1
1870A2:  LDR.W           R10, [R0,#8]
1870A6:  IT EQ
1870A8:  LSREQ           R3, R2, #1
1870AA:  EOR.W           R2, R3, R5
1870AE:  STR             R2, [R6,R1]
1870B0:  ADDS            R1, #4
1870B2:  CMP.W           R1, #0x38C
1870B6:  MOV             R2, R4
1870B8:  BNE             loc_187088
1870BA:  MOVW            R5, #0xFE74
1870BE:  ADD.W           R8, R6, R1
1870C2:  MOVT            R5, #0xFFFF
1870C6:  MOVS            R2, #0
1870C8:  MOV             R11, R6
1870CA:  AND.W           R1, R10, LR
1870CE:  AND.W           R4, R4, #0x80000000
1870D2:  ADD             R1, R4
1870D4:  ADD.W           R0, R8, R2,LSL#2
1870D8:  MOV             R3, R10
1870DA:  LDR.W           R9, [R6],#4
1870DE:  LDR.W           R10, [R0,#8]
1870E2:  EOR.W           R4, R12, R1,LSR#1
1870E6:  LSLS            R0, R3, #0x1F
1870E8:  IT EQ
1870EA:  LSREQ           R4, R1, #1
1870EC:  EOR.W           R0, R4, R9
1870F0:  STR.W           R0, [R8,R2,LSL#2]
1870F4:  ADDS            R2, #1
1870F6:  ADDS            R5, #1
1870F8:  MOV             R4, R3
1870FA:  BCC             loc_1870CA
1870FC:  LDR.W           R0, [R11]
187100:  AND.W           R3, R3, #0x80000000
187104:  LDR             R1, [R6]
187106:  AND.W           R6, R0, LR
18710A:  ADD             R3, R6
18710C:  EOR.W           R1, R1, R3,LSR#1
187110:  LSLS            R3, R0, #0x1F
187112:  IT NE
187114:  EORNE.W         R1, R1, R12
187118:  STR.W           R1, [R8,R2,LSL#2]
18711C:  MOVW            R1, #0x5680
187120:  EOR.W           R0, R0, R0,LSR#11
187124:  MOVT            R1, #0x9D2C
187128:  AND.W           R1, R1, R0,LSL#7
18712C:  EORS            R0, R1
18712E:  MOVS            R1, #0xEFC60000
187134:  AND.W           R1, R1, R0,LSL#15
187138:  EORS            R0, R1
18713A:  EOR.W           R0, R0, R0,LSR#18
18713E:  POP.W           {R8-R11}
187142:  POP             {R4-R7,PC}
