; =========================================================
; Game Engine Function: sub_E284C
; Address            : 0xE284C - 0xE28C0
; =========================================================

E284C:  PUSH            {R4-R7,LR}
E284E:  ADD             R7, SP, #0xC
E2850:  PUSH.W          {R8,R9,R11}
E2854:  MOV             R4, R0
E2856:  LDR             R0, =(unk_91D40 - 0xE2864)
E2858:  LDRH.W          R2, [R1,#9]
E285C:  ADD.W           R8, R1, #0xB
E2860:  ADD             R0, PC; unk_91D40
E2862:  LDR             R6, [R1]
E2864:  AND.W           R2, R2, #0xF
E2868:  LDR             R5, [R7,#arg_0]
E286A:  SUBS            R6, R6, R3
E286C:  LDRB            R0, [R0,R2]
E286E:  IT CC
E2870:  MOVCC           R6, #0
E2872:  LSRS.W          R9, R6, R0
E2876:  BEQ             loc_E2884
E2878:  MOV             R0, R4
E287A:  MOV             R1, R9
E287C:  MOV             R2, R8
E287E:  BL              sub_DD992
E2882:  MOV             R4, R0
E2884:  LDRB            R0, [R5]
E2886:  SUB.W           R6, R6, R9
E288A:  CBZ             R0, loc_E289A
E288C:  LDRD.W          R1, R2, [R5,#4]
E2890:  MOV             R0, R4
E2892:  BL              sub_E2F08
E2896:  MOV             R4, R0
E2898:  B               loc_E28A6
E289A:  LDRD.W          R1, R0, [R5,#0xC]
E289E:  ADDS            R2, R1, R0
E28A0:  MOV             R0, R4
E28A2:  BL              sub_DCF30
E28A6:  MOV             R0, R4
E28A8:  CBZ             R6, loc_E28BA
E28AA:  MOV             R1, R6
E28AC:  MOV             R2, R8
E28AE:  POP.W           {R8,R9,R11}
E28B2:  POP.W           {R4-R7,LR}
E28B6:  B.W             sub_DD992
E28BA:  POP.W           {R8,R9,R11}
E28BE:  POP             {R4-R7,PC}
