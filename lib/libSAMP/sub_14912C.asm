; =========================================================
; Game Engine Function: sub_14912C
; Address            : 0x14912C - 0x149182
; =========================================================

14912C:  PUSH            {R4-R7,LR}
14912E:  ADD             R7, SP, #0xC
149130:  PUSH.W          {R8,R9,R11}
149134:  MOVW            R9, #0xF050
149138:  MOVW            R1, #0x13C8
14913C:  ADD.W           R8, R0, R1
149140:  ADDW            R6, R0, #0xFB4
149144:  MOVS            R5, #0
149146:  MOVT            R9, #0xFFFF
14914A:  LDRB            R0, [R6,R5]
14914C:  CBZ             R0, loc_149174
14914E:  ADD.W           R0, R6, R5,LSL#2
149152:  LDR.W           R0, [R0,R9]
149156:  CBZ             R0, loc_149174
149158:  LDR             R0, [R0]
14915A:  CBZ             R0, loc_149174
14915C:  LDR.W           R4, [R0,#0x128]
149160:  CBZ             R4, loc_149174
149162:  MOV             R0, R4
149164:  BL              sub_104108
149168:  CBNZ            R0, loc_149174
14916A:  LDRB.W          R1, [R8,R5]
14916E:  MOV             R0, R4
149170:  BL              sub_F8EC0
149174:  ADDS            R5, #1
149176:  CMP.W           R5, #0x3EC
14917A:  BNE             loc_14914A
14917C:  POP.W           {R8,R9,R11}
149180:  POP             {R4-R7,PC}
