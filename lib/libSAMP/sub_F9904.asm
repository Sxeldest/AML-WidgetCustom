; =========================================================
; Game Engine Function: sub_F9904
; Address            : 0xF9904 - 0xF9A20
; =========================================================

F9904:  PUSH            {R4,R6,R7,LR}
F9906:  ADD             R7, SP, #8
F9908:  SUB             SP, SP, #0x30
F990A:  MOV             R0, R1
F990C:  LDR             R1, =(aCreateradarmar - 0xF992A); "CreateRadarMarkerIcon: {}, {}, {}, {}, "... ...
F990E:  STRD.W          R3, R2, [SP,#0x38+var_14]
F9912:  ADD.W           R2, R7, #0xC
F9916:  LDR             R4, [R7,#arg_8]
F9918:  ADD.W           R3, R7, #8
F991C:  STRB.W          R4, [R7,#var_15]
F9920:  ADD             R4, SP, #0x38+var_14
F9922:  STRD.W          R3, R2, [SP,#0x38+var_30]
F9926:  ADD             R1, PC; "CreateRadarMarkerIcon: {}, {}, {}, {}, "...
F9928:  STRB.W          R0, [R7,#var_9]
F992C:  ADD             R0, SP, #0x38+var_10
F992E:  SUB.W           R3, R7, #-var_9
F9932:  STRD.W          R0, R4, [SP,#0x38+var_38]
F9936:  MOVS            R0, #1
F9938:  MOVS            R2, #0x2D ; '-'
F993A:  SUB.W           R12, R7, #-var_15
F993E:  STR.W           R12, [SP,#0x38+var_28]
F9942:  BL              sub_FA3AC
F9946:  LDRB.W          R0, [R7,#var_15]
F994A:  MOVS            R1, #0
F994C:  STR             R1, [SP,#0x38+var_1C]
F994E:  CMP             R0, #3; switch 4 cases
F9950:  BHI             def_F9952; jumptable 000F9952 default case
F9952:  TBB.W           [PC,R0]; switch jump
F9956:  DCB 2; jump table for switch statement
F9957:  DCB 0x13
F9958:  DCB 0x24
F9959:  DCB 0x35
F995A:  VLDR            S0, [SP,#0x38+var_10]; jumptable 000F9952 case 0
F995E:  VLDR            S2, [R7,#arg_0]
F9962:  VCVT.F64.F32    D16, S0
F9966:  LDRB.W          R1, [R7,#var_9]
F996A:  VLDR            S0, [SP,#0x38+var_14]
F996E:  VMOV            R2, R3, D16
F9972:  LDR             R0, =(unk_B2DA4 - 0xF997C)
F9974:  VCVT.F64.F32    D17, S2
F9978:  ADD             R0, PC; unk_B2DA4
F997A:  B               loc_F99E0
F997C:  VLDR            S0, [SP,#0x38+var_10]; jumptable 000F9952 case 1
F9980:  VLDR            S2, [R7,#arg_0]
F9984:  VCVT.F64.F32    D16, S0
F9988:  LDRB.W          R1, [R7,#var_9]
F998C:  VLDR            S0, [SP,#0x38+var_14]
F9990:  VMOV            R2, R3, D16
F9994:  LDR             R0, =(unk_B2DB8 - 0xF999E)
F9996:  VCVT.F64.F32    D17, S2
F999A:  ADD             R0, PC; unk_B2DB8
F999C:  B               loc_F99E0
F999E:  VLDR            S0, [SP,#0x38+var_10]; jumptable 000F9952 case 2
F99A2:  VLDR            S2, [R7,#arg_0]
F99A6:  VCVT.F64.F32    D16, S0
F99AA:  LDRB.W          R1, [R7,#var_9]
F99AE:  VLDR            S0, [SP,#0x38+var_14]
F99B2:  VMOV            R2, R3, D16
F99B6:  LDR             R0, =(unk_B2DCC - 0xF99C0)
F99B8:  VCVT.F64.F32    D17, S2
F99BC:  ADD             R0, PC; unk_B2DCC
F99BE:  B               loc_F99E0
F99C0:  VLDR            S0, [SP,#0x38+var_10]; jumptable 000F9952 case 3
F99C4:  VLDR            S2, [R7,#arg_0]
F99C8:  VCVT.F64.F32    D16, S0
F99CC:  LDRB.W          R1, [R7,#var_9]
F99D0:  VMOV            R2, R3, D16
F99D4:  VLDR            S0, [SP,#0x38+var_14]
F99D8:  VCVT.F64.F32    D17, S2
F99DC:  LDR             R0, =(unk_B2DE0 - 0xF99E2)
F99DE:  ADD             R0, PC; unk_B2DE0
F99E0:  VCVT.F64.F32    D16, S0
F99E4:  ADD             R4, SP, #0x38+var_1C
F99E6:  VSTMEA          SP, {D16-D17}
F99EA:  STRD.W          R1, R4, [SP,#0x38+var_28]
F99EE:  BL              sub_107188
F99F2:  LDRB.W          R0, [R7,#var_9]; jumptable 000F9952 default case
F99F6:  CBNZ            R0, loc_F9A1A
F99F8:  LDR             R0, =(unk_B2DF4 - 0xF9A02)
F99FA:  LDR             R4, [R7,#arg_4]
F99FC:  LDR             R1, [SP,#0x38+var_1C]
F99FE:  ADD             R0, PC; unk_B2DF4
F9A00:  MOV             R2, R4
F9A02:  BL              sub_107188
F9A06:  LDR             R0, =(unk_B2E08 - 0xF9A14)
F9A08:  MOVS            R2, #3
F9A0A:  LDR             R1, [SP,#0x38+var_1C]
F9A0C:  CMP.W           R4, #0x3EC
F9A10:  ADD             R0, PC; unk_B2E08
F9A12:  IT CC
F9A14:  MOVCC           R2, #2
F9A16:  BL              sub_107188
F9A1A:  LDR             R0, [SP,#0x38+var_1C]
F9A1C:  ADD             SP, SP, #0x30 ; '0'
F9A1E:  POP             {R4,R6,R7,PC}
