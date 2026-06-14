; =========================================================
; Game Engine Function: sub_FBCF4
; Address            : 0xFBCF4 - 0xFBD62
; =========================================================

FBCF4:  PUSH            {R4-R7,LR}
FBCF6:  ADD             R7, SP, #0xC
FBCF8:  PUSH.W          {R11}
FBCFC:  SUB             SP, SP, #8
FBCFE:  MOV             R4, R0
FBD00:  MOVS            R0, #0x5C ; '\'; unsigned int
FBD02:  BLX             j__Znwj; operator new(uint)
FBD06:  BL              sub_163888
FBD0A:  MOV             R5, R0
FBD0C:  BL              sub_1638B0
FBD10:  LDR             R2, [R0]
FBD12:  LDR             R1, [R5]
FBD14:  ADDS            R2, #1
FBD16:  STR             R2, [R0]
FBD18:  MOV             R0, R5
FBD1A:  LDR             R1, [R1,#0x1C]
FBD1C:  BLX             R1
FBD1E:  BL              sub_163768
FBD22:  LDR.W           R0, [R0,R4,LSL#2]
FBD26:  CBZ             R0, loc_FBD50
FBD28:  BL              sub_163768
FBD2C:  LDR.W           R0, [R0,R4,LSL#2]
FBD30:  BL              sub_1637A4
FBD34:  MOV             R6, R0
FBD36:  BL              sub_1638B0
FBD3A:  LDR             R1, =(aAxl - 0xFBD46); "AXL" ...
FBD3C:  MOV             R3, R4
FBD3E:  LDR             R0, [R0]
FBD40:  LDR             R2, =(aModelDIsAlread - 0xFBD48); "Model %d is already used for %s. Overri"... ...
FBD42:  ADD             R1, PC; "AXL"
FBD44:  ADD             R2, PC; "Model %d is already used for %s. Overri"...
FBD46:  STRD.W          R6, R0, [SP,#0x18+var_18]
FBD4A:  MOVS            R0, #5; prio
FBD4C:  BLX             __android_log_print
FBD50:  BL              sub_163768
FBD54:  STR.W           R5, [R0,R4,LSL#2]
FBD58:  MOV             R0, R5
FBD5A:  ADD             SP, SP, #8
FBD5C:  POP.W           {R11}
FBD60:  POP             {R4-R7,PC}
