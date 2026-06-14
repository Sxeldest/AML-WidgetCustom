; =========================================================
; Game Engine Function: sub_DF460
; Address            : 0xDF460 - 0xDF4BA
; =========================================================

DF460:  PUSH            {R4-R7,LR}
DF462:  ADD             R7, SP, #0xC
DF464:  PUSH.W          {R11}
DF468:  MOV             R2, R0
DF46A:  LDR             R0, =(unk_91CE0 - 0xDF476)
DF46C:  MOV             R5, R1
DF46E:  LDRH.W          R1, [R1,#9]
DF472:  ADD             R0, PC; unk_91CE0
DF474:  LDR.W           R4, [R5],#0xB
DF478:  AND.W           R1, R1, #0xF
DF47C:  LDR             R6, [R7,#arg_0]
DF47E:  SUBS            R3, R4, R3
DF480:  LDRB            R0, [R0,R1]
DF482:  IT CC
DF484:  MOVCC           R3, #0
DF486:  LSRS.W          R1, R3, R0
DF48A:  SUB.W           R4, R3, R1
DF48E:  BEQ             loc_DF49A
DF490:  MOV             R0, R2
DF492:  MOV             R2, R5
DF494:  BL              sub_DD992
DF498:  MOV             R2, R0
DF49A:  MOV             R0, R6
DF49C:  MOV             R1, R2
DF49E:  BL              sub_DF4C0
DF4A2:  CBZ             R4, loc_DF4B4
DF4A4:  MOV             R1, R4
DF4A6:  MOV             R2, R5
DF4A8:  POP.W           {R11}
DF4AC:  POP.W           {R4-R7,LR}
DF4B0:  B.W             sub_DD992
DF4B4:  POP.W           {R11}
DF4B8:  POP             {R4-R7,PC}
