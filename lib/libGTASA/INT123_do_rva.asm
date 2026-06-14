; =========================================================
; Game Engine Function: INT123_do_rva
; Address            : 0x226B04 - 0x226C32
; =========================================================

226B04:  PUSH            {R4,R6,R7,LR}
226B06:  ADD             R7, SP, #8
226B08:  VPUSH           {D8-D10}
226B0C:  SUB             SP, SP, #0x10
226B0E:  MOV             R4, R0
226B10:  MOVW            R0, #0xB348
226B14:  LDR             R0, [R4,R0]
226B16:  VMOV.F64        D8, #1.0
226B1A:  CMP             R0, #0
226B1C:  VMOV.F64        D9, #-1.0
226B20:  BEQ             loc_226B38
226B22:  CMP             R0, #2
226B24:  BNE             loc_226B3E
226B26:  MOVW            R0, #0x9354
226B2A:  LDR             R0, [R4,R0]
226B2C:  ADDS            R0, #1
226B2E:  MOV.W           R0, #0
226B32:  IT NE
226B34:  MOVNE           R0, #1
226B36:  B               loc_226B40
226B38:  VMOV.F64        D16, D8
226B3C:  B               loc_226B9E
226B3E:  MOVS            R0, #0
226B40:  ADD.W           R0, R4, R0,LSL#2
226B44:  MOVW            R1, #0x9350
226B48:  VMOV.F64        D16, D8
226B4C:  LDR             R1, [R0,R1]
226B4E:  ADDS            R1, #1
226B50:  BEQ             loc_226B9E
226B52:  MOVW            R1, #0x9360
226B56:  MOVW            R2, #0x9358
226B5A:  ADD             R1, R0
226B5C:  ADD             R0, R2
226B5E:  VLDR            S0, [R0]
226B62:  MOVW            R0, #0xB33C
226B66:  LDRB            R0, [R4,R0]
226B68:  VCVT.F64.F32    D10, S0
226B6C:  LSLS            R0, R0, #0x1A
226B6E:  VLDR            S18, [R1]
226B72:  BMI             loc_226B7E
226B74:  MOVW            R0, #0xB338
226B78:  LDR             R0, [R4,R0]
226B7A:  CMP             R0, #2
226B7C:  BGE             loc_226C1E
226B7E:  VMOV.F64        D16, #20.0
226B82:  VDIV.F64        D16, D10, D16
226B86:  VMOV.F64        D17, #10.0
226B8A:  VMOV            R0, R1, D17; x
226B8E:  VMOV            R2, R3, D16; y
226B92:  VCVT.F64.F32    D9, S18
226B96:  BLX             pow
226B9A:  VMOV            D16, R0, R1
226B9E:  MOVW            R0, #0xB450
226BA2:  ADD             R0, R4
226BA4:  VLDR            D17, [R0]
226BA8:  VMUL.F64        D10, D16, D17
226BAC:  VMUL.F64        D16, D9, D10
226BB0:  VCMPE.F64       D16, D8
226BB4:  VMRS            APSR_nzcv, FPSCR
226BB8:  BGT             loc_226BF8
226BBA:  MOVW            R0, #0x9348
226BBE:  ADD             R0, R4
226BC0:  VLDR            D16, [R0]
226BC4:  VCMP.F64        D10, D16
226BC8:  VMRS            APSR_nzcv, FPSCR
226BCC:  BNE             loc_226BD6
226BCE:  MOVW            R1, #0xB46C
226BD2:  LDR             R1, [R4,R1]
226BD4:  CBZ             R1, loc_226BF0
226BD6:  VSTR            D10, [R0]
226BDA:  MOVW            R0, #0x92B0
226BDE:  LDR             R1, [R4,R0]
226BE0:  CBZ             R1, loc_226BF0
226BE2:  MOV             R0, R4
226BE4:  ADD             SP, SP, #0x10
226BE6:  VPOP            {D8-D10}
226BEA:  POP.W           {R4,R6,R7,LR}
226BEE:  BX              R1
226BF0:  ADD             SP, SP, #0x10
226BF2:  VPOP            {D8-D10}
226BF6:  POP             {R4,R6,R7,PC}
226BF8:  VMOV.F64        D16, #1.0
226BFC:  LDR             R0, =(off_677664 - 0x226C08)
226BFE:  LDR             R1, =(aCProjectsOswra_7 - 0x226C0A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
226C00:  MOVW            R2, #0x3C7
226C04:  ADD             R0, PC; off_677664
226C06:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
226C08:  VDIV.F64        D10, D16, D9
226C0C:  LDR             R0, [R0]
226C0E:  LDR             R0, [R0]; stream
226C10:  VSTR            D10, [SP,#0x30+var_30]
226C14:  VSTR            D9, [SP,#0x30+var_28]
226C18:  BLX             fprintf
226C1C:  B               loc_226BBA
226C1E:  VMOV            R2, R3, D10
226C22:  LDR             R0, =(off_677664 - 0x226C2A)
226C24:  ADR             R1, aNoteDoingRvaWi; "Note: doing RVA with gain %f\n"
226C26:  ADD             R0, PC; off_677664
226C28:  LDR             R0, [R0]
226C2A:  LDR             R0, [R0]; stream
226C2C:  BLX             fprintf
226C30:  B               loc_226B7E
