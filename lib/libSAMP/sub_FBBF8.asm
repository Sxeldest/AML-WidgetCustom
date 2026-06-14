; =========================================================
; Game Engine Function: sub_FBBF8
; Address            : 0xFBBF8 - 0xFBC68
; =========================================================

FBBF8:  PUSH            {R4-R7,LR}
FBBFA:  ADD             R7, SP, #0xC
FBBFC:  PUSH.W          {R11}
FBC00:  SUB             SP, SP, #8
FBC02:  MOV             R4, R0
FBC04:  MOV.W           R0, #0x3A8; unsigned int
FBC08:  BLX             j__Znwj; operator new(uint)
FBC0C:  BL              sub_163840
FBC10:  MOV             R5, R0
FBC12:  BL              sub_16386C
FBC16:  LDR             R2, [R0]
FBC18:  LDR             R1, [R5]
FBC1A:  ADDS            R2, #1
FBC1C:  STR             R2, [R0]
FBC1E:  MOV             R0, R5
FBC20:  LDR             R1, [R1,#0x1C]
FBC22:  BLX             R1
FBC24:  BL              sub_163768
FBC28:  LDR.W           R0, [R0,R4,LSL#2]
FBC2C:  CBZ             R0, loc_FBC56
FBC2E:  BL              sub_163768
FBC32:  LDR.W           R0, [R0,R4,LSL#2]
FBC36:  BL              sub_1637A4
FBC3A:  MOV             R6, R0
FBC3C:  BL              sub_16386C
FBC40:  LDR             R1, =(aAxl - 0xFBC4C); "AXL" ...
FBC42:  MOV             R3, R4
FBC44:  LDR             R0, [R0]
FBC46:  LDR             R2, =(aModelDIsAlread_0 - 0xFBC4E); "Model %d is already used for %s. Overri"... ...
FBC48:  ADD             R1, PC; "AXL"
FBC4A:  ADD             R2, PC; "Model %d is already used for %s. Overri"...
FBC4C:  STRD.W          R6, R0, [SP,#0x18+var_18]
FBC50:  MOVS            R0, #5; prio
FBC52:  BLX             __android_log_print
FBC56:  BL              sub_163768
FBC5A:  STR.W           R5, [R0,R4,LSL#2]
FBC5E:  MOV             R0, R5
FBC60:  ADD             SP, SP, #8
FBC62:  POP.W           {R11}
FBC66:  POP             {R4-R7,PC}
