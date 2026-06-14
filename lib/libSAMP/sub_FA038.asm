; =========================================================
; Game Engine Function: sub_FA038
; Address            : 0xFA038 - 0xFA084
; =========================================================

FA038:  PUSH            {R4,R6,R7,LR}
FA03A:  ADD             R7, SP, #8
FA03C:  SUB             SP, SP, #0x10
FA03E:  MOV             R4, R0
FA040:  LDR             R0, [R1]
FA042:  STR             R0, [R4,#0x10]
FA044:  LDR             R0, [R1,#4]
FA046:  STR             R0, [R4,#0x14]
FA048:  LDR             R0, [R1,#8]
FA04A:  STR             R0, [R4,#0x18]
FA04C:  LDR             R0, [R2]
FA04E:  STR             R0, [R4,#0x1C]
FA050:  LDR             R0, [R2,#4]
FA052:  LDR             R1, [R4,#0x28]
FA054:  STR             R0, [R4,#0x20]
FA056:  LDR             R0, [R2,#8]
FA058:  STR             R0, [R4,#0x24]
FA05A:  CBZ             R1, loc_FA080
FA05C:  LDR             R0, =(unk_B2D90 - 0xFA062)
FA05E:  ADD             R0, PC; unk_B2D90
FA060:  BL              sub_107188
FA064:  LDRD.W          R2, R3, [R4,#0x10]; int
FA068:  MOVS            R1, #0
FA06A:  LDR             R0, [R4,#0x18]; int
FA06C:  MOVW            R12, #0x3ED
FA070:  STR             R1, [R4,#0x28]
FA072:  STR             R1, [SP,#0x18+var_10]; int
FA074:  MOVS            R1, #0; int
FA076:  STRD.W          R0, R12, [SP,#0x18+var_18]; float
FA07A:  BL              sub_F9904
FA07E:  STR             R0, [R4,#0x28]
FA080:  ADD             SP, SP, #0x10
FA082:  POP             {R4,R6,R7,PC}
