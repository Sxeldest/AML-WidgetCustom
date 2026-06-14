; =========================================================
; Game Engine Function: sub_185F4A
; Address            : 0x185F4A - 0x186116
; =========================================================

185F4A:  PUSH            {R4-R7,LR}
185F4C:  ADD             R7, SP, #0xC
185F4E:  PUSH.W          {R8,R9,R11}
185F52:  SUB             SP, SP, #0x10
185F54:  VLD1.32         {D18-D19}, [R1]
185F58:  MOV             R5, SP
185F5A:  MOV             R1, R5
185F5C:  VMOV.I32        Q10, #0
185F60:  VLD1.32         {D16-D17}, [R0]
185F64:  MOVS            R0, #0xC
185F66:  MOV             R6, R3
185F68:  MOV             R8, R2
185F6A:  VST1.64         {D18-D19}, [R1],R0
185F6E:  LDR             R0, [R1]
185F70:  VST1.32         {D16-D17}, [R6]
185F74:  CMP             R0, #0
185F76:  VST1.32         {D20-D21}, [R8]
185F7A:  BMI             loc_185FB0
185F7C:  LDR             R2, [R6,#0xC]
185F7E:  CMP             R2, R0
185F80:  BHI             loc_185F9C
185F82:  MOVS            R1, #2
185F84:  MOV             R3, R0
185F86:  CMP             R2, R3
185F88:  BCC             loc_185FB0
185F8A:  ADDS            R2, R1, #1
185F8C:  BEQ             loc_185FB0
185F8E:  LDR.W           R2, [R6,R1,LSL#2]
185F92:  LDR.W           R3, [R5,R1,LSL#2]
185F96:  SUBS            R1, #1
185F98:  CMP             R2, R3
185F9A:  BLS             loc_185F86
185F9C:  MOVS            R2, #3
185F9E:  MOVS            R1, #0
185FA0:  LDR.W           R3, [R6,R2,LSL#2]
185FA4:  CBNZ            R3, loc_185FF2
185FA6:  SUBS            R2, #1
185FA8:  ADDS            R1, #0x20 ; ' '
185FAA:  ADDS            R3, R2, #1
185FAC:  BNE             loc_185FA0
185FAE:  B               loc_18600E
185FB0:  LDR             R2, [R6,#0xC]
185FB2:  CMP             R0, R2
185FB4:  BHI             loc_185FD4
185FB6:  MOVS            R1, #2
185FB8:  MOV             R3, R0
185FBA:  MOV.W           R9, #1
185FBE:  CMP             R3, R2
185FC0:  BCC             loc_186094
185FC2:  ADDS            R2, R1, #1
185FC4:  BEQ             loc_186094
185FC6:  LDR.W           R2, [R6,R1,LSL#2]
185FCA:  LDR.W           R3, [R5,R1,LSL#2]
185FCE:  SUBS            R1, #1
185FD0:  CMP             R3, R2
185FD2:  BLS             loc_185FBE
185FD4:  LSRS            R1, R0, #1
185FD6:  STR             R1, [SP,#0x28+var_1C]
185FD8:  MOVS            R1, #2
185FDA:  LDR.W           R2, [R5,R1,LSL#2]
185FDE:  LSLS            R0, R0, #0x1F
185FE0:  ORR.W           R0, R0, R2,LSR#1
185FE4:  STR.W           R0, [R5,R1,LSL#2]
185FE8:  SUBS            R1, #1
185FEA:  ADDS            R0, R1, #1
185FEC:  MOV             R0, R2
185FEE:  BNE             loc_185FDA
185FF0:  B               loc_1860EE
185FF2:  CMP             R2, #0
185FF4:  BMI             loc_18600E
185FF6:  MOV             R3, R2
185FF8:  LDR.W           R4, [R5,R3,LSL#2]
185FFC:  CBNZ            R4, loc_18600A
185FFE:  SUBS            R4, R3, #1
186000:  CMP             R3, #0
186002:  MOV             R3, R4
186004:  BGT             loc_185FF8
186006:  MOV.W           R3, #0xFFFFFFFF
18600A:  CMP             R3, R2
18600C:  BNE             loc_186100
18600E:  MOV.W           R9, #1
186012:  CMP             R0, #0
186014:  BMI             loc_18605A
186016:  LDR             R1, [R6,#0xC]
186018:  CMP             R1, R0
18601A:  BHI             loc_186036
18601C:  MOVS            R2, #2
18601E:  MOV             R3, R1
186020:  CMP             R3, R0
186022:  BCC             loc_18605A
186024:  ADDS            R0, R2, #1
186026:  BEQ             loc_18605A
186028:  LDR.W           R3, [R6,R2,LSL#2]
18602C:  LDR.W           R0, [R5,R2,LSL#2]
186030:  SUBS            R2, #1
186032:  CMP             R3, R0
186034:  BLS             loc_186020
186036:  MOVS            R0, #0
186038:  MOVS            R2, #0
18603A:  LDR.W           R3, [R5,R0,LSL#2]
18603E:  ORR.W           R2, R2, R3,LSL#1
186042:  STR.W           R2, [R5,R0,LSL#2]
186046:  ADDS            R0, #1
186048:  LSRS            R2, R3, #0x1F
18604A:  CMP             R0, #4
18604C:  BNE             loc_18603A
18604E:  LDR             R0, [SP,#0x28+var_1C]
186050:  ADD.W           R9, R9, #1
186054:  CMP.W           R0, #0xFFFFFFFF
186058:  BGT             loc_186018
18605A:  MOVS            R0, #0xC
18605C:  LDR             R1, [R6,R0]
18605E:  LDR             R2, [R5,R0]
186060:  CMP             R2, R1
186062:  BHI             loc_186070
186064:  BCC             loc_18608E
186066:  SUBS            R1, R0, #4
186068:  CMP             R0, #0
18606A:  MOV             R0, R1
18606C:  BNE             loc_18605C
18606E:  B               loc_18608E
186070:  MOVS            R1, #0
186072:  MOVS            R0, #3
186074:  LDR.W           R2, [R5,R0,LSL#2]
186078:  ORR.W           R1, R1, R2,LSR#1
18607C:  STR.W           R1, [R5,R0,LSL#2]
186080:  SUBS            R0, #1
186082:  LSLS            R1, R2, #0x1F
186084:  ADDS            R2, R0, #1
186086:  BNE             loc_186074
186088:  SUB.W           R9, R9, #1
18608C:  B               loc_18605A
18608E:  CMP.W           R9, #0
186092:  BEQ             loc_1860EE
186094:  MOVS            R4, #0
186096:  ADDS            R4, #1
186098:  SUB.W           R9, R9, #1
18609C:  MOVS            R0, #0xC
18609E:  LDR             R1, [R6,R0]
1860A0:  LDR             R2, [R5,R0]
1860A2:  CMP             R2, R1
1860A4:  BHI             loc_1860CE
1860A6:  BCC             loc_1860B0
1860A8:  SUBS            R1, R0, #4
1860AA:  CMP             R0, #0
1860AC:  MOV             R0, R1
1860AE:  BNE             loc_18609E
1860B0:  MOV             R0, R6
1860B2:  MOV             R1, R5
1860B4:  BL              sub_184F9C
1860B8:  MOV             R0, R8; int
1860BA:  MOV             R1, R4
1860BC:  BL              sub_184F38
1860C0:  LDR.W           R0, [R8]
1860C4:  MOVS            R4, #0
1860C6:  ORR.W           R0, R0, #1
1860CA:  STR.W           R0, [R8]
1860CE:  MOVS            R1, #0
1860D0:  MOVS            R0, #3
1860D2:  LDR.W           R2, [R5,R0,LSL#2]
1860D6:  ORR.W           R1, R1, R2,LSR#1
1860DA:  STR.W           R1, [R5,R0,LSL#2]
1860DE:  SUBS            R0, #1
1860E0:  LSLS            R1, R2, #0x1F
1860E2:  ADDS            R2, R0, #1
1860E4:  BNE             loc_1860D2
1860E6:  CMP.W           R9, #0
1860EA:  BNE             loc_186096
1860EC:  B               loc_1860F0
1860EE:  MOVS            R4, #0
1860F0:  MOV             R0, R8; int
1860F2:  MOV             R1, R4
1860F4:  BL              sub_184F38
1860F8:  ADD             SP, SP, #0x10
1860FA:  POP.W           {R8,R9,R11}
1860FE:  POP             {R4-R7,PC}
186100:  ADD.W           R4, R1, R3,LSL#5
186104:  MOV             R0, SP; int
186106:  RSB.W           R1, R4, #0x60 ; '`'
18610A:  BL              sub_184F38
18610E:  LDR             R0, [SP,#0x28+var_1C]
186110:  RSB.W           R9, R4, #0x61 ; 'a'
186114:  B               loc_186012
