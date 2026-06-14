; =========================================================
; Game Engine Function: sub_20BDEC
; Address            : 0x20BDEC - 0x20C01E
; =========================================================

20BDEC:  PUSH            {R4-R7,LR}
20BDEE:  ADD             R7, SP, #0xC
20BDF0:  PUSH.W          {R8-R11}
20BDF4:  SUB             SP, SP, #4
20BDF6:  VPUSH           {D8-D9}
20BDFA:  SUB             SP, SP, #8
20BDFC:  MOV             R4, R0
20BDFE:  LDR             R5, [R4,#0x24]
20BE00:  LDR             R0, [R4,#0x6C]
20BE02:  AND.W           R9, R5, #7
20BE06:  SUB.W           R11, R5, #0x106
20BE0A:  VDUP.32         Q4, R5
20BE0E:  SUB.W           R1, R5, R9
20BE12:  STR             R1, [SP,#0x38+var_34]
20BE14:  SUB.W           R1, R5, #8
20BE18:  STR             R1, [SP,#0x38+var_38]
20BE1A:  LDR             R1, [R4,#0x64]
20BE1C:  MOV             R6, R5
20BE1E:  LDR             R2, [R4,#0x34]
20BE20:  ORR.W           R3, R1, R0
20BE24:  SUBS            R0, R2, R0
20BE26:  SUB.W           R8, R0, R1
20BE2A:  ORRS.W          R0, R3, R8
20BE2E:  BEQ.W           loc_20BF76
20BE32:  ADDS.W          R0, R8, #1
20BE36:  BEQ             loc_20BEF2
20BE38:  LDR             R0, [R4,#0x24]
20BE3A:  MOV             R6, R8
20BE3C:  ADD             R0, R11
20BE3E:  CMP             R1, R0
20BE40:  BCC.W           loc_20BF76
20BE44:  LDR             R0, [R4,#0x30]; void *
20BE46:  MOV             R2, R5; size_t
20BE48:  ADDS            R1, R0, R5; void *
20BE4A:  BLX             memcpy_1
20BE4E:  LDRD.W          R1, R2, [R4,#0x64]
20BE52:  LDR             R0, [R4,#0x44]
20BE54:  SUBS            R2, R2, R5
20BE56:  LDR             R6, [R4,#0x3C]
20BE58:  SUBS            R1, R1, R5
20BE5A:  LDR             R3, [R4,#0x54]
20BE5C:  CMP             R0, #8
20BE5E:  STRD.W          R1, R2, [R4,#0x64]
20BE62:  SUB.W           R1, R3, R5
20BE66:  ADD.W           R3, R6, R0,LSL#1
20BE6A:  STR             R1, [R4,#0x54]
20BE6C:  BCC             loc_20BED2
20BE6E:  AND.W           R1, R0, #7
20BE72:  SUBS            R2, R0, R1
20BE74:  BEQ             loc_20BED2
20BE76:  ADD.W           R12, R6, R1,LSL#1
20BE7A:  SUB.W           R6, R3, #0x10
20BE7E:  MOV             R0, R1
20BE80:  VLD1.16         {D16-D17}, [R6]
20BE84:  SUBS            R2, #8
20BE86:  VREV64.16       Q8, Q8
20BE8A:  VEXT.8          Q8, Q8, Q8, #8
20BE8E:  VMOVL.U16       Q9, D17
20BE92:  VMOVL.U16       Q8, D16
20BE96:  VSUB.I32        Q10, Q9, Q4
20BE9A:  VCGT.U32        Q9, Q4, Q9
20BE9E:  VSUB.I32        Q11, Q8, Q4
20BEA2:  VCGT.U32        Q8, Q4, Q8
20BEA6:  VMOVN.I32       D21, Q10
20BEAA:  VMOVN.I32       D19, Q9
20BEAE:  VMOVN.I32       D20, Q11
20BEB2:  VMOVN.I32       D18, Q8
20BEB6:  VBIC            Q8, Q10, Q9
20BEBA:  VREV64.16       Q8, Q8
20BEBE:  VEXT.8          Q8, Q8, Q8, #8
20BEC2:  VST1.16         {D16-D17}, [R6]
20BEC6:  SUB.W           R6, R6, #0x10
20BECA:  BNE             loc_20BE80
20BECC:  CMP             R1, #0
20BECE:  MOV             R3, R12
20BED0:  BEQ             loc_20BEE4
20BED2:  SUBS            R1, R3, #2
20BED4:  LDRH            R2, [R1]
20BED6:  SUBS            R2, R2, R5
20BED8:  IT CC
20BEDA:  MOVCC           R2, #0
20BEDC:  SUBS            R0, #1
20BEDE:  STRH.W          R2, [R1],#-2
20BEE2:  BNE             loc_20BED4
20BEE4:  LDR             R2, [R4,#0x38]
20BEE6:  CMP             R5, #8
20BEE8:  ADD.W           R0, R2, R5,LSL#1
20BEEC:  BCS             loc_20BEF8
20BEEE:  MOV             R1, R5
20BEF0:  B               loc_20BF60
20BEF2:  MOV             R6, #0xFFFFFFFE
20BEF6:  B               loc_20BF76
20BEF8:  LDR             R1, [SP,#0x38+var_34]
20BEFA:  CMP             R1, #0
20BEFC:  MOV             R1, R5
20BEFE:  BEQ             loc_20BF60
20BF00:  LDR             R1, [SP,#0x38+var_38]
20BF02:  ADD.W           R0, R2, R9,LSL#1
20BF06:  ADD.W           R1, R2, R1,LSL#1
20BF0A:  LDR             R2, [SP,#0x38+var_34]
20BF0C:  VLD1.16         {D16-D17}, [R1]
20BF10:  SUBS            R2, #8
20BF12:  VREV64.16       Q8, Q8
20BF16:  VEXT.8          Q8, Q8, Q8, #8
20BF1A:  VMOVL.U16       Q9, D17
20BF1E:  VMOVL.U16       Q8, D16
20BF22:  VSUB.I32        Q10, Q9, Q4
20BF26:  VCGT.U32        Q9, Q4, Q9
20BF2A:  VSUB.I32        Q11, Q8, Q4
20BF2E:  VCGT.U32        Q8, Q4, Q8
20BF32:  VMOVN.I32       D21, Q10
20BF36:  VMOVN.I32       D19, Q9
20BF3A:  VMOVN.I32       D20, Q11
20BF3E:  VMOVN.I32       D18, Q8
20BF42:  VBIC            Q8, Q10, Q9
20BF46:  VREV64.16       Q8, Q8
20BF4A:  VEXT.8          Q8, Q8, Q8, #8
20BF4E:  VST1.16         {D16-D17}, [R1]
20BF52:  SUB.W           R1, R1, #0x10
20BF56:  BNE             loc_20BF0C
20BF58:  CMP.W           R9, #0
20BF5C:  MOV             R1, R9
20BF5E:  BEQ             loc_20BF72
20BF60:  SUBS            R0, #2
20BF62:  LDRH            R2, [R0]
20BF64:  SUBS            R2, R2, R5
20BF66:  IT CC
20BF68:  MOVCC           R2, #0
20BF6A:  SUBS            R1, #1
20BF6C:  STRH.W          R2, [R0],#-2
20BF70:  BNE             loc_20BF62
20BF72:  ADD.W           R6, R8, R5
20BF76:  LDR.W           R10, [R4]
20BF7A:  LDR.W           R1, [R10,#4]
20BF7E:  CMP             R1, #0
20BF80:  BEQ             loc_20C010
20BF82:  LDR             R0, [R4,#0x6C]
20BF84:  CMP             R1, R6
20BF86:  IT LS
20BF88:  MOVLS           R6, R1
20BF8A:  CMP             R6, #0
20BF8C:  BEQ             loc_20BFDC
20BF8E:  LDR             R2, [R4,#0x30]
20BF90:  SUBS            R1, R1, R6
20BF92:  LDR             R3, [R4,#0x64]
20BF94:  ADD             R2, R3
20BF96:  ADD.W           R8, R2, R0
20BF9A:  LDR.W           R0, [R10,#0x1C]
20BF9E:  STR.W           R1, [R10,#4]
20BFA2:  LDR             R0, [R0,#0x18]
20BFA4:  CBNZ            R0, loc_20BFB8
20BFA6:  LDR.W           R1, [R10]
20BFAA:  MOV             R2, R6
20BFAC:  LDR.W           R0, [R10,#0x30]
20BFB0:  BLX             j_adler32
20BFB4:  STR.W           R0, [R10,#0x30]
20BFB8:  LDR.W           R1, [R10]; void *
20BFBC:  MOV             R0, R8; void *
20BFBE:  MOV             R2, R6; size_t
20BFC0:  BLX             memcpy_1
20BFC4:  LDR.W           R0, [R10]
20BFC8:  LDR.W           R1, [R10,#8]
20BFCC:  ADD             R0, R6
20BFCE:  STR.W           R0, [R10]
20BFD2:  ADDS            R0, R1, R6
20BFD4:  STR.W           R0, [R10,#8]
20BFD8:  LDR             R0, [R4,#0x6C]
20BFDA:  B               loc_20BFDE
20BFDC:  MOVS            R6, #0
20BFDE:  ADD             R0, R6
20BFE0:  STR             R0, [R4,#0x6C]
20BFE2:  CMP             R0, #3
20BFE4:  BCC             loc_20C006
20BFE6:  LDR             R1, [R4,#0x30]
20BFE8:  LDRD.W          R12, R3, [R4,#0x4C]
20BFEC:  LDR             R6, [R4,#0x64]
20BFEE:  LDRB            R2, [R1,R6]
20BFF0:  ADD             R1, R6
20BFF2:  STR             R2, [R4,#0x40]
20BFF4:  LDRB            R1, [R1,#1]
20BFF6:  LSLS            R2, R3
20BFF8:  EORS            R1, R2
20BFFA:  AND.W           R1, R1, R12
20BFFE:  STR             R1, [R4,#0x40]
20C000:  LSRS            R1, R0, #1
20C002:  CMP             R1, #0x82
20C004:  BHI             loc_20C010
20C006:  LDR             R1, [R4]
20C008:  LDR             R1, [R1,#4]
20C00A:  CMP             R1, #0
20C00C:  BNE.W           loc_20BE1A
20C010:  ADD             SP, SP, #8
20C012:  VPOP            {D8-D9}
20C016:  ADD             SP, SP, #4
20C018:  POP.W           {R8-R11}
20C01C:  POP             {R4-R7,PC}
