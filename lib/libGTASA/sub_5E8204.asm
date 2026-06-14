; =========================================================
; Game Engine Function: sub_5E8204
; Address            : 0x5E8204 - 0x5E8226
; =========================================================

5E8204:  LDR             R2, [R1]
5E8206:  CBZ             R2, loc_5E820E
5E8208:  MOV             R1, R2
5E820A:  B.W             j_fputc
5E820E:  LDRD.W          R3, R2, [R1,#8]
5E8212:  CMP             R2, R3
5E8214:  IT CS
5E8216:  BXCS            LR
5E8218:  LDR.W           R12, [R1,#4]
5E821C:  ADDS            R3, R2, #1
5E821E:  STR             R3, [R1,#0xC]
5E8220:  STRB.W          R0, [R12,R2]
5E8224:  BX              LR
