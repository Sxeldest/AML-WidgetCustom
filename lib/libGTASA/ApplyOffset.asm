; =========================================================
; Game Engine Function: ApplyOffset
; Address            : 0x25CAA0 - 0x25CBBE
; =========================================================

25CAA0:  PUSH            {R4-R7,LR}
25CAA2:  ADD             R7, SP, #0xC
25CAA4:  PUSH.W          {R11}
25CAA8:  MOV             R4, R0
25CAAA:  LDR.W           R5, [R4,#0x90]
25CAAE:  CBZ             R5, loc_25CB06
25CAB0:  MOV             R1, R5
25CAB2:  LDR             R0, [R1]
25CAB4:  CBNZ            R0, loc_25CABE
25CAB6:  LDR             R1, [R1,#4]
25CAB8:  CMP             R1, #0
25CABA:  BNE             loc_25CAB2
25CABC:  B               loc_25CB06
25CABE:  LDR             R1, [R4,#0x78]
25CAC0:  MOVW            R2, #0x1024
25CAC4:  CMP             R1, R2
25CAC6:  BEQ             loc_25CB1A
25CAC8:  MOVW            R2, #0x1025
25CACC:  CMP             R1, R2
25CACE:  BEQ             loc_25CB30
25CAD0:  MOVW            R2, #0x1026
25CAD4:  CMP             R1, R2
25CAD6:  BNE             loc_25CB06
25CAD8:  VLDR            D16, [R4,#0x70]
25CADC:  ADD.W           R6, R4, #0x70 ; 'p'
25CAE0:  MOVW            R3, #0x140C
25CAE4:  VCVT.S32.F64    S0, D16
25CAE8:  LDRD.W          R2, R1, [R0,#0x18]
25CAEC:  CMP             R1, R3
25CAEE:  SUB.W           R2, R2, #0x1500
25CAF2:  VMOV            R0, S0
25CAF6:  BNE             loc_25CB42
25CAF8:  CMP             R2, #6
25CAFA:  BHI             loc_25CB50
25CAFC:  LDR             R1, =(unk_60A660 - 0x25CB02)
25CAFE:  ADD             R1, PC; unk_60A660
25CB00:  LDR.W           R1, [R1,R2,LSL#2]
25CB04:  B               loc_25CB52
25CB06:  MOVS            R0, #0
25CB08:  MOVS            R1, #0
25CB0A:  MOVT            R0, #0xBFF0
25CB0E:  STRD.W          R1, R0, [R4,#0x70]
25CB12:  MOV             R0, R1
25CB14:  POP.W           {R11}
25CB18:  POP             {R4-R7,PC}
25CB1A:  VLDR            S0, [R0,#4]
25CB1E:  ADD.W           R6, R4, #0x70 ; 'p'
25CB22:  VCVT.F64.S32    D16, S0
25CB26:  VLDR            D17, [R4,#0x70]
25CB2A:  VMUL.F64        D16, D17, D16
25CB2E:  B               loc_25CB38
25CB30:  VLDR            D16, [R4,#0x70]
25CB34:  ADD.W           R6, R4, #0x70 ; 'p'
25CB38:  VCVT.S32.F64    S0, D16
25CB3C:  VMOV            R0, S0
25CB40:  B               loc_25CB78
25CB42:  CMP             R2, #6
25CB44:  BHI             loc_25CB5C
25CB46:  LDR             R3, =(unk_60A680 - 0x25CB4C)
25CB48:  ADD             R3, PC; unk_60A680
25CB4A:  LDR.W           R2, [R3,R2,LSL#2]
25CB4E:  B               loc_25CB5E
25CB50:  MOVS            R1, #0
25CB52:  BLX             __aeabi_uidiv
25CB56:  ADD.W           R0, R0, R0,LSL#6
25CB5A:  B               loc_25CB78
25CB5C:  MOVS            R2, #0
25CB5E:  SUB.W           R1, R1, #0x1400
25CB62:  CMP             R1, #0xB
25CB64:  BHI             loc_25CB70
25CB66:  LDR             R3, =(unk_60A6A0 - 0x25CB6C)
25CB68:  ADD             R3, PC; unk_60A6A0
25CB6A:  LDR.W           R1, [R3,R1,LSL#2]
25CB6E:  B               loc_25CB72
25CB70:  MOVS            R1, #0
25CB72:  MULS            R1, R2
25CB74:  BLX             __aeabi_uidiv
25CB78:  MOVS            R2, #0
25CB7A:  MOVS            R1, #0
25CB7C:  MOVT            R2, #0xBFF0
25CB80:  STRD.W          R1, R2, [R6]
25CB84:  ADDS            R2, R0, #1
25CB86:  BEQ             loc_25CB12
25CB88:  MOVS            R1, #0
25CB8A:  MOVS            R2, #0
25CB8C:  LDR             R3, [R5]
25CB8E:  SUBS            R6, R0, R2
25CB90:  CMP             R3, #0
25CB92:  ITE NE
25CB94:  LDRNE           R3, [R3,#0xC]
25CB96:  MOVEQ           R3, #0
25CB98:  CMP             R3, R6
25CB9A:  BLE             loc_25CBA2
25CB9C:  CMP             R0, R2
25CB9E:  BLT             loc_25CBA4
25CBA0:  B               loc_25CBB0
25CBA2:  ADDS            R1, #1
25CBA4:  LDR             R5, [R5,#4]
25CBA6:  ADD             R2, R3
25CBA8:  CMP             R5, #0
25CBAA:  BNE             loc_25CB8C
25CBAC:  MOVS            R1, #0
25CBAE:  B               loc_25CB12
25CBB0:  STR.W           R1, [R4,#0x98]
25CBB4:  MOVS            R0, #0
25CBB6:  MOVS            R1, #1
25CBB8:  STRD.W          R6, R0, [R4,#0x88]
25CBBC:  B               loc_25CB12
