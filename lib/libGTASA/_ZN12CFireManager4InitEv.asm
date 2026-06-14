; =========================================================
; Game Engine Function: _ZN12CFireManager4InitEv
; Address            : 0x3F115C - 0x3F11B0
; =========================================================

3F115C:  PUSH            {R4,R6,R7,LR}
3F115E:  ADD             R7, SP, #8
3F1160:  VMOV.I32        Q8, #0
3F1164:  MOVS            R1, #0
3F1166:  MOV.W           R12, #1
3F116A:  MOV.W           LR, #0x3F800000
3F116E:  MOVW            R2, #0x3C64
3F1172:  MOVS            R3, #0
3F1174:  LDRB            R4, [R0,R3]
3F1176:  AND.W           R4, R4, #0xE0
3F117A:  ORR.W           R4, R4, #0x14
3F117E:  STRB            R4, [R0,R3]
3F1180:  ADDS            R4, R0, R3
3F1182:  ADDS            R3, #0x28 ; '('
3F1184:  STRH.W          R12, [R4,#2]
3F1188:  CMP.W           R3, #0x960
3F118C:  STRD.W          R1, R1, [R4,#0x14]
3F1190:  STR.W           LR, [R4,#0x1C]
3F1194:  STR             R1, [R4,#0x24]
3F1196:  STRH            R2, [R4,#0x20]
3F1198:  ADD.W           R4, R4, #4
3F119C:  VST1.32         {D16-D17}, [R4]
3F11A0:  BNE             loc_3F1174
3F11A2:  MOV             R1, #0xF423F
3F11AA:  STR.W           R1, [R0,#0x960]
3F11AE:  POP             {R4,R6,R7,PC}
