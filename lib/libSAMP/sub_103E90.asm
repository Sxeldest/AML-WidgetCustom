; =========================================================
; Game Engine Function: sub_103E90
; Address            : 0x103E90 - 0x103EE8
; =========================================================

103E90:  PUSH            {R4,R5,R7,LR}
103E92:  ADD             R7, SP, #8
103E94:  MOV             R5, R1
103E96:  LDR             R1, =(aAxl - 0x103EA0); "AXL" ...
103E98:  LDR             R2, =(aSetmodelindexD - 0x103EA4); "SetModelIndex %d" ...
103E9A:  MOV             R4, R0
103E9C:  ADD             R1, PC; "AXL"
103E9E:  MOVS            R0, #4; prio
103EA0:  ADD             R2, PC; "SetModelIndex %d"
103EA2:  MOV             R3, R5
103EA4:  BLX             __android_log_print
103EA8:  LDR             R0, [R4,#8]
103EAA:  BL              sub_1082F4
103EAE:  CBZ             R0, locret_103EE6
103EB0:  MOV             R0, R5
103EB2:  BL              sub_108480
103EB6:  LDR             R1, [R4,#0x5C]
103EB8:  CBZ             R1, locret_103EE6
103EBA:  CMP             R0, #0
103EBC:  IT EQ
103EBE:  MOVEQ           R5, R0
103EC0:  MOV             R0, R4
103EC2:  MOV             R1, R5
103EC4:  BL              sub_F8A54
103EC8:  LDR             R0, =(off_23494C - 0x103ED8)
103ECA:  MOVW            R2, #0xCE69
103ECE:  LDR             R1, [R4,#0x5C]
103ED0:  MOVT            R2, #0x39 ; '9'
103ED4:  ADD             R0, PC; off_23494C
103ED6:  LDR             R0, [R0]; dword_23DF24
103ED8:  LDR             R0, [R0]
103EDA:  ADD             R2, R0
103EDC:  ADD.W           R0, R1, #0x298
103EE0:  POP.W           {R4,R5,R7,LR}
103EE4:  BX              R2
103EE6:  POP             {R4,R5,R7,PC}
