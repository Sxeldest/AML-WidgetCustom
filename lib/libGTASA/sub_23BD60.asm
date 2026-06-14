; =========================================================
; Game Engine Function: sub_23BD60
; Address            : 0x23BD60 - 0x23BEF2
; =========================================================

23BD60:  PUSH            {R4-R7,LR}
23BD62:  ADD             R7, SP, #0xC
23BD64:  PUSH.W          {R8-R10}
23BD68:  MOV             R4, R0
23BD6A:  MOVW            R0, #0xB2F4
23BD6E:  LDRB            R0, [R4,R0]
23BD70:  MOV             R5, R1
23BD72:  LSLS            R0, R0, #0x1D
23BD74:  BMI             loc_23BD8A
23BD76:  MOVW            R0, #0x9314
23BD7A:  LDR             R0, [R4,R0]
23BD7C:  CMP             R0, R5
23BD7E:  BLE             loc_23BD8A
23BD80:  MOVW            R0, #0xB468
23BD84:  MOVS            R1, #0x17
23BD86:  STR             R1, [R4,R0]
23BD88:  B               loc_23BEE8
23BD8A:  MOVW            R0, #0xB33D
23BD8E:  LDRB            R0, [R4,R0]
23BD90:  LSLS            R0, R0, #0x1E
23BD92:  BMI             loc_23BDAE
23BD94:  MOVW            R0, #0xB294
23BD98:  MOV.W           R9, #0
23BD9C:  STR.W           R9, [R4,R0]
23BDA0:  MOVW            R0, #0xB298
23BDA4:  MOV.W           R8, #0
23BDA8:  STR.W           R9, [R4,R0]
23BDAC:  B               loc_23BE94
23BDAE:  MOVW            R0, #0x9324
23BDB2:  MOVW            R1, #0x931C
23BDB6:  LDR             R0, [R4,R0]
23BDB8:  LDR.W           R8, [R4,R1]
23BDBC:  CMP             R0, #0
23BDBE:  BEQ             loc_23BE4E
23BDC0:  MOVW            R1, #0x9368
23BDC4:  LDR             R2, [R4,R1]
23BDC6:  CMP             R2, #1
23BDC8:  ITTT GE
23BDCA:  MOVWGE          R1, #0xB2E4
23BDCE:  LDRGE           R1, [R4,R1]
23BDD0:  CMPGE           R1, #1
23BDD2:  BLT             loc_23BE4E
23BDD4:  VMOV            S0, R5
23BDD8:  VLDR            D17, =100.0
23BDDC:  MOV.W           R3, #0x100
23BDE0:  VLDR            D20, =0.00390625
23BDE4:  VCVT.F64.S32    D16, S0
23BDE8:  VMUL.F64        D16, D16, D17
23BDEC:  VMOV            S0, R2
23BDF0:  MOVW            R2, #0x9320
23BDF4:  VCVT.F64.S32    D18, S0
23BDF8:  VDIV.F64        D16, D16, D18
23BDFC:  VCVT.S32.F64    S0, D16
23BE00:  STRH            R3, [R4,R2]
23BE02:  VMOV            R2, S0
23BE06:  CMP             R2, #0
23BE08:  IT LE
23BE0A:  MOVLE           R2, #0
23BE0C:  CMP             R2, #0x63 ; 'c'
23BE0E:  IT GE
23BE10:  MOVGE           R2, #0x63 ; 'c'
23BE12:  VMOV            S0, R2
23BE16:  LDRB            R0, [R0,R2]
23BE18:  VCVT.F64.S32    D16, S0
23BE1C:  VDIV.F64        D16, D16, D17
23BE20:  VMOV            S0, R0
23BE24:  VMUL.F64        D16, D16, D18
23BE28:  VCVT.F64.U32    D19, S0
23BE2C:  VMUL.F64        D17, D19, D20
23BE30:  VMOV            S0, R1
23BE34:  VCVT.F64.S32    D19, S0
23BE38:  VMUL.F64        D17, D17, D19
23BE3C:  VCVT.S32.F64    S0, D17
23BE40:  VCVT.S32.F64    S2, D16
23BE44:  VMOV            R8, S0
23BE48:  VMOV            R9, S2
23BE4C:  B               loc_23BE94
23BE4E:  MOVW            R0, #0x9370
23BE52:  ADD             R0, R4
23BE54:  VLDR            D16, [R0]
23BE58:  VCMPE.F64       D16, #0.0
23BE5C:  VMRS            APSR_nzcv, FPSCR
23BE60:  BLE             loc_23BE90
23BE62:  VMOV            S0, R5
23BE66:  MOVW            R0, #0x9320
23BE6A:  MOV.W           R1, #0x100
23BE6E:  MOV             R9, R5
23BE70:  VCVT.F64.S32    D17, S0
23BE74:  VMUL.F64        D16, D16, D17
23BE78:  VMOV            S0, R8
23BE7C:  VCVT.F64.S32    D17, S0
23BE80:  VADD.F64        D16, D16, D17
23BE84:  VCVT.S32.F64    S0, D16
23BE88:  STRH            R1, [R4,R0]
23BE8A:  VMOV            R8, S0
23BE8E:  B               loc_23BE94
23BE90:  MOV.W           R9, #0
23BE94:  MOVW            R1, #0x9314
23BE98:  ADDS            R6, R4, R1
23BE9A:  LDR             R0, [R4,R1]
23BE9C:  CMP             R0, R5
23BE9E:  BGE             loc_23BEA4
23BEA0:  CMP             R0, R9
23BEA2:  BGE             loc_23BED2
23BEA4:  MOVW            R10, #0xB2E0
23BEA8:  LDR.W           R0, [R4,R10]
23BEAC:  LDR             R1, [R0,#0x24]
23BEAE:  MOV             R0, R4
23BEB0:  BLX             R1
23BEB2:  LDR.W           R1, [R4,R10]
23BEB6:  LDR             R2, [R1,#0x14]
23BEB8:  SUB.W           R1, R8, R0
23BEBC:  MOV             R0, R4
23BEBE:  BLX             R2
23BEC0:  CMP             R0, R8
23BEC2:  BNE             loc_23BEE8
23BEC4:  SUB.W           R0, R9, #1
23BEC8:  STR             R0, [R6]
23BECA:  CMP             R0, R5
23BECC:  BLT             loc_23BED6
23BECE:  B               loc_23BEE0
23BED0:  LDR             R0, [R6]
23BED2:  CMP             R0, R5
23BED4:  BGE             loc_23BEE0
23BED6:  MOV             R0, R4
23BED8:  BLX             j_INT123_read_frame
23BEDC:  CMP             R0, #0
23BEDE:  BNE             loc_23BED0
23BEE0:  MOVS            R0, #0
23BEE2:  POP.W           {R8-R10}
23BEE6:  POP             {R4-R7,PC}
23BEE8:  MOV.W           R0, #0xFFFFFFFF
23BEEC:  POP.W           {R8-R10}
23BEF0:  POP             {R4-R7,PC}
