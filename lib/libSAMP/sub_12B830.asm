; =========================================================
; Game Engine Function: sub_12B830
; Address            : 0x12B830 - 0x12BBE2
; =========================================================

12B830:  PUSH            {R4,R5,R7,LR}
12B832:  ADD             R7, SP, #8
12B834:  LDR             R1, =(dword_238EB0 - 0x12B83E)
12B836:  VLDR            S0, [R0,#4]
12B83A:  ADD             R1, PC; dword_238EB0
12B83C:  VLDR            S2, [R0]
12B840:  VLDR            S6, [R1,#4]
12B844:  VLDR            S4, [R1]
12B848:  VDIV.F32        S0, S0, S6
12B84C:  LDR             R3, =(dword_238EC0 - 0x12B854)
12B84E:  LDR             R2, =(dword_238ED8 - 0x12B858)
12B850:  ADD             R3, PC; dword_238EC0
12B852:  LDR             R1, =(dword_238ED0 - 0x12B85A)
12B854:  ADD             R2, PC; dword_238ED8
12B856:  ADD             R1, PC; dword_238ED0
12B858:  VDIV.F32        S2, S2, S4
12B85C:  VLDR            S4, [R3]
12B860:  VLDR            S6, [R2]
12B864:  VMUL.F32        S4, S0, S4
12B868:  VLDR            S8, [R2,#4]
12B86C:  LDR             R4, =(unk_238EB8 - 0x12B882)
12B86E:  VMUL.F32        S6, S2, S6
12B872:  VLDR            S10, [R1]
12B876:  VMUL.F32        S8, S0, S8
12B87A:  VLDR            S12, [R1,#4]
12B87E:  ADD             R4, PC; unk_238EB8
12B880:  LDR             R5, =(dword_238EE0 - 0x12B892)
12B882:  VMUL.F32        S10, S2, S10
12B886:  VMUL.F32        S12, S0, S12
12B88A:  VSTR            S2, [R4]
12B88E:  ADD             R5, PC; dword_238EE0
12B890:  VSTR            S0, [R4,#4]
12B894:  VSTR            S4, [R3]
12B898:  VLDR            S4, [R5]
12B89C:  VSTR            S6, [R2]
12B8A0:  VMUL.F32        S4, S0, S4
12B8A4:  VSTR            S8, [R2,#4]
12B8A8:  VSTR            S10, [R1]
12B8AC:  VSTR            S12, [R1,#4]
12B8B0:  LDR             R1, =(dword_314190 - 0x12B8B8)
12B8B2:  LDR             R2, =(dword_238EF0 - 0x12B8BE)
12B8B4:  ADD             R1, PC; dword_314190
12B8B6:  LDRD.W          R3, R0, [R0]
12B8BA:  ADD             R2, PC; dword_238EF0
12B8BC:  VSTR            S4, [R5]
12B8C0:  VLDR            S4, [R2]
12B8C4:  VLDR            S6, [R2,#4]
12B8C8:  VMUL.F32        S4, S2, S4
12B8CC:  STRD.W          R3, R0, [R1]
12B8D0:  VMUL.F32        S6, S0, S6
12B8D4:  LDR             R0, =(dword_238EF8 - 0x12B8DA)
12B8D6:  ADD             R0, PC; dword_238EF8
12B8D8:  VSTR            S4, [R2]
12B8DC:  VLDR            S4, [R0]
12B8E0:  VSTR            S6, [R2,#4]
12B8E4:  VLDR            S6, [R0,#4]
12B8E8:  VMUL.F32        S4, S2, S4
12B8EC:  LDR             R1, =(dword_238F08 - 0x12B8F6)
12B8EE:  VMUL.F32        S6, S0, S6
12B8F2:  ADD             R1, PC; dword_238F08
12B8F4:  VSTR            S4, [R0]
12B8F8:  VLDR            S4, [R1]
12B8FC:  VSTR            S6, [R0,#4]
12B900:  VLDR            S6, [R1,#4]
12B904:  VMUL.F32        S4, S2, S4
12B908:  LDR             R0, =(unk_238F00 - 0x12B912)
12B90A:  VMUL.F32        S6, S0, S6
12B90E:  ADD             R0, PC; unk_238F00
12B910:  VSTR            S4, [R1]
12B914:  VLDR            S4, [R0]
12B918:  VSTR            S6, [R1,#4]
12B91C:  VCVT.F32.S32    S4, S4
12B920:  LDR             R0, =(dword_238F18 - 0x12B926)
12B922:  ADD             R0, PC; dword_238F18
12B924:  VLDR            S8, [R0,#4]
12B928:  VLDR            S6, [R0]
12B92C:  LDR             R1, =(dword_238F10 - 0x12B936)
12B92E:  VMUL.F32        S4, S8, S4
12B932:  ADD             R1, PC; dword_238F10
12B934:  VMUL.F32        S6, S2, S6
12B938:  VLDR            S10, [R1]
12B93C:  VMUL.F32        S10, S2, S10
12B940:  VMUL.F32        S4, S0, S4
12B944:  VSTR            S10, [R1]
12B948:  VSTR            S4, [R1,#4]
12B94C:  VMUL.F32        S4, S0, S8
12B950:  LDR             R1, =(dword_238F20 - 0x12B95A)
12B952:  VSTR            S6, [R0]
12B956:  ADD             R1, PC; dword_238F20
12B958:  VLDR            S6, [R1,#4]
12B95C:  VSTR            S4, [R0,#4]
12B960:  VMUL.F32        S6, S0, S6
12B964:  VLDR            S4, [R1]
12B968:  LDR             R0, =(dword_238F28 - 0x12B972)
12B96A:  VMUL.F32        S4, S2, S4
12B96E:  ADD             R0, PC; dword_238F28
12B970:  VSTR            S6, [R1,#4]
12B974:  VLDR            S6, [R0,#4]
12B978:  VSTR            S4, [R1]
12B97C:  VMUL.F32        S6, S0, S6
12B980:  VLDR            S4, [R0]
12B984:  LDR             R1, =(unk_238F30 - 0x12B98E)
12B986:  VMUL.F32        S4, S2, S4
12B98A:  ADD             R1, PC; unk_238F30
12B98C:  VSTR            S6, [R0,#4]
12B990:  VLDR            S6, [R1,#4]
12B994:  VSTR            S4, [R0]
12B998:  VMUL.F32        S6, S0, S6
12B99C:  VLDR            S4, [R1]
12B9A0:  LDR             R0, =(dword_238F38 - 0x12B9AA)
12B9A2:  VMUL.F32        S4, S2, S4
12B9A6:  ADD             R0, PC; dword_238F38
12B9A8:  VSTR            S6, [R1,#4]
12B9AC:  VLDR            S6, [R0,#4]
12B9B0:  VSTR            S4, [R1]
12B9B4:  VMUL.F32        S6, S0, S6
12B9B8:  VLDR            S4, [R0]
12B9BC:  LDR             R1, =(dword_238F40 - 0x12B9C6)
12B9BE:  VMUL.F32        S4, S2, S4
12B9C2:  ADD             R1, PC; dword_238F40
12B9C4:  VSTR            S6, [R0,#4]
12B9C8:  VLDR            S6, [R1,#4]
12B9CC:  VSTR            S4, [R0]
12B9D0:  VMUL.F32        S6, S0, S6
12B9D4:  VLDR            S4, [R1]
12B9D8:  LDR             R0, =(dword_238F48 - 0x12B9E2)
12B9DA:  VMUL.F32        S4, S2, S4
12B9DE:  ADD             R0, PC; dword_238F48
12B9E0:  VSTR            S6, [R1,#4]
12B9E4:  VLDR            S6, [R0,#4]
12B9E8:  VSTR            S4, [R1]
12B9EC:  VMUL.F32        S6, S0, S6
12B9F0:  VLDR            S4, [R0]
12B9F4:  LDR             R1, =(dword_238F50 - 0x12B9FE)
12B9F6:  VMUL.F32        S4, S2, S4
12B9FA:  ADD             R1, PC; dword_238F50
12B9FC:  VSTR            S6, [R0,#4]
12BA00:  VSTR            S4, [R0]
12BA04:  VLDR            S4, [R1]
12BA08:  LDR             R0, =(dword_238F54 - 0x12BA12)
12BA0A:  VMUL.F32        S4, S0, S4
12BA0E:  ADD             R0, PC; dword_238F54
12BA10:  VSTR            S4, [R1]
12BA14:  VLDR            S4, [R0]
12BA18:  LDR             R1, =(dword_238F58 - 0x12BA22)
12BA1A:  VMUL.F32        S4, S0, S4
12BA1E:  ADD             R1, PC; dword_238F58
12BA20:  VLDR            S6, [R1,#4]
12BA24:  VMUL.F32        S6, S0, S6
12BA28:  VSTR            S4, [R0]
12BA2C:  VLDR            S4, [R1]
12BA30:  LDR             R0, =(dword_238F60 - 0x12BA3A)
12BA32:  VMUL.F32        S4, S2, S4
12BA36:  ADD             R0, PC; dword_238F60
12BA38:  VSTR            S6, [R1,#4]
12BA3C:  VLDR            S6, [R0,#4]
12BA40:  VMUL.F32        S6, S0, S6
12BA44:  VSTR            S4, [R1]
12BA48:  VLDR            S4, [R0]
12BA4C:  LDR             R1, =(dword_238F68 - 0x12BA56)
12BA4E:  VMUL.F32        S4, S2, S4
12BA52:  ADD             R1, PC; dword_238F68
12BA54:  VSTR            S6, [R0,#4]
12BA58:  VLDR            S6, [R1,#4]
12BA5C:  VMUL.F32        S6, S0, S6
12BA60:  VSTR            S4, [R0]
12BA64:  VLDR            S4, [R1]
12BA68:  LDR             R0, =(dword_238F70 - 0x12BA72)
12BA6A:  VMUL.F32        S4, S2, S4
12BA6E:  ADD             R0, PC; dword_238F70
12BA70:  VSTR            S6, [R1,#4]
12BA74:  VLDR            S6, [R0,#4]
12BA78:  VMUL.F32        S6, S0, S6
12BA7C:  VSTR            S4, [R1]
12BA80:  VLDR            S4, [R0]
12BA84:  LDR             R1, =(unk_238F80 - 0x12BA8E)
12BA86:  VMUL.F32        S4, S2, S4
12BA8A:  ADD             R1, PC; unk_238F80
12BA8C:  VSTR            S6, [R0,#4]
12BA90:  VLDR            S6, [R1,#4]
12BA94:  VMUL.F32        S6, S0, S6
12BA98:  VSTR            S4, [R0]
12BA9C:  VLDR            S4, [R1]
12BAA0:  LDR             R0, =(unk_238F78 - 0x12BAAA)
12BAA2:  VMUL.F32        S4, S2, S4
12BAA6:  ADD             R0, PC; unk_238F78
12BAA8:  VSTR            S6, [R1,#4]
12BAAC:  VLDR            S6, [R0,#4]
12BAB0:  VMUL.F32        S6, S0, S6
12BAB4:  VSTR            S4, [R1]
12BAB8:  VLDR            S4, [R0]
12BABC:  LDR             R1, =(unk_238F90 - 0x12BAC6)
12BABE:  VMUL.F32        S4, S2, S4
12BAC2:  ADD             R1, PC; unk_238F90
12BAC4:  VSTR            S6, [R0,#4]
12BAC8:  VLDR            S6, [R1,#4]
12BACC:  VMUL.F32        S6, S0, S6
12BAD0:  VSTR            S4, [R0]
12BAD4:  VLDR            S4, [R1]
12BAD8:  LDR             R0, =(unk_238F88 - 0x12BAE2)
12BADA:  VMUL.F32        S4, S2, S4
12BADE:  ADD             R0, PC; unk_238F88
12BAE0:  VSTR            S6, [R1,#4]
12BAE4:  VLDR            S6, [R0,#4]
12BAE8:  VMUL.F32        S6, S0, S6
12BAEC:  VSTR            S4, [R1]
12BAF0:  VLDR            S4, [R0]
12BAF4:  LDR             R1, =(dword_238F98 - 0x12BAFE)
12BAF6:  VMUL.F32        S4, S2, S4
12BAFA:  ADD             R1, PC; dword_238F98
12BAFC:  VSTR            S6, [R0,#4]
12BB00:  VLDR            S6, [R1,#4]
12BB04:  VMUL.F32        S6, S0, S6
12BB08:  VSTR            S4, [R0]
12BB0C:  VLDR            S4, [R1]
12BB10:  LDR             R0, =(dword_238FA0 - 0x12BB1A)
12BB12:  VMUL.F32        S4, S2, S4
12BB16:  ADD             R0, PC; dword_238FA0
12BB18:  VSTR            S6, [R1,#4]
12BB1C:  VLDR            S6, [R0,#4]
12BB20:  VMUL.F32        S6, S0, S6
12BB24:  VSTR            S4, [R1]
12BB28:  VLDR            S4, [R0]
12BB2C:  LDR             R1, =(dword_238FA8 - 0x12BB36)
12BB2E:  VMUL.F32        S4, S2, S4
12BB32:  ADD             R1, PC; dword_238FA8
12BB34:  VSTR            S6, [R0,#4]
12BB38:  VLDR            S6, [R1,#4]
12BB3C:  VMUL.F32        S6, S0, S6
12BB40:  VSTR            S4, [R0]
12BB44:  VLDR            S4, [R1]
12BB48:  LDR             R0, =(dword_238FB0 - 0x12BB52)
12BB4A:  VMUL.F32        S4, S2, S4
12BB4E:  ADD             R0, PC; dword_238FB0
12BB50:  VSTR            S6, [R1,#4]
12BB54:  VLDR            S6, [R0,#4]
12BB58:  VMUL.F32        S6, S0, S6
12BB5C:  VSTR            S4, [R1]
12BB60:  VLDR            S4, [R0]
12BB64:  LDR             R1, =(dword_238FB8 - 0x12BB6E)
12BB66:  VMUL.F32        S4, S2, S4
12BB6A:  ADD             R1, PC; dword_238FB8
12BB6C:  VSTR            S6, [R0,#4]
12BB70:  VLDR            S6, [R1,#4]
12BB74:  VMUL.F32        S6, S0, S6
12BB78:  VSTR            S4, [R0]
12BB7C:  VLDR            S4, [R1]
12BB80:  LDR             R0, =(dword_238FC0 - 0x12BB8A)
12BB82:  VMUL.F32        S4, S2, S4
12BB86:  ADD             R0, PC; dword_238FC0
12BB88:  VSTR            S6, [R1,#4]
12BB8C:  VLDR            S6, [R0,#4]
12BB90:  VMUL.F32        S6, S0, S6
12BB94:  VSTR            S4, [R1]
12BB98:  VLDR            S4, [R0]
12BB9C:  LDR             R1, =(unk_238FC8 - 0x12BBA6)
12BB9E:  VMUL.F32        S4, S2, S4
12BBA2:  ADD             R1, PC; unk_238FC8
12BBA4:  VSTR            S6, [R0,#4]
12BBA8:  VLDR            S6, [R1,#4]
12BBAC:  VMUL.F32        S6, S0, S6
12BBB0:  VSTR            S4, [R0]
12BBB4:  VLDR            S4, [R1]
12BBB8:  LDR             R0, =(unk_238FD0 - 0x12BBC2)
12BBBA:  VMUL.F32        S4, S2, S4
12BBBE:  ADD             R0, PC; unk_238FD0
12BBC0:  VSTR            S6, [R1,#4]
12BBC4:  VLDR            S6, [R0,#4]
12BBC8:  VMUL.F32        S0, S0, S6
12BBCC:  VSTR            S4, [R1]
12BBD0:  VLDR            S4, [R0]
12BBD4:  VMUL.F32        S2, S2, S4
12BBD8:  VSTR            S0, [R0,#4]
12BBDC:  VSTR            S2, [R0]
12BBE0:  POP             {R4,R5,R7,PC}
