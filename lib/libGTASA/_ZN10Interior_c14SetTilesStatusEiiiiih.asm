; =========================================================
; Game Engine Function: _ZN10Interior_c14SetTilesStatusEiiiiih
; Address            : 0x446FF0 - 0x447088
; =========================================================

446FF0:  PUSH            {R4-R7,LR}
446FF2:  ADD             R7, SP, #0xC
446FF4:  PUSH.W          {R8}
446FF8:  ORR.W           R6, R2, R1
446FFC:  CMP             R6, #0
446FFE:  BLT             loc_447082
447000:  LDR             R6, [R0,#0x14]
447002:  ADDS            R4, R3, R1
447004:  LDRB            R5, [R6,#2]
447006:  CMP             R4, R5
447008:  BGT             loc_447082
44700A:  LDR.W           R12, [R7,#arg_0]
44700E:  LDRB            R6, [R6,#3]
447010:  ADD.W           R5, R12, R2
447014:  CMP             R5, R6
447016:  BGT             loc_447082
447018:  CMP             R3, #1
44701A:  BLT             loc_447082
44701C:  RSB.W           R1, R1, R1,LSL#4
447020:  LDRD.W          R4, LR, [R7,#arg_4]
447024:  MOV.W           R8, #1
447028:  ADD.W           R1, R2, R1,LSL#1
44702C:  MOVS            R2, #0xA
44702E:  ADD             R0, R1
447030:  MOVS            R1, #0
447032:  ADDS            R0, #0x68 ; 'h'
447034:  CMP.W           R12, #1
447038:  BLT             loc_44707A
44703A:  MOVS            R6, #0
44703C:  B               loc_447068
44703E:  CMP.W           LR, #0
447042:  BEQ             loc_447054
447044:  CMP             R5, #8
447046:  BHI             loc_447064
447048:  LSL.W           R5, R8, R5
44704C:  TST.W           R5, #0x1A0
447050:  BNE             loc_447074
447052:  B               loc_447064
447054:  CBZ             R5, loc_447064
447056:  CMP             R5, #3
447058:  BNE             loc_447074
44705A:  CMP             R4, #4
44705C:  BEQ             loc_447064
44705E:  CMP             R4, #3
447060:  BNE             loc_447074
447062:  B               loc_447082
447064:  STRB            R4, [R0,R6]
447066:  B               loc_447074
447068:  LDRB            R5, [R0,R6]
44706A:  CMP             R4, #5
44706C:  IT EQ
44706E:  CMPEQ           R5, #9
447070:  BNE             loc_44703E
447072:  STRB            R2, [R0,R6]
447074:  ADDS            R6, #1
447076:  CMP             R6, R12
447078:  BLT             loc_447068
44707A:  ADDS            R1, #1
44707C:  ADDS            R0, #0x1E
44707E:  CMP             R1, R3
447080:  BLT             loc_447034
447082:  POP.W           {R8}
447086:  POP             {R4-R7,PC}
