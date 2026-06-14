; =========================================================
; Game Engine Function: sub_FA088
; Address            : 0xFA088 - 0xFA0E4
; =========================================================

FA088:  PUSH            {R4,R6,R7,LR}
FA08A:  ADD             R7, SP, #8
FA08C:  SUB             SP, SP, #0x10; float
FA08E:  MOV             R4, R0
FA090:  LDR             R0, [R2]
FA092:  STR             R0, [R4,#0x2C]
FA094:  MOV             R12, R1
FA096:  LDR             R0, [R2,#4]
FA098:  STR             R0, [R4,#0x30]
FA09A:  LDR             R0, [R2,#8]
FA09C:  STR             R0, [R4,#0x34]
FA09E:  LDR             R0, [R3]
FA0A0:  STR             R0, [R4,#0x38]
FA0A2:  LDR             R1, [R4,#0x4C]
FA0A4:  LDR             R0, [R3,#4]
FA0A6:  LDR             R2, [R7,#arg_0]
FA0A8:  STR             R0, [R4,#0x3C]
FA0AA:  LDR             R0, [R3,#8]
FA0AC:  STRB.W          R12, [R4,#0x44]
FA0B0:  STR             R2, [R4,#0x48]
FA0B2:  STR             R0, [R4,#0x40]
FA0B4:  CBZ             R1, loc_FA0D8
FA0B6:  LDR             R0, =(unk_B2D90 - 0xFA0BC)
FA0B8:  ADD             R0, PC; unk_B2D90
FA0BA:  BL              sub_107188
FA0BE:  LDRD.W          R2, R3, [R4,#0x2C]; int
FA0C2:  MOVW            R1, #0x3ED
FA0C6:  LDR             R0, [R4,#0x34]; int
FA0C8:  MOV.W           R12, #0
FA0CC:  STMEA.W         SP, {R0,R1,R12}
FA0D0:  MOVS            R1, #0; int
FA0D2:  BL              sub_F9904
FA0D6:  STR             R0, [R4,#0x4C]
FA0D8:  MOV             R0, R4
FA0DA:  ADD             SP, SP, #0x10
FA0DC:  POP.W           {R4,R6,R7,LR}
FA0E0:  B.W             sub_FA0E8
