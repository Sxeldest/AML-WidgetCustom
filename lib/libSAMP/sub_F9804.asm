; =========================================================
; Game Engine Function: sub_F9804
; Address            : 0xF9804 - 0xF98F2
; =========================================================

F9804:  PUSH            {R4,R5,R7,LR}
F9806:  ADD             R7, SP, #8
F9808:  SUB             SP, SP, #0x30
F980A:  MOV             R5, R0
F980C:  LDRB            R0, [R0]
F980E:  CMP             R0, #0
F9810:  BEQ             loc_F9890
F9812:  MOV             R0, R5
F9814:  BL              sub_E35A0
F9818:  CMP             R0, #0
F981A:  BEQ             loc_F98A0
F981C:  VLDR            S0, [R5,#0x10]
F9820:  MOVS            R4, #1
F9822:  VLDR            S2, [R5,#0x14]
F9826:  VCVT.F64.F32    D16, S0
F982A:  LDR             R1, [R0,#8]
F982C:  VMOV            R2, R3, D16
F9830:  VLDR            S4, [R5,#0x18]
F9834:  VLDR            S6, [R5,#0x1C]
F9838:  VLDR            S8, [R5,#0x20]
F983C:  VLDR            S10, [R5,#0x24]
F9840:  VCVT.F64.F32    D16, S8
F9844:  LDR             R0, =(unk_B2D18 - 0xF984C)
F9846:  STR             R4, [SP,#0x38+var_10]
F9848:  ADD             R0, PC; unk_B2D18
F984A:  VCVT.F64.F32    D17, S6
F984E:  VCVT.F64.F32    D18, S4
F9852:  VCVT.F64.F32    D19, S2
F9856:  VCVT.F64.F32    D20, S10
F985A:  VSTR            D19, [SP,#0x38+var_38]
F985E:  VSTR            D18, [SP,#0x38+var_30]
F9862:  VSTR            D17, [SP,#0x38+var_28]
F9866:  VSTR            D16, [SP,#0x38+var_20]
F986A:  VSTR            D20, [SP,#0x38+var_18]
F986E:  BL              sub_107188
F9872:  LDR             R0, [R5,#0x28]
F9874:  CBNZ            R0, loc_F98A0
F9876:  LDRD.W          R2, R3, [R5,#0x10]; int
F987A:  MOVS            R1, #0
F987C:  LDR             R0, [R5,#0x18]; int
F987E:  MOVW            R4, #0x3ED
F9882:  STR             R1, [SP,#0x38+var_30]; int
F9884:  MOVS            R1, #0; int
F9886:  STRD.W          R0, R4, [SP,#0x38+var_38]; float
F988A:  BL              sub_F9904
F988E:  B               loc_F989E
F9890:  LDR             R1, [R5,#0x28]
F9892:  CBZ             R1, loc_F98A0
F9894:  LDR             R0, =(unk_B2D90 - 0xF989A)
F9896:  ADD             R0, PC; unk_B2D90
F9898:  BL              sub_107188
F989C:  MOVS            R0, #0
F989E:  STR             R0, [R5,#0x28]
F98A0:  LDRB            R0, [R5,#1]
F98A2:  CBZ             R0, loc_F98CC
F98A4:  MOV             R0, R5
F98A6:  BL              sub_E35A0
F98AA:  CBZ             R0, loc_F98EE
F98AC:  LDR             R0, [R5,#0x4C]
F98AE:  CBNZ            R0, loc_F98EE
F98B0:  LDRD.W          R2, R3, [R5,#0x2C]; int
F98B4:  MOVS            R1, #0
F98B6:  LDR             R0, [R5,#0x34]; int
F98B8:  MOVW            R4, #0x3ED
F98BC:  STR             R1, [SP,#0x38+var_30]; int
F98BE:  MOVS            R1, #0; int
F98C0:  STRD.W          R0, R4, [SP,#0x38+var_38]; float
F98C4:  BL              sub_F9904
F98C8:  STR             R0, [R5,#0x4C]
F98CA:  B               loc_F98EE
F98CC:  LDR             R1, [R5,#0x4C]
F98CE:  CBZ             R1, loc_F98EE
F98D0:  LDR             R0, =(unk_B2D90 - 0xF98D6)
F98D2:  ADD             R0, PC; unk_B2D90
F98D4:  BL              sub_107188
F98D8:  LDR             R1, [R5,#0x50]
F98DA:  CBZ             R1, loc_F98E8
F98DC:  LDR             R0, =(unk_B2E44 - 0xF98E2)
F98DE:  ADD             R0, PC; unk_B2E44
F98E0:  BL              sub_107188
F98E4:  MOVS            R0, #0
F98E6:  STR             R0, [R5,#0x50]
F98E8:  MOVS            R0, #0
F98EA:  STR             R0, [R5,#0x4C]
F98EC:  STRB            R0, [R5,#1]
F98EE:  ADD             SP, SP, #0x30 ; '0'
F98F0:  POP             {R4,R5,R7,PC}
