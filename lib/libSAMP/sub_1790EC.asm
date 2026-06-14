; =========================================================
; Game Engine Function: sub_1790EC
; Address            : 0x1790EC - 0x1791AA
; =========================================================

1790EC:  PUSH            {R4-R7,LR}
1790EE:  ADD             R7, SP, #0xC
1790F0:  PUSH.W          {R8,R9,R11}
1790F4:  SUB             SP, SP, #0x38
1790F6:  MOV             R6, R1
1790F8:  MOV             R8, R0
1790FA:  LDRD.W          R1, R0, [R7,#arg_0]
1790FE:  MOV             R9, R3
179100:  STRD.W          R1, R0, [SP,#0x50+var_30]
179104:  ADD             R0, SP, #0x50+var_30
179106:  LDR             R2, [R7,#arg_8]
179108:  MOVS            R5, #0
17910A:  STR             R3, [SP,#0x50+var_1C]
17910C:  ADD             R3, SP, #0x50+var_40
17910E:  STRD.W          R2, R6, [SP,#0x50+var_28]
179112:  MOVS            R1, #0x12
179114:  MOVS            R2, #2
179116:  STR             R5, [SP,#0x50+var_34]
179118:  STRD.W          R5, R5, [SP,#0x50+var_40]
17911C:  BL              sub_178FFE
179120:  LDR             R4, [SP,#0x50+var_3C]
179122:  CBZ             R4, loc_179158
179124:  LDR             R0, [SP,#0x50+var_40]
179126:  CBZ             R0, loc_179158
179128:  ORRS.W          R1, R0, R4
17912C:  MOV.W           R1, #0
179130:  BMI             loc_179162
179132:  CMP             R9, R4
179134:  MOV.W           R2, #0
179138:  SUB.W           R3, R9, R4
17913C:  IT LT
17913E:  MOVLT           R2, #1
179140:  CMP             R3, R0
179142:  MOV.W           R3, #0
179146:  IT LT
179148:  MOVLT           R3, #1
17914A:  ORRS            R2, R3
17914C:  ADD.W           R2, R6, R4
179150:  ITT NE
179152:  MOVNE           R2, #0
179154:  MOVNE           R0, #0
179156:  B               loc_179166
179158:  STRD.W          R5, R5, [R8]
17915C:  STR.W           R5, [R8,#8]
179160:  B               loc_1791A2
179162:  MOVS            R0, #0
179164:  MOVS            R2, #0
179166:  STR             R0, [SP,#0x50+var_44]
179168:  ADD             R0, SP, #0x50+var_4C
17916A:  ADD             R3, SP, #0x50+var_34
17916C:  STRD.W          R2, R1, [SP,#0x50+var_4C]
179170:  MOVS            R1, #0x13
179172:  MOVS            R2, #1
179174:  BL              sub_178FFE
179178:  LDR             R0, [SP,#0x50+var_34]
17917A:  CBZ             R0, loc_179198
17917C:  ADD             R0, R4
17917E:  CMP             R9, R0
179180:  MOV             R1, R0
179182:  IT LT
179184:  MOVLT           R1, R9
179186:  CMP             R0, #0
179188:  IT MI
17918A:  MOVMI           R1, R9
17918C:  STR             R1, [SP,#0x50+var_20]
17918E:  ADD             R1, SP, #0x50+var_24
179190:  MOV             R0, R8
179192:  BL              sub_178E84
179196:  B               loc_1791A2
179198:  MOVS            R0, #0
17919A:  STRD.W          R0, R0, [R8]
17919E:  STR.W           R0, [R8,#8]
1791A2:  ADD             SP, SP, #0x38 ; '8'
1791A4:  POP.W           {R8,R9,R11}
1791A8:  POP             {R4-R7,PC}
