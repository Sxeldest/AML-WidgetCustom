; =========================================================
; Game Engine Function: png_get_gAMA
; Address            : 0x1F3968 - 0x1F39A0
; =========================================================

1F3968:  MOV             R3, R0
1F396A:  CMP             R3, #0
1F396C:  MOV.W           R0, #0
1F3970:  IT NE
1F3972:  CMPNE           R1, #0
1F3974:  BEQ             locret_1F399E
1F3976:  CMP             R2, #0
1F3978:  MOV.W           R0, #0
1F397C:  ITT NE
1F397E:  LDRHNE.W        R3, [R1,#0x72]
1F3982:  ANDSNE.W        R3, R3, #1
1F3986:  BEQ             locret_1F399E
1F3988:  VLDR            S0, [R1,#0x28]
1F398C:  MOVS            R0, #1
1F398E:  VLDR            D17, =0.00001
1F3992:  VCVT.F64.S32    D16, S0
1F3996:  VMUL.F64        D16, D16, D17
1F399A:  VSTR            D16, [R2]
1F399E:  BX              LR
