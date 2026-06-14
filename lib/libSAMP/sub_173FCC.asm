; =========================================================
; Game Engine Function: sub_173FCC
; Address            : 0x173FCC - 0x1740F8
; =========================================================

173FCC:  CMP.W           R3, #0x1000000
173FD0:  IT CC
173FD2:  BXCC            LR
173FD4:  PUSH            {R4-R7,LR}
173FD6:  ADD             R7, SP, #0x14+var_8
173FD8:  PUSH.W          {R8,R9,R11}
173FDC:  VPUSH           {D8-D9}
173FE0:  SUB             SP, SP, #0x10
173FE2:  VMOV.F32        S18, #0.5
173FE6:  VLDR            S0, [R1]
173FEA:  VLDR            S2, [R1,#4]
173FEE:  MOV             R4, R0
173FF0:  LDR             R0, [R0,#0x58]
173FF2:  MOV             R9, R3
173FF4:  LDR             R1, [R4,#0x5C]
173FF6:  MOV             R6, R2
173FF8:  CMP             R0, R1
173FFA:  VADD.F32        S2, S2, S18
173FFE:  VADD.F32        S0, S0, S18
174002:  VSTR            S2, [SP,#0x40+var_34]
174006:  VSTR            S0, [SP,#0x40+var_38]
17400A:  BNE             loc_17404A
17400C:  CMP             R0, #0
17400E:  ADD.W           R5, R0, #1
174012:  ITTE NE
174014:  ADDNE.W         R1, R0, R0,LSR#31
174018:  ADDNE.W         R1, R0, R1,ASR#1
17401C:  MOVEQ           R1, #8
17401E:  CMP             R1, R5
174020:  IT GT
174022:  MOVGT           R5, R1
174024:  CMP             R0, R5
174026:  BGE             loc_17404A
174028:  LSLS            R0, R5, #3
17402A:  BL              sub_1654B0
17402E:  LDR             R1, [R4,#0x60]; src
174030:  MOV             R8, R0
174032:  CBZ             R1, loc_174044
174034:  LDR             R0, [R4,#0x58]
174036:  LSLS            R2, R0, #3; n
174038:  MOV             R0, R8; dest
17403A:  BLX             j_memcpy
17403E:  LDR             R0, [R4,#0x60]
174040:  BL              sub_165578
174044:  LDR             R0, [R4,#0x58]
174046:  STRD.W          R5, R8, [R4,#0x5C]
17404A:  LDR             R1, [R4,#0x60]
17404C:  LDRD.W          R2, R3, [SP,#0x40+var_38]
174050:  VLDR            S16, [R7,#8]
174054:  STR.W           R2, [R1,R0,LSL#3]
174058:  ADD.W           R0, R1, R0,LSL#3
17405C:  STR             R3, [R0,#4]
17405E:  LDR             R1, [R4,#0x58]
174060:  LDR             R2, [R4,#0x5C]
174062:  ADDS            R0, R1, #1
174064:  STR             R0, [R4,#0x58]
174066:  VLDR            S0, [R6]
17406A:  CMP             R0, R2
17406C:  VLDR            S2, [R6,#4]
174070:  VADD.F32        S0, S0, S18
174074:  VADD.F32        S2, S2, S18
174078:  VSTR            S0, [SP,#0x40+var_38]
17407C:  VSTR            S2, [SP,#0x40+var_34]
174080:  BNE             loc_1740BE
174082:  ADDS            R5, R1, #2
174084:  CMP             R0, #0
174086:  ITTE NE
174088:  ADDNE.W         R1, R0, R0,LSR#31
17408C:  ADDNE.W         R1, R0, R1,ASR#1
174090:  MOVEQ           R1, #8
174092:  CMP             R1, R5
174094:  IT GT
174096:  MOVGT           R5, R1
174098:  CMP             R0, R5
17409A:  BGE             loc_1740BE
17409C:  LSLS            R0, R5, #3
17409E:  BL              sub_1654B0
1740A2:  LDR             R1, [R4,#0x60]; src
1740A4:  MOV             R6, R0
1740A6:  CBZ             R1, loc_1740B8
1740A8:  LDR             R0, [R4,#0x58]
1740AA:  LSLS            R2, R0, #3; n
1740AC:  MOV             R0, R6; dest
1740AE:  BLX             j_memcpy
1740B2:  LDR             R0, [R4,#0x60]
1740B4:  BL              sub_165578
1740B8:  LDR             R0, [R4,#0x58]
1740BA:  STRD.W          R5, R6, [R4,#0x5C]
1740BE:  LDR             R1, [R4,#0x60]
1740C0:  MOVS            R5, #0
1740C2:  LDRD.W          R2, R3, [SP,#0x40+var_38]
1740C6:  STR.W           R2, [R1,R0,LSL#3]
1740CA:  ADD.W           R0, R1, R0,LSL#3
1740CE:  STR             R3, [R0,#4]
1740D0:  MOV             R3, R9; int
1740D2:  LDR             R0, [R4,#0x58]
1740D4:  LDR             R1, [R4,#0x60]; int
1740D6:  ADDS            R2, R0, #1; int
1740D8:  MOV             R0, R4; int
1740DA:  STR             R2, [R4,#0x58]
1740DC:  VSTR            S16, [SP,#0x40+var_3C]
1740E0:  STR             R5, [SP,#0x40+var_40]; int
1740E2:  BL              sub_172FDA
1740E6:  STR             R5, [R4,#0x58]
1740E8:  ADD             SP, SP, #0x10
1740EA:  VPOP            {D8-D9}
1740EE:  POP.W           {R8,R9,R11}
1740F2:  POP.W           {R4-R7,LR}
1740F6:  BX              LR
