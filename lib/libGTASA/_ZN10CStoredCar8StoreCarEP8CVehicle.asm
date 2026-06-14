; =========================================================
; Game Engine Function: _ZN10CStoredCar8StoreCarEP8CVehicle
; Address            : 0x313A5C - 0x313C0C
; =========================================================

313A5C:  PUSH            {R4,R5,R7,LR}
313A5E:  ADD             R7, SP, #8
313A60:  MOV             R5, R1
313A62:  MOV             R4, R0
313A64:  LDRH            R0, [R5,#0x26]
313A66:  ADDS            R1, R5, #4
313A68:  STRH            R0, [R4,#0x12]
313A6A:  LDR             R0, [R5,#0x14]
313A6C:  MOV             R2, R1
313A6E:  VLDR            S0, =100.0
313A72:  CMP             R0, #0
313A74:  IT NE
313A76:  ADDNE.W         R2, R0, #0x30 ; '0'
313A7A:  LDR             R0, [R2]
313A7C:  MOV             R2, R1
313A7E:  STR             R0, [R4]
313A80:  LDR             R0, [R5,#0x14]
313A82:  CMP             R0, #0
313A84:  IT NE
313A86:  ADDNE.W         R2, R0, #0x30 ; '0'
313A8A:  LDR             R0, [R2,#4]
313A8C:  STR             R0, [R4,#4]
313A8E:  LDR             R0, [R5,#0x14]
313A90:  CMP             R0, #0
313A92:  IT NE
313A94:  ADDNE.W         R1, R0, #0x30 ; '0'
313A98:  LDR             R0, [R1,#8]
313A9A:  MOVS            R1, #0
313A9C:  STR             R0, [R4,#8]
313A9E:  LDR             R0, [R5,#0x14]
313AA0:  VLDR            S2, [R0,#0x10]
313AA4:  VMUL.F32        S2, S2, S0
313AA8:  VCVT.S32.F32    S2, S2
313AAC:  VMOV            R0, S2
313AB0:  STRB.W          R0, [R4,#0x3C]
313AB4:  LDR             R0, [R5,#0x14]
313AB6:  VLDR            S2, [R0,#0x14]
313ABA:  VMUL.F32        S2, S2, S0
313ABE:  VCVT.S32.F32    S2, S2
313AC2:  VMOV            R0, S2
313AC6:  STRB.W          R0, [R4,#0x3D]
313ACA:  LDR             R0, [R5,#0x14]
313ACC:  VLDR            S2, [R0,#0x18]
313AD0:  VMUL.F32        S0, S2, S0
313AD4:  VCVT.S32.F32    S0, S0
313AD8:  VMOV            R0, S0
313ADC:  STRB.W          R0, [R4,#0x3E]
313AE0:  LDRB.W          R0, [R5,#0x438]
313AE4:  STRB.W          R0, [R4,#0x32]
313AE8:  LDRB.W          R0, [R5,#0x439]
313AEC:  STRB.W          R0, [R4,#0x33]
313AF0:  LDRB.W          R0, [R5,#0x43A]
313AF4:  STRB.W          R0, [R4,#0x34]
313AF8:  LDRB.W          R0, [R5,#0x43B]
313AFC:  STRB.W          R0, [R4,#0x35]
313B00:  LDRB.W          R0, [R5,#0x1D6]
313B04:  STRB.W          R0, [R4,#0x36]
313B08:  LDR.W           R0, [R5,#0x390]
313B0C:  STR             R0, [R4,#0xC]
313B0E:  LDRB.W          R0, [R5,#0x43C]
313B12:  STRB.W          R0, [R4,#0x37]
313B16:  LDRB.W          R0, [R5,#0x43D]
313B1A:  STRH            R1, [R4,#0x10]
313B1C:  STRB.W          R0, [R4,#0x38]
313B20:  LDR             R0, [R5,#0x44]
313B22:  UBFX.W          R0, R0, #0x12, #1
313B26:  STRH            R0, [R4,#0x10]
313B28:  LDR             R1, [R5,#0x44]
313B2A:  TST.W           R1, #0x80000
313B2E:  ITTT NE
313B30:  ORRNE.W         R0, R0, #2
313B34:  STRHNE          R0, [R4,#0x10]
313B36:  LDRNE           R1, [R5,#0x44]
313B38:  LSLS            R2, R1, #8
313B3A:  ITTT MI
313B3C:  ORRMI.W         R0, R0, #4
313B40:  STRHMI          R0, [R4,#0x10]
313B42:  LDRMI           R1, [R5,#0x44]
313B44:  LSLS            R2, R1, #0xB
313B46:  ITTT MI
313B48:  ORRMI.W         R0, R0, #8
313B4C:  STRHMI          R0, [R4,#0x10]
313B4E:  LDRMI           R1, [R5,#0x44]
313B50:  LSLS            R1, R1, #0xA
313B52:  ITT MI
313B54:  ORRMI.W         R0, R0, #0x10
313B58:  STRHMI          R0, [R4,#0x10]
313B5A:  LDRB.W          R1, [R5,#0x432]
313B5E:  LSLS            R1, R1, #0x1B
313B60:  ITT MI
313B62:  ORRMI.W         R0, R0, #0x20 ; ' '
313B66:  STRHMI          R0, [R4,#0x10]
313B68:  LDR.W           R1, [R5,#0x390]
313B6C:  TST.W           R1, #0x20000
313B70:  ITTT NE
313B72:  ORRNE.W         R0, R0, #0x40 ; '@'
313B76:  STRHNE          R0, [R4,#0x10]
313B78:  LDRNE.W         R1, [R5,#0x390]
313B7C:  LSLS            R1, R1, #0xC
313B7E:  ITT MI
313B80:  ORRMI.W         R0, R0, #0x80
313B84:  STRHMI          R0, [R4,#0x10]
313B86:  LDR.W           R0, [R5,#0x5A0]
313B8A:  CMP             R0, #0
313B8C:  IT NE
313B8E:  CMPNE           R0, #9
313B90:  BNE             loc_313B9E
313B92:  LDRB.W          R0, [R5,#0x4B2]
313B96:  AND.W           R0, R0, #7
313B9A:  STRB.W          R0, [R4,#0x39]
313B9E:  LDRH.W          R0, [R5,#0x43E]
313BA2:  STRH            R0, [R4,#0x14]
313BA4:  LDRH.W          R0, [R5,#0x440]
313BA8:  STRH            R0, [R4,#0x16]
313BAA:  LDRH.W          R0, [R5,#0x442]
313BAE:  STRH            R0, [R4,#0x18]
313BB0:  LDRH.W          R0, [R5,#0x444]
313BB4:  STRH            R0, [R4,#0x1A]
313BB6:  LDRH.W          R0, [R5,#0x446]
313BBA:  STRH            R0, [R4,#0x1C]
313BBC:  LDRH.W          R0, [R5,#0x448]
313BC0:  STRH            R0, [R4,#0x1E]
313BC2:  LDRH.W          R0, [R5,#0x44A]
313BC6:  STRH            R0, [R4,#0x20]
313BC8:  LDRH.W          R0, [R5,#0x44C]
313BCC:  STRH            R0, [R4,#0x22]
313BCE:  LDRH.W          R0, [R5,#0x44E]
313BD2:  STRH            R0, [R4,#0x24]
313BD4:  LDRH.W          R0, [R5,#0x450]
313BD8:  STRH            R0, [R4,#0x26]
313BDA:  LDRH.W          R0, [R5,#0x452]
313BDE:  STRH            R0, [R4,#0x28]
313BE0:  LDRH.W          R0, [R5,#0x454]
313BE4:  STRH            R0, [R4,#0x2A]
313BE6:  LDRH.W          R0, [R5,#0x456]
313BEA:  STRH            R0, [R4,#0x2C]
313BEC:  LDRH.W          R0, [R5,#0x458]
313BF0:  STRH            R0, [R4,#0x2E]
313BF2:  LDRH.W          R0, [R5,#0x45A]
313BF6:  STRH            R0, [R4,#0x30]
313BF8:  MOV             R0, R5; this
313BFA:  BLX             j__ZN8CVehicle13GetRemapIndexEv; CVehicle::GetRemapIndex(void)
313BFE:  STRB.W          R0, [R4,#0x3A]
313C02:  LDRB.W          R0, [R5,#0x48E]
313C06:  STRB.W          R0, [R4,#0x3B]
313C0A:  POP             {R4,R5,R7,PC}
