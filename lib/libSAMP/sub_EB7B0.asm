; =========================================================
; Game Engine Function: sub_EB7B0
; Address            : 0xEB7B0 - 0xEB862
; =========================================================

EB7B0:  PUSH            {R4-R7,LR}
EB7B2:  ADD             R7, SP, #0xC
EB7B4:  PUSH.W          {R8}
EB7B8:  SUB             SP, SP, #0x20
EB7BA:  MOV             R4, R0
EB7BC:  LDRD.W          R2, R0, [R0,#4]
EB7C0:  CMP             R2, R0
EB7C2:  BEQ             loc_EB7E2
EB7C4:  LDR.W           R0, [R0,#-4]
EB7C8:  LDRB            R2, [R0]
EB7CA:  CMP             R2, #2
EB7CC:  BNE             loc_EB820
EB7CE:  LDR             R0, [R0,#8]
EB7D0:  BL              sub_EB862
EB7D4:  LDR             R0, [R4,#8]
EB7D6:  LDR.W           R0, [R0,#-4]
EB7DA:  LDR             R0, [R0,#8]
EB7DC:  LDR             R0, [R0,#4]
EB7DE:  SUBS            R0, #0x10
EB7E0:  B               loc_EB85A
EB7E2:  LDRB            R1, [R1]
EB7E4:  ADD.W           R8, SP, #0x30+var_20
EB7E8:  MOVS            R0, #0
EB7EA:  STRD.W          R0, R0, [SP,#0x30+var_18]
EB7EE:  STRB.W          R0, [SP,#0x30+var_20]
EB7F2:  MOV             R0, R8
EB7F4:  BL              sub_EA862
EB7F8:  LDR             R0, [R4]
EB7FA:  LDRB.W          R1, [SP,#0x30+var_20]
EB7FE:  LDRD.W          R3, R5, [R0,#8]
EB802:  LDRB            R2, [R0]
EB804:  STRB            R1, [R0]
EB806:  LDRD.W          R1, R6, [SP,#0x30+var_18]
EB80A:  STRD.W          R1, R6, [R0,#8]
EB80E:  MOV             R0, R8
EB810:  STRB.W          R2, [SP,#0x30+var_20]
EB814:  STRD.W          R3, R5, [SP,#0x30+var_18]
EB818:  BL              sub_E3F7A
EB81C:  LDR             R0, [R4]
EB81E:  B               loc_EB85A
EB820:  LDRB            R1, [R1]
EB822:  MOVS            R0, #0
EB824:  MOV             R8, SP
EB826:  STRD.W          R0, R0, [SP,#0x30+var_28]
EB82A:  STRB.W          R0, [SP,#0x30+var_30]
EB82E:  MOV             R0, R8
EB830:  BL              sub_EA862
EB834:  LDR             R0, [R4,#0x10]
EB836:  LDRB.W          R1, [SP,#0x30+var_30]
EB83A:  LDRD.W          R3, R6, [R0,#8]
EB83E:  LDRB            R2, [R0]
EB840:  STRB            R1, [R0]
EB842:  LDRD.W          R1, R5, [SP,#0x30+var_28]
EB846:  STRD.W          R1, R5, [R0,#8]
EB84A:  MOV             R0, R8
EB84C:  STRB.W          R2, [SP,#0x30+var_30]
EB850:  STRD.W          R3, R6, [SP,#0x30+var_28]
EB854:  BL              sub_E3F7A
EB858:  LDR             R0, [R4,#0x10]
EB85A:  ADD             SP, SP, #0x20 ; ' '
EB85C:  POP.W           {R8}
EB860:  POP             {R4-R7,PC}
