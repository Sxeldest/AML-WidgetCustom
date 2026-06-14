; =========================================================
; Game Engine Function: ec_decode
; Address            : 0x193BFC - 0x193C2A
; =========================================================

193BFC:  PUSH            {R4-R7,LR}
193BFE:  ADD             R7, SP, #0xC
193C00:  PUSH.W          {R11}
193C04:  MOV             R5, R0
193C06:  MOV             R4, R1
193C08:  LDRD.W          R0, R6, [R5,#0x1C]
193C0C:  BLX             sub_220A6C
193C10:  MOV             R1, R0
193C12:  MOV             R0, R6
193C14:  STR             R1, [R5,#0x24]
193C16:  BLX             sub_220A6C
193C1A:  ADDS            R0, #1
193C1C:  CMP             R0, R4
193C1E:  IT HI
193C20:  MOVHI           R0, R4
193C22:  SUBS            R0, R4, R0
193C24:  POP.W           {R11}
193C28:  POP             {R4-R7,PC}
