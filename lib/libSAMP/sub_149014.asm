; =========================================================
; Game Engine Function: sub_149014
; Address            : 0x149014 - 0x149074
; =========================================================

149014:  PUSH            {R4-R7,LR}
149016:  ADD             R7, SP, #0xC
149018:  PUSH.W          {R8-R10}
14901C:  MOVW            R1, #0x13BC
149020:  MOVW            R10, #0xF050
149024:  LDR             R1, [R0,R1]
149026:  ADDW            R6, R0, #0xFB4
14902A:  MOV.W           R8, #0
14902E:  MOVT            R10, #0xFFFF
149032:  MOV.W           R9, #1
149036:  MOVS            R5, #0
149038:  STR.W           R8, [R1,#0x14]
14903C:  STRB.W          R8, [R1,#0x13]
149040:  LDRB            R0, [R6,R5]
149042:  CBZ             R0, loc_149066
149044:  ADD.W           R0, R6, R5,LSL#2
149048:  LDR.W           R0, [R0,R10]
14904C:  CBZ             R0, loc_149066
14904E:  LDR             R4, [R0]
149050:  CBZ             R4, loc_149066
149052:  LDRB            R2, [R4,#0x19]
149054:  CBZ             R2, loc_149062
149056:  MOV             R0, R4
149058:  MOVS            R1, #0
14905A:  BL              sub_14B6A0
14905E:  STRB.W          R8, [R4,#0x19]
149062:  STRB.W          R9, [R4]
149066:  ADDS            R5, #1
149068:  CMP.W           R5, #0x3EC
14906C:  BNE             loc_149040
14906E:  POP.W           {R8-R10}
149072:  POP             {R4-R7,PC}
