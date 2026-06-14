; =========================================================
; Game Engine Function: sub_FF15C
; Address            : 0xFF15C - 0xFF1A2
; =========================================================

FF15C:  PUSH            {R4,R6,R7,LR}
FF15E:  ADD             R7, SP, #8
FF160:  LDR             R2, =(off_25B150 - 0xFF166)
FF162:  ADD             R2, PC; off_25B150
FF164:  LDR             R2, [R2]
FF166:  BLX             R2
FF168:  MOV             R4, R0
FF16A:  LDR             R0, =(dword_247398 - 0xFF170)
FF16C:  ADD             R0, PC; dword_247398
FF16E:  BL              sub_FBA98
FF172:  LDR             R0, =(off_234A24 - 0xFF178)
FF174:  ADD             R0, PC; off_234A24
FF176:  LDR             R0, [R0]; dword_23DEEC
FF178:  LDR             R0, [R0]
FF17A:  CBZ             R0, loc_FF182
FF17C:  LDR             R1, [R0]
FF17E:  LDR             R1, [R1,#0x34]
FF180:  BLX             R1
FF182:  LDR             R0, =(off_23494C - 0xFF192)
FF184:  MOVW            R2, #0xC93C
FF188:  LDR             R1, =(off_234A90 - 0xFF194)
FF18A:  MOVT            R2, #0x9F
FF18E:  ADD             R0, PC; off_23494C
FF190:  ADD             R1, PC; off_234A90
FF192:  LDR             R0, [R0]; dword_23DF24
FF194:  LDR             R1, [R1]; off_2636BC
FF196:  LDR             R0, [R0]
FF198:  LDR             R1, [R1]
FF19A:  LDR             R0, [R0,R2]
FF19C:  BLX             R1
FF19E:  MOV             R0, R4
FF1A0:  POP             {R4,R6,R7,PC}
