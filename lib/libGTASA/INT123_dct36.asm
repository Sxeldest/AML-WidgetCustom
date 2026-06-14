; =========================================================
; Game Engine Function: INT123_dct36
; Address            : 0x22B860 - 0x22BEC2
; =========================================================

22B860:  PUSH            {R7,LR}
22B862:  MOV             R7, SP
22B864:  VPUSH           {D8-D15}
22B868:  SUB             SP, SP, #0x90
22B86A:  ADD.W           R12, R0, #0x50 ; 'P'
22B86E:  VLDR            D16, [R0,#0x80]
22B872:  VLDR            D17, [R0,#0x40]
22B876:  VLDR            D18, [R0,#0x48]
22B87A:  VLDM            R12, {D20-D23}
22B87E:  ADD.W           R12, R0, #0x28 ; '('
22B882:  VLDR            D25, [R0,#0x70]
22B886:  VLDR            D27, [R0,#0x78]
22B88A:  VLDM            R12, {D1-D3}
22B88E:  VADD.F64        D19, D27, D16
22B892:  LDR.W           R12, =(dword_6D6280 - 0x22B89E)
22B896:  LDR.W           LR, =(dword_6D6288 - 0x22B8A0)
22B89A:  ADD             R12, PC; dword_6D6280
22B89C:  ADD             LR, PC; dword_6D6288
22B89E:  VADD.F64        D24, D25, D23
22B8A2:  VADD.F64        D0, D22, D21
22B8A6:  VADD.F64        D30, D17, D3
22B8AA:  VADD.F64        D29, D20, D18
22B8AE:  VADD.F64        D11, D2, D1
22B8B2:  VSTR            D19, [SP,#0xD8+var_D0]
22B8B6:  VLDR            D4, [R0,#0x88]
22B8BA:  VSTR            D19, [R0,#0x80]
22B8BE:  VSTR            D24, [R0,#0x70]
22B8C2:  VSTR            D0, [R0,#0x60]
22B8C6:  VSTR            D29, [R0,#0x50]
22B8CA:  VSTR            D30, [R0,#0x40]
22B8CE:  VSTR            D11, [R0,#0x30]
22B8D2:  VLDR            D6, [R0,#0x20]
22B8D6:  VLDR            D5, [R0,#0x18]
22B8DA:  VADD.F64        D22, D23, D22
22B8DE:  VADD.F64        D19, D6, D5
22B8E2:  VSTR            D19, [SP,#0xD8+var_D8]
22B8E6:  VSTR            D19, [R0,#0x20]
22B8EA:  VLDR            D7, [R0,#8]
22B8EE:  VLDR            D8, [R0,#0x10]
22B8F2:  VADD.F64        D17, D18, D17
22B8F6:  VADD.F64        D14, D8, D7
22B8FA:  VADD.F64        D18, D21, D20
22B8FE:  VADD.F64        D23, D27, D25
22B902:  VSTR            D14, [R0,#0x10]
22B906:  VLDR            D13, [R0]
22B90A:  VADD.F64        D21, D3, D2
22B90E:  VADD.F64        D16, D16, D4
22B912:  VADD.F64        D2, D5, D8
22B916:  VADD.F64        D1, D1, D6
22B91A:  VADD.F64        D28, D7, D13
22B91E:  VADD.F64        D26, D18, D17
22B922:  VADD.F64        D5, D23, D22
22B926:  VADD.F64        D3, D23, D16
22B92A:  VADD.F64        D27, D17, D21
22B92E:  VADD.F64        D18, D22, D18
22B932:  VADD.F64        D16, D21, D1
22B936:  VADD.F64        D6, D1, D2
22B93A:  VADD.F64        D9, D2, D28
22B93E:  VSUB.F64        D17, D26, D5
22B942:  VSTR            D28, [R0,#8]
22B946:  VSTR            D3, [R0,#0x88]
22B94A:  VSTR            D5, [R0,#0x78]
22B94E:  VSTR            D18, [R0,#0x68]
22B952:  VSTR            D26, [R0,#0x58]
22B956:  VSTR            D27, [R0,#0x48]
22B95A:  VSTR            D16, [R0,#0x38]
22B95E:  VSTR            D6, [R0,#0x28]
22B962:  VSTR            D9, [R0,#0x18]
22B966:  VLDR            D21, [R12]
22B96A:  LDR.W           R0, =(dword_6D6278 - 0x22B97A)
22B96E:  VMOV.F64        D31, D24
22B972:  LDR.W           R12, =(dword_6D6270 - 0x22B97C)
22B976:  ADD             R0, PC; dword_6D6278
22B978:  ADD             R12, PC; dword_6D6270
22B97A:  VMUL.F64        D20, D21, D17
22B97E:  VADD.F64        D17, D9, D26
22B982:  VLDR            D22, [R0]
22B986:  LDR.W           R0, =(dword_6D1470 - 0x22B992)
22B98A:  VMOV.F64        D2, D31
22B98E:  ADD             R0, PC; dword_6D1470
22B990:  VMUL.F64        D17, D22, D17
22B994:  VLDR            D25, [R0]
22B998:  LDR.W           R0, =(dword_6D6260 - 0x22B9A4)
22B99C:  VMUL.F64        D19, D25, D16
22B9A0:  ADD             R0, PC; dword_6D6260
22B9A2:  VADD.F64        D16, D17, D20
22B9A6:  VLDR            D15, [R0]
22B9AA:  LDR.W           R0, =(dword_6D6268 - 0x22B9BA)
22B9AE:  VSTR            D17, [SP,#0xD8+var_90]
22B9B2:  VADD.F64        D17, D19, D16
22B9B6:  ADD             R0, PC; dword_6D6268
22B9B8:  VADD.F64        D16, D27, D6
22B9BC:  VLDR            D12, [R0]
22B9C0:  LDR.W           R0, =(dword_6D1478 - 0x22B9CC)
22B9C4:  VSTR            D20, [SP,#0xD8+var_B0]
22B9C8:  ADD             R0, PC; dword_6D1478
22B9CA:  VSTR            D19, [SP,#0xD8+var_B8]
22B9CE:  VMUL.F64        D19, D15, D16
22B9D2:  VLDR            D20, [R0]
22B9D6:  VSUB.F64        D16, D27, D3
22B9DA:  LDR.W           R0, =(INT123_tfcos36_ptr - 0x22B9E2)
22B9DE:  ADD             R0, PC; INT123_tfcos36_ptr
22B9E0:  LDR             R0, [R0]; INT123_tfcos36
22B9E2:  VMUL.F64        D24, D20, D18
22B9E6:  VMUL.F64        D16, D12, D16
22B9EA:  VADD.F64        D7, D24, D28
22B9EE:  VADD.F64        D23, D16, D7
22B9F2:  VSTR            D16, [SP,#0xD8+var_98]
22B9F6:  VADD.F64        D16, D19, D23
22B9FA:  VADD.F64        D23, D16, D17
22B9FE:  VLDR            D10, [R0]
22BA02:  VSTR            D19, [SP,#0xD8+var_C0]
22BA06:  VMUL.F64        D19, D10, D23
22BA0A:  VSUB.F64        D23, D29, D31
22BA0E:  VMUL.F64        D4, D23, D21
22BA12:  VADD.F64        D21, D29, D14
22BA16:  VMUL.F64        D10, D25, D11
22BA1A:  VMUL.F64        D11, D21, D22
22BA1E:  VADD.F64        D21, D11, D4
22BA22:  VSTR            D16, [SP,#0xD8+var_50]
22BA26:  VLDR            D16, [R0,#0x10]
22BA2A:  VLDR            D23, [SP,#0xD8+var_D0]
22BA2E:  VSTR            D16, [SP,#0xD8+var_C8]
22BA32:  VLDR            D16, [R0,#0x18]
22BA36:  VLDR            D22, [SP,#0xD8+var_D8]
22BA3A:  VSTR            D16, [SP,#0xD8+var_A8]
22BA3E:  VADD.F64        D16, D21, D10
22BA42:  VSUB.F64        D21, D30, D23
22BA46:  VMUL.F64        D12, D21, D12
22BA4A:  VADD.F64        D21, D30, D22
22BA4E:  VMUL.F64        D18, D20, D0
22BA52:  VMUL.F64        D1, D21, D15
22BA56:  VADD.F64        D15, D13, D18
22BA5A:  VADD.F64        D21, D15, D1
22BA5E:  VSTR            D17, [SP,#0xD8+var_58]
22BA62:  VADD.F64        D17, D21, D12
22BA66:  VADD.F64        D0, D17, D16
22BA6A:  VSTR            D16, [SP,#0xD8+var_68]
22BA6E:  VADD.F64        D16, D0, D19
22BA72:  VSTR            D17, [SP,#0xD8+var_60]
22BA76:  VLDR            D21, [R3,#0xD8]
22BA7A:  VLDR            D31, [R12]
22BA7E:  VMUL.F64        D17, D16, D21
22BA82:  LDR.W           R12, [R7,#8]
22BA86:  VLDR            D21, [R0,#0x40]
22BA8A:  VLDR            D8, [R0,#8]
22BA8E:  VSTR            D21, [SP,#0xD8+var_70]
22BA92:  VLDR            D21, [R0,#0x38]
22BA96:  VSTR            D21, [SP,#0xD8+var_78]
22BA9A:  VLDR            D21, [R0,#0x30]
22BA9E:  VSTR            D21, [SP,#0xD8+var_80]
22BAA2:  VLDR            D21, [R0,#0x28]
22BAA6:  VSTR            D21, [SP,#0xD8+var_88]
22BAAA:  VLDR            D21, [R0,#0x20]
22BAAE:  ADD.W           R0, R12, #0x800
22BAB2:  VSTR            D21, [SP,#0xD8+var_A0]
22BAB6:  VLDR            D21, [LR]
22BABA:  VSTR            D17, [R2,#0x48]
22BABE:  VLDR            D17, [R3,#0xD0]
22BAC2:  VMUL.F64        D16, D16, D17
22BAC6:  VSTR            D16, [R2,#0x40]
22BACA:  VSUB.F64        D16, D0, D19
22BACE:  VLDR            D17, [R3,#0x40]
22BAD2:  VLDR            D19, [R1,#0x40]
22BAD6:  VMUL.F64        D17, D16, D17
22BADA:  VADD.F64        D17, D19, D17
22BADE:  VSTR            D17, [R0]
22BAE2:  ADD.W           R0, R12, #0x900
22BAE6:  VLDR            D17, [R3,#0x48]
22BAEA:  VMUL.F64        D16, D16, D17
22BAEE:  VLDR            D17, [R1,#0x48]
22BAF2:  VADD.F64        D16, D17, D16
22BAF6:  VSTR            D16, [R0]
22BAFA:  ADD.W           R0, R12, #0x700
22BAFE:  VADD.F64        D16, D26, D5
22BB02:  VSUB.F64        D16, D16, D9
22BB06:  VMUL.F64        D0, D25, D16
22BB0A:  VADD.F64        D16, D27, D3
22BB0E:  VSUB.F64        D16, D16, D6
22BB12:  VMUL.F64        D26, D20, D16
22BB16:  VSUB.F64        D16, D28, D24
22BB1A:  VSUB.F64        D17, D16, D24
22BB1E:  VSUB.F64        D27, D17, D26
22BB22:  VSUB.F64        D16, D27, D0
22BB26:  VMUL.F64        D19, D16, D8
22BB2A:  VADD.F64        D16, D29, D2
22BB2E:  VSUB.F64        D16, D16, D14
22BB32:  VMUL.F64        D28, D25, D16
22BB36:  VSUB.F64        D16, D13, D18
22BB3A:  VSUB.F64        D13, D16, D18
22BB3E:  VADD.F64        D16, D30, D23
22BB42:  VSUB.F64        D16, D16, D22
22BB46:  VMUL.F64        D16, D20, D16
22BB4A:  VSUB.F64        D30, D13, D16
22BB4E:  VSUB.F64        D18, D30, D28
22BB52:  VADD.F64        D20, D18, D19
22BB56:  VLDR            D24, [R3,#0xE0]
22BB5A:  VSUB.F64        D18, D18, D19
22BB5E:  VMUL.F64        D24, D20, D24
22BB62:  VSTR            D24, [R2,#0x50]
22BB66:  VLDR            D24, [R3,#0xC8]
22BB6A:  VADD.F64        D23, D23, D22
22BB6E:  VMUL.F64        D20, D20, D24
22BB72:  VSTR            D20, [R2,#0x38]
22BB76:  VLDR            D19, [R3,#0x38]
22BB7A:  VLDR            D20, [R1,#0x38]
22BB7E:  VMUL.F64        D19, D18, D19
22BB82:  VADD.F64        D19, D20, D19
22BB86:  VSTR            D19, [R0]
22BB8A:  ADD.W           R0, R12, #0xA00
22BB8E:  VLDR            D19, [R3,#0x50]
22BB92:  VMUL.F64        D22, D23, D31
22BB96:  VMUL.F64        D18, D18, D19
22BB9A:  VLDR            D19, [R1,#0x50]
22BB9E:  VADD.F64        D17, D26, D17
22BBA2:  VADD.F64        D18, D19, D18
22BBA6:  VSTR            D18, [R0]
22BBAA:  ADD.W           R0, R12, #0x600
22BBAE:  VADD.F64        D18, D9, D5
22BBB2:  VMUL.F64        D20, D21, D18
22BBB6:  VLDR            D8, [SP,#0xD8+var_B8]
22BBBA:  VLDR            D19, [SP,#0xD8+var_B0]
22BBBE:  VADD.F64        D18, D20, D8
22BBC2:  VSUB.F64        D5, D19, D18
22BBC6:  VADD.F64        D18, D3, D6
22BBCA:  VMUL.F64        D24, D31, D18
22BBCE:  VLDR            D18, [SP,#0xD8+var_C0]
22BBD2:  VLDR            D19, [SP,#0xD8+var_C8]
22BBD6:  VSUB.F64        D18, D7, D18
22BBDA:  VSUB.F64        D3, D18, D24
22BBDE:  VADD.F64        D18, D3, D5
22BBE2:  VMUL.F64        D25, D18, D19
22BBE6:  VADD.F64        D19, D2, D14
22BBEA:  VMUL.F64        D21, D19, D21
22BBEE:  VSUB.F64        D18, D4, D10
22BBF2:  VSUB.F64        D19, D18, D21
22BBF6:  VSUB.F64        D18, D15, D1
22BBFA:  VSUB.F64        D18, D18, D22
22BBFE:  VADD.F64        D23, D18, D19
22BC02:  VADD.F64        D29, D23, D25
22BC06:  VLDR            D31, [R3,#0xE8]
22BC0A:  VSUB.F64        D23, D23, D25
22BC0E:  VMUL.F64        D31, D29, D31
22BC12:  VSTR            D31, [R2,#0x58]
22BC16:  VLDR            D31, [R3,#0xC0]
22BC1A:  VSUB.F64        D20, D20, D8
22BC1E:  VMUL.F64        D29, D29, D31
22BC22:  VSTR            D29, [R2,#0x30]
22BC26:  VLDR            D25, [R3,#0x30]
22BC2A:  VLDR            D29, [R1,#0x30]
22BC2E:  VMUL.F64        D25, D23, D25
22BC32:  VADD.F64        D25, D29, D25
22BC36:  VSTR            D25, [R0]
22BC3A:  ADD.W           R0, R12, #0xB00
22BC3E:  VLDR            D25, [R3,#0x58]
22BC42:  VADD.F64        D17, D26, D17
22BC46:  VMUL.F64        D23, D23, D25
22BC4A:  VLDR            D25, [R1,#0x58]
22BC4E:  VSUB.F64        D18, D18, D19
22BC52:  VADD.F64        D23, D25, D23
22BC56:  VSTR            D23, [R0]
22BC5A:  ADD.W           R0, R12, #0x500
22BC5E:  VLDR            D23, [SP,#0xD8+var_90]
22BC62:  VLDR            D25, [SP,#0xD8+var_A8]
22BC66:  VADD.F64        D20, D23, D20
22BC6A:  VLDR            D23, [SP,#0xD8+var_98]
22BC6E:  VLDR            D31, [R3,#0xF0]
22BC72:  VSUB.F64        D23, D24, D23
22BC76:  VADD.F64        D23, D7, D23
22BC7A:  VADD.F64        D24, D23, D20
22BC7E:  VMUL.F64        D24, D25, D24
22BC82:  VSUB.F64        D25, D11, D10
22BC86:  VADD.F64        D21, D25, D21
22BC8A:  VSUB.F64        D25, D15, D12
22BC8E:  VADD.F64        D22, D25, D22
22BC92:  VADD.F64        D25, D22, D21
22BC96:  VADD.F64        D29, D25, D24
22BC9A:  VMUL.F64        D31, D29, D31
22BC9E:  VSTR            D31, [R2,#0x60]
22BCA2:  VLDR            D31, [R3,#0xB8]
22BCA6:  VSUB.F64        D24, D25, D24
22BCAA:  VMUL.F64        D29, D29, D31
22BCAE:  VSTR            D29, [R2,#0x28]
22BCB2:  VLDR            D25, [R3,#0x28]
22BCB6:  VLDR            D29, [R1,#0x28]
22BCBA:  VMUL.F64        D25, D24, D25
22BCBE:  VADD.F64        D25, D29, D25
22BCC2:  VSTR            D25, [R0]
22BCC6:  ADD.W           R0, R12, #0xC00
22BCCA:  VLDR            D25, [R3,#0x60]
22BCCE:  VSUB.F64        D20, D23, D20
22BCD2:  VMUL.F64        D24, D24, D25
22BCD6:  VLDR            D25, [R1,#0x60]
22BCDA:  VSUB.F64        D21, D22, D21
22BCDE:  VADD.F64        D24, D25, D24
22BCE2:  VSTR            D24, [R0]
22BCE6:  ADD.W           R0, R12, #0x400
22BCEA:  VLDR            D24, [SP,#0xD8+var_A0]
22BCEE:  VLDR            D25, [R3,#0xF8]
22BCF2:  VMUL.F64        D17, D24, D17
22BCF6:  VADD.F64        D24, D16, D13
22BCFA:  VADD.F64        D16, D16, D24
22BCFE:  VADD.F64        D24, D16, D17
22BD02:  VMUL.F64        D25, D24, D25
22BD06:  VSTR            D25, [R2,#0x68]
22BD0A:  VSUB.F64        D16, D16, D17
22BD0E:  VLDR            D17, [R3,#0xB0]
22BD12:  VMUL.F64        D17, D24, D17
22BD16:  VSTR            D17, [R2,#0x20]
22BD1A:  VLDR            D17, [R3,#0x20]
22BD1E:  VLDR            D23, [R1,#0x20]
22BD22:  VMUL.F64        D17, D16, D17
22BD26:  VADD.F64        D17, D23, D17
22BD2A:  VSTR            D17, [R0]
22BD2E:  ADD.W           R0, R12, #0xD00
22BD32:  VLDR            D17, [R3,#0x68]
22BD36:  VMUL.F64        D16, D16, D17
22BD3A:  VLDR            D17, [SP,#0xD8+var_88]
22BD3E:  VMUL.F64        D17, D20, D17
22BD42:  VLDR            D20, [R1,#0x68]
22BD46:  VADD.F64        D16, D20, D16
22BD4A:  VADD.F64        D20, D21, D17
22BD4E:  VSTR            D16, [R0]
22BD52:  ADD.W           R0, R12, #0xE00
22BD56:  VLDR            D16, [R3,#0x100]
22BD5A:  VSUB.F64        D17, D21, D17
22BD5E:  VMUL.F64        D16, D20, D16
22BD62:  VSTR            D16, [R2,#0x70]
22BD66:  VLDR            D16, [R3,#0xA8]
22BD6A:  VMUL.F64        D16, D20, D16
22BD6E:  VSTR            D16, [R2,#0x18]
22BD72:  VLDR            D16, [R3,#0x18]
22BD76:  VLDR            D20, [R1,#0x18]
22BD7A:  VMUL.F64        D16, D17, D16
22BD7E:  VADD.F64        D16, D20, D16
22BD82:  VSUB.F64        D20, D3, D5
22BD86:  VSTR            D16, [R12,#0x300]
22BD8A:  VLDR            D16, [R3,#0x70]
22BD8E:  VMUL.F64        D16, D17, D16
22BD92:  VLDR            D17, [SP,#0xD8+var_80]
22BD96:  VMUL.F64        D17, D20, D17
22BD9A:  VLDR            D20, [R1,#0x70]
22BD9E:  VADD.F64        D19, D18, D17
22BDA2:  VADD.F64        D16, D20, D16
22BDA6:  VSTR            D16, [R0]
22BDAA:  ADD.W           R0, R12, #0xF00
22BDAE:  VLDR            D16, [R3,#0x108]
22BDB2:  VSUB.F64        D17, D18, D17
22BDB6:  VMUL.F64        D16, D19, D16
22BDBA:  VSTR            D16, [R2,#0x78]
22BDBE:  VLDR            D16, [R3,#0xA0]
22BDC2:  VMUL.F64        D16, D19, D16
22BDC6:  VSTR            D16, [R2,#0x10]
22BDCA:  VLDR            D16, [R3,#0x10]
22BDCE:  VLDR            D18, [R1,#0x10]
22BDD2:  VMUL.F64        D16, D17, D16
22BDD6:  VADD.F64        D16, D18, D16
22BDDA:  VADD.F64        D18, D27, D0
22BDDE:  VSTR            D16, [R12,#0x200]
22BDE2:  VLDR            D16, [R3,#0x78]
22BDE6:  VADD.F64        D19, D30, D28
22BDEA:  VMUL.F64        D16, D17, D16
22BDEE:  VLDR            D17, [SP,#0xD8+var_78]
22BDF2:  VMUL.F64        D17, D18, D17
22BDF6:  VLDR            D18, [R1,#0x78]
22BDFA:  VADD.F64        D16, D18, D16
22BDFE:  VADD.F64        D18, D19, D17
22BE02:  VSTR            D16, [R0]
22BE06:  ADD.W           R0, R12, #0x1000
22BE0A:  VLDR            D16, [R3,#0x110]
22BE0E:  VSUB.F64        D17, D19, D17
22BE12:  VMUL.F64        D16, D18, D16
22BE16:  VSTR            D16, [R2,#0x80]
22BE1A:  VLDR            D16, [R3,#0x98]
22BE1E:  VMUL.F64        D16, D18, D16
22BE22:  VSTR            D16, [R2,#8]
22BE26:  VLDR            D16, [R3,#8]
22BE2A:  VLDR            D18, [R1,#8]
22BE2E:  VMUL.F64        D16, D17, D16
22BE32:  VADD.F64        D16, D18, D16
22BE36:  VSTR            D16, [R12,#0x100]
22BE3A:  VLDR            D18, [SP,#0xD8+var_50]
22BE3E:  VLDR            D19, [SP,#0xD8+var_58]
22BE42:  VLDR            D16, [R3,#0x80]
22BE46:  VSUB.F64        D18, D18, D19
22BE4A:  VMUL.F64        D16, D17, D16
22BE4E:  VLDR            D17, [SP,#0xD8+var_70]
22BE52:  VLDR            D19, [SP,#0xD8+var_60]
22BE56:  VMUL.F64        D17, D17, D18
22BE5A:  VLDR            D20, [SP,#0xD8+var_68]
22BE5E:  VLDR            D18, [R1,#0x80]
22BE62:  VSUB.F64        D19, D19, D20
22BE66:  VADD.F64        D16, D18, D16
22BE6A:  VADD.F64        D18, D19, D17
22BE6E:  VSTR            D16, [R0]
22BE72:  ADD.W           R0, R12, #0x1100
22BE76:  VLDR            D16, [R3,#0x118]
22BE7A:  VSUB.F64        D17, D19, D17
22BE7E:  VMUL.F64        D16, D18, D16
22BE82:  VSTR            D16, [R2,#0x88]
22BE86:  VLDR            D16, [R3,#0x90]
22BE8A:  VMUL.F64        D16, D18, D16
22BE8E:  VSTR            D16, [R2]
22BE92:  VLDR            D16, [R3]
22BE96:  VLDR            D18, [R1]
22BE9A:  VMUL.F64        D16, D17, D16
22BE9E:  VADD.F64        D16, D18, D16
22BEA2:  VSTR            D16, [R12]
22BEA6:  VLDR            D16, [R3,#0x88]
22BEAA:  VMUL.F64        D16, D17, D16
22BEAE:  VLDR            D17, [R1,#0x88]
22BEB2:  VADD.F64        D16, D17, D16
22BEB6:  VSTR            D16, [R0]
22BEBA:  ADD             SP, SP, #0x90
22BEBC:  VPOP            {D8-D15}
22BEC0:  POP             {R7,PC}
