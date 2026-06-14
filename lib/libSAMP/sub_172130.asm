; =========================================================
; Game Engine Function: sub_172130
; Address            : 0x172130 - 0x17217E
; =========================================================

172130:  PUSH            {R4,R6,R7,LR}
172132:  ADD             R7, SP, #8
172134:  CMP             R0, #0
172136:  BMI             loc_172178
172138:  LDR             R3, =(dword_381B58 - 0x17213E)
17213A:  ADD             R3, PC; dword_381B58
17213C:  LDR.W           R12, [R3]
172140:  MOVW            R3, #0x1978
172144:  ADD             R12, R3
172146:  LDR.W           LR, [R12]
17214A:  MOVS            R3, #0
17214C:  CMP             R1, R0
17214E:  BEQ             loc_17217A
172150:  CMP             R0, LR
172152:  BGE             loc_17217A
172154:  LDR.W           R3, [R12,#8]
172158:  LDR.W           R3, [R3,R0,LSL#2]
17215C:  LDRB.W          R4, [R3,#0x7A]
172160:  CBZ             R4, loc_172170
172162:  LDR.W           R4, [R3,#0x2FC]
172166:  CMP             R4, R3
172168:  BNE             loc_172170
17216A:  LDRB            R4, [R3,#0xA]
17216C:  LSLS            R4, R4, #0x1C
17216E:  BPL             loc_17217A
172170:  ADD             R0, R2
172172:  CMP.W           R0, #0xFFFFFFFF
172176:  BGT             loc_17214A
172178:  MOVS            R3, #0
17217A:  MOV             R0, R3
17217C:  POP             {R4,R6,R7,PC}
