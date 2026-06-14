; =========================================================
; Game Engine Function: sub_144BF2
; Address            : 0x144BF2 - 0x144C20
; =========================================================

144BF2:  SUB             SP, SP, #4
144BF4:  MOVW            R1, #0xED0A
144BF8:  MOVS            R2, #0
144BFA:  MOVT            R1, #0x548D
144BFE:  LDR.W           R3, [R0,R2,LSL#2]
144C02:  EORS            R3, R1
144C04:  STR.W           R3, [R0,R2,LSL#2]
144C08:  ADDS            R2, #1
144C0A:  CMP             R2, #5
144C0C:  BNE             loc_144BFE
144C0E:  LDR             R2, [R0,#0x14]
144C10:  EORS            R1, R2
144C12:  STR             R1, [SP,#4+var_4]
144C14:  LDRB.W          R2, [SP,#4+var_4+2]
144C18:  STRH            R1, [R0,#0x14]
144C1A:  STRB            R2, [R0,#0x16]
144C1C:  ADD             SP, SP, #4
144C1E:  BX              LR
