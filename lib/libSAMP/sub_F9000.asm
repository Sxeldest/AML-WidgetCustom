; =========================================================
; Game Engine Function: sub_F9000
; Address            : 0xF9000 - 0xF9070
; =========================================================

F9000:  PUSH            {R4-R7,LR}
F9002:  ADD             R7, SP, #0xC
F9004:  PUSH.W          {R11}
F9008:  MOV             R4, R0
F900A:  LDR             R0, [R0,#4]
F900C:  CBZ             R0, loc_F9054
F900E:  LDR             R5, [R0,#0x18]
F9010:  LDRH            R0, [R0,#0x26]
F9012:  BL              sub_1084DC
F9016:  LDR             R6, =(off_23494C - 0xF901C)
F9018:  ADD             R6, PC; off_23494C
F901A:  CBZ             R5, loc_F9030
F901C:  CBZ             R0, loc_F9030
F901E:  LDR             R0, [R6]; dword_23DF24
F9020:  MOV             R1, #0x5D4B41
F9028:  LDR             R0, [R0]
F902A:  ADD             R1, R0
F902C:  MOV             R0, R5
F902E:  BLX             R1
F9030:  LDR             R0, [R4,#4]
F9032:  LDR             R1, [R0]
F9034:  LDR             R1, [R1,#0x48]
F9036:  BLX             R1
F9038:  CBZ             R5, loc_F906A
F903A:  LDR             R0, [R6]; dword_23DF24
F903C:  MOV             R2, #0x4102BD
F9044:  LDR             R1, [R0]
F9046:  LDR             R0, [R4,#4]
F9048:  ADD             R1, R2
F904A:  POP.W           {R11}
F904E:  POP.W           {R4-R7,LR}
F9052:  BX              R1
F9054:  LDR             R1, =(aAxl - 0xF905E); "AXL" ...
F9056:  MOVS            R0, #6
F9058:  LDR             R2, =(aCentityCanTRen - 0xF9060); "CEntity: Can't render entity - m_pEntit"... ...
F905A:  ADD             R1, PC; "AXL"
F905C:  ADD             R2, PC; "CEntity: Can't render entity - m_pEntit"...
F905E:  POP.W           {R11}
F9062:  POP.W           {R4-R7,LR}
F9066:  B.W             sub_2242C8
F906A:  POP.W           {R11}
F906E:  POP             {R4-R7,PC}
