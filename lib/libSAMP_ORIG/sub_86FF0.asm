; =========================================================
; Game Engine Function: sub_86FF0
; Address            : 0x86FF0 - 0x87112
; =========================================================

86FF0:  PUSH            {R4-R7,LR}
86FF2:  ADD             R7, SP, #0xC
86FF4:  PUSH.W          {R11}
86FF8:  MOV.W           R4, #0xFFFFFFFF
86FFC:  MOV             LR, #0xFFFFFFF0
87000:  CMP             R3, #0
87002:  ADD.W           R12, R4, R2,ASR#3
87006:  IT NE
87008:  MOVNE.W         LR, #0
8700C:  CMP             R2, #0x10
8700E:  BLT             loc_87040
87010:  ASRS            R2, R2, #3
87012:  SUBS            R3, #1
87014:  LSLS            R2, R2, #3
87016:  LDR             R5, [R0]
87018:  LDR             R4, [R0,#8]
8701A:  CMP             R4, R5
8701C:  BGE             loc_870B4
8701E:  LDR             R5, [R0,#0xC]
87020:  ASRS            R6, R4, #3
87022:  LDRB            R5, [R5,R6]
87024:  ADDS            R6, R4, #1
87026:  AND.W           R4, R4, #7
8702A:  STR             R6, [R0,#8]
8702C:  LSL.W           R4, R5, R4
87030:  LSLS            R4, R4, #0x18
87032:  BPL             loc_870B8
87034:  STRB.W          R3, [R1,R12]
87038:  SUBS            R2, #8
8703A:  SUBS.W          R12, R12, #1
8703E:  BGT             loc_87016
87040:  LDR             R3, [R0]
87042:  LDR             R2, [R0,#8]
87044:  CMP             R2, R3
87046:  BGE             loc_870B4
87048:  LDR             R4, [R0,#0xC]
8704A:  ASRS            R5, R2, #3
8704C:  LDRB            R4, [R4,R5]
8704E:  ADDS            R5, R2, #1
87050:  STR             R5, [R0,#8]
87052:  AND.W           R5, R2, #7
87056:  LSLS            R4, R5
87058:  LSLS            R4, R4, #0x18
8705A:  BPL             loc_870C6
8705C:  ADDS            R4, R2, #5
8705E:  MOVS            R2, #0
87060:  CMP             R4, R3
87062:  BGT             loc_8710A
87064:  STRB.W          R2, [R1,R12]
87068:  LDRD.W          R2, R3, [R0,#8]
8706C:  ASRS            R4, R2, #3
8706E:  LDRB            R4, [R3,R4]
87070:  AND.W           R3, R2, #7
87074:  CMP             R3, #5
87076:  LSL.W           R2, R4, R3
8707A:  STRB.W          R2, [R1,R12]
8707E:  BCC             loc_87098
87080:  LDRD.W          R4, R5, [R0,#8]
87084:  RSB.W           R3, R3, #8
87088:  ADD.W           R4, R5, R4,ASR#3
8708C:  LDRB            R4, [R4,#1]
8708E:  LSR.W           R3, R4, R3
87092:  ORRS            R2, R3
87094:  STRB.W          R2, [R1,R12]
87098:  UXTB            R2, R2
8709A:  LSRS            R2, R2, #4
8709C:  STRB.W          R2, [R1,R12]
870A0:  LDR             R2, [R0,#8]
870A2:  ADDS            R2, #4
870A4:  STR             R2, [R0,#8]
870A6:  LDRB.W          R0, [R1,R12]
870AA:  ORR.W           R0, R0, LR; int
870AE:  STRB.W          R0, [R1,R12]
870B2:  B               loc_87108
870B4:  MOVS            R2, #0
870B6:  B               loc_8710A
870B8:  MOVS            R3, #1
870BA:  POP.W           {R11}
870BE:  POP.W           {R4-R7,LR}
870C2:  B.W             sub_86E30
870C6:  ADD.W           R6, R2, #9
870CA:  MOVS            R2, #0
870CC:  CMP             R6, R3
870CE:  BGT             loc_8710A
870D0:  STRB.W          R2, [R1,R12]
870D4:  LDRD.W          R2, R3, [R0,#8]
870D8:  ASRS            R6, R2, #3
870DA:  LDRB            R6, [R3,R6]
870DC:  ANDS.W          R3, R2, #7
870E0:  LSL.W           R2, R6, R3
870E4:  STRB.W          R2, [R1,R12]
870E8:  BEQ             loc_87102
870EA:  LDRD.W          R6, R5, [R0,#8]
870EE:  RSB.W           R3, R3, #8
870F2:  ADD.W           R6, R5, R6,ASR#3
870F6:  LDRB            R6, [R6,#1]
870F8:  LSR.W           R3, R6, R3
870FC:  ORRS            R2, R3
870FE:  STRB.W          R2, [R1,R12]
87102:  LDR             R1, [R0,#8]
87104:  ADDS            R1, #8
87106:  STR             R1, [R0,#8]
87108:  MOVS            R2, #1
8710A:  MOV             R0, R2
8710C:  POP.W           {R11}
87110:  POP             {R4-R7,PC}
