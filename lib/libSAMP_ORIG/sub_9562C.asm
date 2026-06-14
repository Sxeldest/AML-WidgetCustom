; =========================================================
; Game Engine Function: sub_9562C
; Address            : 0x9562C - 0x95656
; =========================================================

9562C:  LDR             R0, =(dword_1ACF68 - 0x95636)
9562E:  MOVW            R1, #0x19AC
95632:  ADD             R0, PC; dword_1ACF68
95634:  LDR             R0, [R0]
95636:  LDR             R2, [R0,R1]
95638:  ADD             R0, R1
9563A:  LDR             R3, [R0,#0x10]
9563C:  LDR.W           R1, [R2,#0x108]
95640:  CMP             R3, R1
95642:  ITT EQ
95644:  MOVEQ           R2, #1
95646:  STRBEQ          R2, [R0,#0x14]
95648:  LDR             R2, [R0,#0x24]
9564A:  CMP             R2, R1
9564C:  ITT EQ
9564E:  MOVEQ           R1, #1
95650:  STRBEQ.W        R1, [R0,#0x31]
95654:  BX              LR
