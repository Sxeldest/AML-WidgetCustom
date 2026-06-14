; =========================================================
; Game Engine Function: sub_149074
; Address            : 0x149074 - 0x1490CE
; =========================================================

149074:  PUSH            {R4-R7,LR}
149076:  ADD             R7, SP, #0xC
149078:  PUSH.W          {R8}
14907C:  MOV             R4, R0
14907E:  MOVW            R0, #0x13BC
149082:  LDR             R0, [R4,R0]
149084:  CBZ             R0, loc_14908E
149086:  LDR             R0, [R0,#0x1C]
149088:  CBZ             R0, loc_14908E
14908A:  BL              sub_1057CC
14908E:  MOVW            R8, #0xF050
149092:  ADDW            R5, R4, #0xFB4
149096:  MOVS            R6, #0
149098:  MOVT            R8, #0xFFFF
14909C:  LDRB            R0, [R5,R6]
14909E:  CBZ             R0, loc_1490C0
1490A0:  ADD.W           R0, R5, R6,LSL#2
1490A4:  LDR.W           R0, [R0,R8]
1490A8:  CBZ             R0, loc_1490C0
1490AA:  LDR             R0, [R0]
1490AC:  CBZ             R0, loc_1490C0
1490AE:  LDR.W           R4, [R0,#0x128]
1490B2:  CBZ             R4, loc_1490C0
1490B4:  MOV             R0, R4
1490B6:  BL              sub_106B84
1490BA:  MOV             R0, R4
1490BC:  BL              sub_1057CC
1490C0:  ADDS            R6, #1
1490C2:  CMP.W           R6, #0x3EC
1490C6:  BNE             loc_14909C
1490C8:  POP.W           {R8}
1490CC:  POP             {R4-R7,PC}
