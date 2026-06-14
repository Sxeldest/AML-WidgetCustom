; =========================================================
; Game Engine Function: _Z19RpLightGetConeAnglePK7RpLight
; Address            : 0x216800 - 0x216A60
; =========================================================

216800:  PUSH            {R7,LR}
216802:  MOV             R7, SP
216804:  VPUSH           {D8-D11}
216808:  VLDR            S2, [R0,#0x28]
21680C:  VNEG.F32        S0, S2
216810:  VMOV            R0, S0
216814:  BIC.W           R1, R0, #0x80000000
216818:  CMP.W           R1, #0x3F800000
21681C:  BCC             loc_21682C
21681E:  ADR             R1, dword_216A9C
216820:  CMP             R0, #0
216822:  IT GT
216824:  ADDGT           R1, #4
216826:  VLDR            S0, [R1]
21682A:  B               loc_216A56
21682C:  LSRS            R2, R1, #0x18
21682E:  CMP             R2, #0x3E ; '>'
216830:  BHI             loc_21683E
216832:  CMP.W           R1, #0x23000000
216836:  BHI             loc_216908
216838:  VLDR            S0, =1.5708
21683C:  B               loc_216A56
21683E:  CMP.W           R0, #0xFFFFFFFF
216842:  BLE.W           loc_2169A2
216846:  VMOV.F32        S16, #1.0
21684A:  VLDR            S4, =-0.040056
21684E:  VMOV.F32        S0, #0.5
216852:  VADD.F32        S2, S2, S16
216856:  VMUL.F32        S18, S2, S0
21685A:  VLDR            S0, =0.000034793
21685E:  VLDR            S2, =0.00079154
216862:  VMUL.F32        S0, S18, S0
216866:  VMOV            R0, S18; float
21686A:  VADD.F32        S0, S0, S2
21686E:  VLDR            S2, =0.077038
216872:  VMUL.F32        S2, S18, S2
216876:  VMUL.F32        S0, S18, S0
21687A:  VADD.F32        S0, S0, S4
21687E:  VLDR            S4, =-0.68828
216882:  VADD.F32        S2, S2, S4
216886:  VLDR            S4, =0.20121
21688A:  VMUL.F32        S0, S18, S0
21688E:  VMUL.F32        S2, S18, S2
216892:  VADD.F32        S0, S0, S4
216896:  VLDR            S4, =2.0209
21689A:  VADD.F32        S2, S2, S4
21689E:  VLDR            S4, =-0.32557
2168A2:  VMUL.F32        S0, S18, S0
2168A6:  VMUL.F32        S2, S18, S2
2168AA:  VADD.F32        S0, S0, S4
2168AE:  VLDR            S4, =-2.4034
2168B2:  VADD.F32        S2, S2, S4
2168B6:  VLDR            S4, =0.16667
2168BA:  VMUL.F32        S0, S18, S0
2168BE:  VMUL.F32        S20, S18, S2
2168C2:  VADD.F32        S22, S0, S4
2168C6:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
2168CA:  MOVW            R1, #0xFFF
2168CE:  VADD.F32        S4, S20, S16
2168D2:  BIC.W           R1, R0, R1
2168D6:  VMUL.F32        S6, S18, S22
2168DA:  VMOV            S8, R0
2168DE:  VMOV            S0, R1
2168E2:  VMUL.F32        S2, S0, S0
2168E6:  VADD.F32        S10, S8, S0
2168EA:  VDIV.F32        S4, S6, S4
2168EE:  VSUB.F32        S2, S18, S2
2168F2:  VMUL.F32        S4, S4, S8
2168F6:  VDIV.F32        S2, S2, S10
2168FA:  VADD.F32        S2, S4, S2
2168FE:  VADD.F32        S0, S2, S0
216902:  VADD.F32        S0, S0, S0
216906:  B               loc_216A56
216908:  VMUL.F32        S2, S2, S2
21690C:  VLDR            S4, =0.000034793
216910:  VLDR            S6, =0.00079154
216914:  VMOV.F32        S10, #1.0
216918:  VLDR            S8, =-0.040056
21691C:  VMUL.F32        S4, S2, S4
216920:  VADD.F32        S4, S4, S6
216924:  VLDR            S6, =0.077038
216928:  VMUL.F32        S6, S2, S6
21692C:  VMUL.F32        S4, S2, S4
216930:  VADD.F32        S4, S4, S8
216934:  VLDR            S8, =-0.68828
216938:  VADD.F32        S6, S6, S8
21693C:  VLDR            S8, =0.20121
216940:  VMUL.F32        S4, S2, S4
216944:  VMUL.F32        S6, S2, S6
216948:  VADD.F32        S4, S4, S8
21694C:  VLDR            S8, =2.0209
216950:  VADD.F32        S6, S6, S8
216954:  VLDR            S8, =-0.32557
216958:  VMUL.F32        S4, S2, S4
21695C:  VMUL.F32        S6, S2, S6
216960:  VADD.F32        S4, S4, S8
216964:  VLDR            S8, =-2.4034
216968:  VADD.F32        S6, S6, S8
21696C:  VLDR            S8, =0.16667
216970:  VMUL.F32        S4, S2, S4
216974:  VMUL.F32        S6, S2, S6
216978:  VADD.F32        S4, S4, S8
21697C:  VADD.F32        S6, S6, S10
216980:  VMUL.F32        S2, S2, S4
216984:  VLDR            S4, =7.5498e-8
216988:  VDIV.F32        S2, S2, S6
21698C:  VMUL.F32        S2, S2, S0
216990:  VSUB.F32        S2, S4, S2
216994:  VSUB.F32        S0, S0, S2
216998:  VLDR            S2, =1.5708
21699C:  VSUB.F32        S0, S2, S0
2169A0:  B               loc_216A56
2169A2:  VMOV.F32        S0, #1.0
2169A6:  VLDR            S6, =0.00079154
2169AA:  VMOV.F32        S4, #0.5
2169AE:  VLDR            S8, =-0.040056
2169B2:  VSUB.F32        S2, S0, S2
2169B6:  VMUL.F32        S2, S2, S4
2169BA:  VLDR            S4, =0.000034793
2169BE:  VMUL.F32        S4, S2, S4
2169C2:  VMOV            R0, S2; float
2169C6:  VADD.F32        S4, S4, S6
2169CA:  VLDR            S6, =0.077038
2169CE:  VMUL.F32        S6, S2, S6
2169D2:  VMUL.F32        S4, S2, S4
2169D6:  VADD.F32        S4, S4, S8
2169DA:  VLDR            S8, =-0.68828
2169DE:  VADD.F32        S6, S6, S8
2169E2:  VLDR            S8, =0.20121
2169E6:  VMUL.F32        S4, S2, S4
2169EA:  VMUL.F32        S6, S2, S6
2169EE:  VADD.F32        S4, S4, S8
2169F2:  VLDR            S8, =2.0209
2169F6:  VADD.F32        S6, S6, S8
2169FA:  VLDR            S8, =-0.32557
2169FE:  VMUL.F32        S4, S2, S4
216A02:  VMUL.F32        S6, S2, S6
216A06:  VADD.F32        S4, S4, S8
216A0A:  VLDR            S8, =-2.4034
216A0E:  VADD.F32        S6, S6, S8
216A12:  VLDR            S8, =0.16667
216A16:  VMUL.F32        S4, S2, S4
216A1A:  VMUL.F32        S6, S2, S6
216A1E:  VADD.F32        S4, S4, S8
216A22:  VADD.F32        S0, S6, S0
216A26:  VMUL.F32        S4, S2, S4
216A2A:  VDIV.F32        S16, S4, S0
216A2E:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
216A32:  VMOV            S0, R0
216A36:  VLDR            S4, =-7.5498e-8
216A3A:  VMUL.F32        S2, S16, S0
216A3E:  VADD.F32        S2, S2, S4
216A42:  VMOV.F32        S4, #-2.0
216A46:  VADD.F32        S0, S0, S2
216A4A:  VLDR            S2, =3.1416
216A4E:  VMUL.F32        S0, S0, S4
216A52:  VADD.F32        S0, S0, S2
216A56:  VMOV            R0, S0
216A5A:  VPOP            {D8-D11}
216A5E:  POP             {R7,PC}
