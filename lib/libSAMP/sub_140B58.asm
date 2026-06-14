; =========================================================
; Game Engine Function: sub_140B58
; Address            : 0x140B58 - 0x140D46
; =========================================================

140B58:  PUSH            {R4-R7,LR}
140B5A:  ADD             R7, SP, #0xC
140B5C:  PUSH.W          {R8-R11}
140B60:  SUB             SP, SP, #4
140B62:  VPUSH           {D8}
140B66:  SUB             SP, SP, #0x68
140B68:  MOV             R5, R1
140B6A:  BL              sub_F7FE0
140B6E:  VLDR            S0, [R0]
140B72:  MOV             R4, R0
140B74:  VLDR            S2, [R0,#4]
140B78:  MOVS            R1, #1
140B7A:  VLDR            S4, [R0,#8]
140B7E:  ADD             R2, SP, #0x90+var_6C
140B80:  VLDR            S6, [R0,#0xC]
140B84:  ADD             R3, SP, #0x90+var_70
140B86:  VLDR            S8, [R0,#0x10]
140B8A:  VLDR            S10, [R0,#0x14]
140B8E:  VCVT.F64.F32    D16, S4
140B92:  LDR             R0, =(off_234AB8 - 0x140B98)
140B94:  ADD             R0, PC; off_234AB8
140B96:  LDR.W           R9, [R0]; off_24754C
140B9A:  MOV.W           R0, #0xFFFFFFFF
140B9E:  VCVT.F64.F32    D18, S2
140BA2:  STR             R0, [R5,#4]
140BA4:  STR             R0, [R5]
140BA6:  MOVS            R0, #0
140BA8:  LDR.W           R6, [R9]
140BAC:  STRD.W          R1, R0, [SP,#0x90+var_90]
140BB0:  ADD             R1, SP, #0x90+var_40
140BB2:  STR             R0, [SP,#0x90+var_70]
140BB4:  VCVT.F64.F32    D20, S0
140BB8:  STRD.W          R0, R0, [SP,#0x90+var_88]
140BBC:  STRD.W          R0, R0, [SP,#0x90+var_80]
140BC0:  STRD.W          R0, R0, [SP,#0x90+var_78]
140BC4:  ADD             R0, SP, #0x90+var_34
140BC6:  VCVT.F64.F32    D17, S10
140BCA:  VCVT.F64.F32    D19, S8
140BCE:  VCVT.F64.F32    D21, S6
140BD2:  VLDR            D8, =70.0
140BD6:  VADD.F32        S4, S4, S10
140BDA:  VADD.F32        S2, S2, S8
140BDE:  VMLA.F64        D17, D16, D8
140BE2:  VMLA.F64        D19, D18, D8
140BE6:  VMLA.F64        D21, D20, D8
140BEA:  VADD.F32        S0, S0, S6
140BEE:  VSTR            S2, [SP,#0x90+var_30]
140BF2:  VCVT.F32.F64    S10, D17
140BF6:  VCVT.F32.F64    S8, D19
140BFA:  VCVT.F32.F64    S6, D21
140BFE:  VSTR            S0, [SP,#0x90+var_34]
140C02:  VSTR            S4, [SP,#0x90+var_2C]
140C06:  VSTR            S10, [SP,#0x90+var_38]
140C0A:  VSTR            S8, [SP,#0x90+var_3C]
140C0E:  VSTR            S6, [SP,#0x90+var_40]
140C12:  BLX             R6
140C14:  LDR             R0, [SP,#0x90+var_70]
140C16:  CBZ             R0, loc_140C20
140C18:  ADD             R2, SP, #0x90+var_6C
140C1A:  ADD             R3, SP, #0x90+var_40
140C1C:  LDM             R2, {R0-R2}
140C1E:  STM             R3!, {R0-R2}
140C20:  LDR             R0, =(off_23496C - 0x140C2C)
140C22:  MOVS            R1, #0
140C24:  ADD             R2, SP, #0x90+var_34
140C26:  ADD             R3, SP, #0x90+var_40
140C28:  ADD             R0, PC; off_23496C
140C2A:  MOVT            R1, #0x4220
140C2E:  LDR             R0, [R0]; dword_23DEF4
140C30:  LDR             R0, [R0]
140C32:  LDR.W           R0, [R0,#0x3B0]
140C36:  LDR             R0, [R0,#0x10]
140C38:  BL              sub_1486DA
140C3C:  MOVW            R1, #0xFFFF
140C40:  CMP             R0, R1
140C42:  IT NE
140C44:  STRHNE          R0, [R5]
140C46:  ADD.W           R11, SP, #0x90+var_34
140C4A:  VLDR            S0, [R4]
140C4E:  ADD.W           R10, SP, #0x90+var_40
140C52:  VLDR            S2, [R4,#4]
140C56:  ADD             R2, SP, #0x90+var_6C
140C58:  VLDR            S4, [R4,#8]
140C5C:  ADD             R3, SP, #0x90+var_70
140C5E:  VLDR            S6, [R4,#0xC]
140C62:  MOVS            R5, #0
140C64:  VLDR            S8, [R4,#0x10]
140C68:  MOV.W           R8, #1
140C6C:  VLDR            S10, [R4,#0x14]
140C70:  MOV             R0, R11
140C72:  VCVT.F64.F32    D16, S0
140C76:  LDR.W           R6, [R9]
140C7A:  MOV             R1, R10
140C7C:  STRD.W          R8, R5, [SP,#0x90+var_90]
140C80:  STRD.W          R5, R8, [SP,#0x90+var_88]
140C84:  STRD.W          R5, R5, [SP,#0x90+var_80]
140C88:  STRD.W          R5, R5, [SP,#0x90+var_78]
140C8C:  VCVT.F64.F32    D18, S2
140C90:  VCVT.F64.F32    D20, S4
140C94:  VCVT.F64.F32    D17, S6
140C98:  VCVT.F64.F32    D19, S8
140C9C:  VCVT.F64.F32    D21, S10
140CA0:  VMLA.F64        D17, D16, D8
140CA4:  VMLA.F64        D19, D18, D8
140CA8:  VMLA.F64        D21, D20, D8
140CAC:  VCVT.F32.F64    S0, D17
140CB0:  VCVT.F32.F64    S2, D19
140CB4:  VCVT.F32.F64    S4, D21
140CB8:  VSTR            S0, [SP,#0x90+var_40]
140CBC:  VSTR            S2, [SP,#0x90+var_3C]
140CC0:  VSTR            S4, [SP,#0x90+var_38]
140CC4:  BLX             R6
140CC6:  VLDR            S0, [R4]
140CCA:  ADD             R2, SP, #0x90+var_6C
140CCC:  VLDR            S2, [R4,#4]
140CD0:  ADD             R3, SP, #0x90+var_70
140CD2:  VLDR            S4, [R4,#8]
140CD6:  MOV             R0, R11
140CD8:  VLDR            S6, [R4,#0xC]
140CDC:  MOV             R1, R10
140CDE:  VLDR            S8, [R4,#0x10]
140CE2:  VLDR            S10, [R4,#0x14]
140CE6:  VCVT.F64.F32    D16, S0
140CEA:  LDR.W           R6, [R9]
140CEE:  STRD.W          R8, R8, [SP,#0x90+var_90]
140CF2:  STRD.W          R5, R8, [SP,#0x90+var_88]
140CF6:  STRD.W          R5, R5, [SP,#0x90+var_80]
140CFA:  STRD.W          R5, R5, [SP,#0x90+var_78]
140CFE:  VCVT.F64.F32    D18, S2
140D02:  VCVT.F64.F32    D20, S4
140D06:  VCVT.F64.F32    D17, S6
140D0A:  VCVT.F64.F32    D19, S8
140D0E:  VCVT.F64.F32    D21, S10
140D12:  VMLA.F64        D17, D16, D8
140D16:  VMLA.F64        D19, D18, D8
140D1A:  VMLA.F64        D21, D20, D8
140D1E:  VCVT.F32.F64    S0, D17
140D22:  VCVT.F32.F64    S2, D19
140D26:  VCVT.F32.F64    S4, D21
140D2A:  VSTR            S0, [SP,#0x90+var_40]
140D2E:  VSTR            S2, [SP,#0x90+var_3C]
140D32:  VSTR            S4, [SP,#0x90+var_38]
140D36:  BLX             R6
140D38:  ADD             SP, SP, #0x68 ; 'h'
140D3A:  VPOP            {D8}
140D3E:  ADD             SP, SP, #4
140D40:  POP.W           {R8-R11}
140D44:  POP             {R4-R7,PC}
