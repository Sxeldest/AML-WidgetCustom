; =========================================================
; Game Engine Function: sub_AE804
; Address            : 0xAE804 - 0xAE832
; =========================================================

AE804:  PUSH            {R4,R6,R7,LR}
AE806:  ADD             R7, SP, #8
AE808:  LDRD.W          R2, R3, [R1,#4]
AE80C:  MOV             R4, R1
AE80E:  LDRB            R1, [R1,#0x10]
AE810:  CMP             R2, R3
AE812:  VLDR            S2, =0.0
AE816:  ITT EQ
AE818:  LDREQ           R2, [R4]
AE81A:  STREQ           R2, [R4,#4]
AE81C:  CMP             R1, #0
AE81E:  IT EQ
AE820:  VMOVEQ.F32      S2, S1
AE824:  VMOV.F32        S1, S2
AE828:  BL              sub_AF2B0
AE82C:  STR             R0, [R4,#8]
AE82E:  STR             R0, [R4]
AE830:  POP             {R4,R6,R7,PC}
