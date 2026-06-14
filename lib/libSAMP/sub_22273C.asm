; =========================================================
; Game Engine Function: sub_22273C
; Address            : 0x22273C - 0x222828
; =========================================================

22273C:  PUSH            {R4-R6,R10,R11,LR}
222740:  ADD             R11, SP, #0x10
222744:  SUB             SP, SP, #0x300
222748:  ADD             R5, SP, #0x310+var_188
22274C:  MOV             R4, R0
222750:  MOV             R0, R5
222754:  BL              sub_224220
222758:  MOV             R0, #0
22275C:  MOV             R6, SP
222760:  STR             R0, [R4,#0xC]
222764:  MOV             R0, R6
222768:  MOV             R1, R5
22276C:  BL              sub_222BB0
222770:  SUB             R1, R11, #-var_38
222774:  MOV             R0, R6
222778:  BL              sub_222E9C
22277C:  CMP             R0, #0
222780:  BEQ             loc_222790
222784:  MOV             R0, #3
222788:  SUB             SP, R11, #0x10
22278C:  POP             {R4-R6,R10,R11,PC}
222790:  SUB             R6, R11, #-var_38
222794:  MOV             R5, SP
222798:  B               loc_2227B0
22279C:  MOV             R0, R5
2227A0:  MOV             R1, R6
2227A4:  BL              sub_222E9C
2227A8:  CMP             R0, #0
2227AC:  BNE             loc_222784
2227B0:  LDR             R3, [R11,#var_2C]
2227B4:  CMP             R3, #0
2227B8:  BEQ             loc_22279C
2227BC:  LDR             R0, [R11,#var_38]
2227C0:  LDR             R1, [R11,#var_24]
2227C4:  LDR             R2, [R11,#var_18]
2227C8:  STR             R0, [R4,#0x48]
2227CC:  MOV             R0, #0
2227D0:  STR             R2, [R4,#0x4C]
2227D4:  MOV             R2, R5
2227D8:  STR             R1, [R4,#0x50]
2227DC:  MOV             R1, R4
2227E0:  BLX             R3
2227E4:  CMP             R0, #8
2227E8:  BEQ             loc_22279C
2227EC:  CMP             R0, #6
2227F0:  BEQ             loc_222808
2227F4:  CMP             R0, #9
2227F8:  BNE             loc_222784
2227FC:  MOV             R0, #9
222800:  SUB             SP, R11, #0x10
222804:  POP             {R4-R6,R10,R11,PC}
222808:  ADD             R0, SP, #0x310+var_188
22280C:  MOV             R1, SP
222810:  MOV             R2, R4
222814:  MOV             R3, #0
222818:  BL              sub_222828
22281C:  MOV             R0, #2
222820:  SUB             SP, R11, #0x10
222824:  POP             {R4-R6,R10,R11,PC}
