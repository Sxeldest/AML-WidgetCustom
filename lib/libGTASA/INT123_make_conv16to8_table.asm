; =========================================================
; Game Engine Function: INT123_make_conv16to8_table
; Address            : 0x233998 - 0x233B18
; =========================================================

233998:  PUSH            {R4-R7,LR}
23399A:  ADD             R7, SP, #0xC
23399C:  PUSH.W          {R8-R11}
2339A0:  SUB             SP, SP, #4
2339A2:  VPUSH           {D8-D13}
2339A6:  SUB             SP, SP, #8
2339A8:  MOV             R5, R0
2339AA:  MOVW            R0, #0xB2B0
2339AE:  LDR             R6, [R5,R0]
2339B0:  MOVW            R0, #0x4A78
2339B4:  LDR             R1, [R5,R0]
2339B6:  CBNZ            R1, loc_2339D4
2339B8:  ADDS            R4, R5, R0
2339BA:  MOV.W           R0, #0x2000; byte_count
2339BE:  BLX             malloc
2339C2:  CMP             R0, #0
2339C4:  STR             R0, [R4]
2339C6:  BEQ.W           loc_233AEC
2339CA:  MOVW            R1, #0x4A7C
2339CE:  ADD.W           R0, R0, #0x1000
2339D2:  STR             R0, [R5,R1]
2339D4:  MOVW            R4, #0xF000
2339D8:  CMP             R6, #1
2339DA:  MOVT            R4, #0xFFFF
2339DE:  BEQ             loc_233A22
2339E0:  CMP             R6, #0x82
2339E2:  BEQ             loc_233A3C
2339E4:  CMP             R6, #4
2339E6:  BNE             loc_233A52
2339E8:  MOVW            R0, #0x4A7C
2339EC:  ADDS            R6, R5, R0
2339EE:  MOVW            R0, #0xB33C
2339F2:  ADD.W           R9, R5, R0
2339F6:  LDR             R0, =(off_677664 - 0x233A08)
2339F8:  VMOV.F64        D10, #8.0
2339FC:  LDR.W           R8, =(aCProjectsOswra_50 - 0x233A0A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233A00:  MOV             R11, #0xFFFFFF80
233A04:  ADD             R0, PC; off_677664
233A06:  ADD             R8, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233A08:  VMOV.F64        D12, #1.0
233A0C:  LDR.W           R10, [R0]
233A10:  VLDR            D8, =-4096.0
233A14:  VLDR            D9, =255.0
233A18:  VLDR            D11, =0.0000305175781
233A1C:  VLDR            D13, =22.9027838
233A20:  B               loc_233A7C
233A22:  MOVW            R0, #0x4A7C
233A26:  MOVS            R1, #0x80
233A28:  ADD             R0, R5
233A2A:  LDR             R2, [R0]
233A2C:  ADD.W           R3, R1, R4,LSR#5
233A30:  STRB            R3, [R2,R4]
233A32:  ADDS            R4, #1
233A34:  CMP.W           R4, #0x1000
233A38:  BNE             loc_233A2A
233A3A:  B               loc_233ADC
233A3C:  MOVW            R0, #0x4A7C
233A40:  ADD             R0, R5
233A42:  LDR             R1, [R0]
233A44:  LSRS            R2, R4, #5
233A46:  STRB            R2, [R1,R4]
233A48:  ADDS            R4, #1
233A4A:  CMP.W           R4, #0x1000
233A4E:  BNE             loc_233A42
233A50:  B               loc_233ADC
233A52:  MOVW            R0, #0x4A7C
233A56:  ADDS            R1, R5, R0
233A58:  MOVS            R0, #0
233A5A:  LDR             R2, [R1]
233A5C:  STRB            R0, [R2,R4]
233A5E:  ADDS            R4, #1
233A60:  CMP.W           R4, #0x1000
233A64:  BNE             loc_233A5A
233A66:  B               loc_233ADE
233A68:  LDR.W           R0, [R10]; stream
233A6C:  MOV             R1, R8; format
233A6E:  MOVW            R2, #0x10D
233A72:  MOV             R3, R4
233A74:  STR             R5, [SP,#0x58+var_58]
233A76:  BLX             fprintf
233A7A:  B               loc_233AC6
233A7C:  VMUL.F64        D16, D8, D9
233A80:  CMP             R4, #0
233A82:  VMUL.F64        D16, D16, D10
233A86:  VNMUL.F64       D17, D16, D11
233A8A:  VMUL.F64        D16, D16, D11
233A8E:  IT LT
233A90:  VMOVLT.F64      D16, D17
233A94:  VADD.F64        D16, D16, D12
233A98:  VMOV            R0, R1, D16; x
233A9C:  BLX             log
233AA0:  VMOV            D16, R0, R1
233AA4:  AND.W           R1, R11, R4,ASR#31
233AA8:  ADDS            R1, #0xFF
233AAA:  VMUL.F64        D16, D16, D13
233AAE:  VCVT.S32.F64    S0, D16
233AB2:  VMOV            R0, S0
233AB6:  SUBS            R5, R1, R0
233AB8:  CMP.W           R5, #0x100
233ABC:  BCC             loc_233AC6
233ABE:  LDRB.W          R0, [R9]
233AC2:  LSLS            R0, R0, #0x1A
233AC4:  BPL             loc_233A68
233AC6:  VADD.F64        D8, D8, D12
233ACA:  LDR             R0, [R6]
233ACC:  CMP             R5, #0
233ACE:  IT EQ
233AD0:  MOVEQ           R5, #2
233AD2:  STRB            R5, [R0,R4]
233AD4:  ADDS            R4, #1
233AD6:  CMP.W           R4, #0x1000
233ADA:  BNE             loc_233A7C
233ADC:  MOVS            R0, #0
233ADE:  ADD             SP, SP, #8
233AE0:  VPOP            {D8-D13}
233AE4:  ADD             SP, SP, #4
233AE6:  POP.W           {R8-R11}
233AEA:  POP             {R4-R7,PC}
233AEC:  MOVW            R1, #0xB33C
233AF0:  MOVW            R0, #0xB468
233AF4:  LDRB            R1, [R5,R1]
233AF6:  MOVS            R2, #4
233AF8:  STR             R2, [R5,R0]
233AFA:  LSLS            R0, R1, #0x1A
233AFC:  BPL             loc_233B04
233AFE:  MOV.W           R0, #0xFFFFFFFF
233B02:  B               loc_233ADE
233B04:  LDR             R0, =(off_677664 - 0x233B0E)
233B06:  MOVS            R2, #0xFD
233B08:  LDR             R1, =(aCProjectsOswra_51 - 0x233B10); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233B0A:  ADD             R0, PC; off_677664
233B0C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
233B0E:  LDR             R0, [R0]
233B10:  LDR             R0, [R0]; stream
233B12:  BLX             fprintf
233B16:  B               loc_233AFE
