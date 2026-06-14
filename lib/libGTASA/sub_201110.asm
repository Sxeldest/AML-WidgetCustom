; =========================================================
; Game Engine Function: sub_201110
; Address            : 0x201110 - 0x20118C
; =========================================================

201110:  PUSH            {R4-R7,LR}
201112:  ADD             R7, SP, #0xC
201114:  PUSH.W          {R11}
201118:  LDRB            R3, [R0,#0xB]
20111A:  LDR             R2, [R0,#4]
20111C:  ADDS            R0, R3, #7
20111E:  CMP.W           R2, R0,LSR#3
201122:  BLS             loc_201186
201124:  LSRS            R3, R0, #3
201126:  SUB.W           R12, R2, R3
20112A:  ADDS            R0, R1, R3
20112C:  CMP.W           R12, #0x10
201130:  BCC             loc_201170
201132:  BIC.W           LR, R12, #0xF
201136:  CMP.W           LR, #0
20113A:  BEQ             loc_201170
20113C:  ADD.W           R4, R1, R12
201140:  CMP             R0, R4
201142:  BCS             loc_20114C
201144:  ADDS            R4, R1, R2
201146:  CMP             R4, R1
201148:  MOV             R4, R3
20114A:  BHI             loc_201172
20114C:  ADD.W           R4, R3, LR
201150:  ADD             R0, LR
201152:  MOV             R5, LR
201154:  ADDS            R6, R1, R3
201156:  VLD1.8          {D16-D17}, [R1]!
20115A:  SUBS            R5, #0x10
20115C:  VLD1.8          {D18-D19}, [R6]
201160:  VADD.I8         Q8, Q8, Q9
201164:  VST1.8          {D16-D17}, [R6]
201168:  BNE             loc_201154
20116A:  CMP             R12, LR
20116C:  BNE             loc_201172
20116E:  B               loc_201186
201170:  MOV             R4, R3
201172:  NEGS            R1, R3
201174:  SUBS            R2, R2, R4
201176:  LDRB            R3, [R1,R0]
201178:  SUBS            R2, #1
20117A:  LDRB            R6, [R0]
20117C:  ADD             R3, R6
20117E:  STRB            R3, [R0]
201180:  ADD.W           R0, R0, #1
201184:  BNE             loc_201176
201186:  POP.W           {R11}
20118A:  POP             {R4-R7,PC}
