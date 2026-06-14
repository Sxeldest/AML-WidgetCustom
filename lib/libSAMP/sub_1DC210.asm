; =========================================================
; Game Engine Function: sub_1DC210
; Address            : 0x1DC210 - 0x1DC23C
; =========================================================

1DC210:  CMP             R2, #0xD
1DC214:  BNE             loc_1DC230
1DC218:  CMP             R3, #2
1DC21C:  STRBCC          R3, [R0,#0x34]
1DC220:  BXCC            LR
1DC224:  MOV             R0, R1
1DC228:  MOVW            R1, #0xA003
1DC22C:  B               j_alSetError
1DC230:  MOV             R0, R1
1DC234:  MOVW            R1, #0xA002
1DC238:  B               j_alSetError
