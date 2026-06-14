; =========================================================
; Game Engine Function: _ZN13CAEMP3Decoder10InitialiseEv
; Address            : 0x27EF48 - 0x27F028
; =========================================================

27EF48:  PUSH            {R4,R5,R7,LR}
27EF4A:  ADD             R7, SP, #8
27EF4C:  SUB             SP, SP, #8
27EF4E:  MOV             R4, R0
27EF50:  MOVS            R5, #0
27EF52:  LDR             R0, [R4,#0xC]
27EF54:  CBZ             R0, loc_27EFB6
27EF56:  MOVS            R0, #0
27EF58:  MOVS            R1, #0
27EF5A:  BLX             j_mpg123_new
27EF5E:  MOVS            R1, #2; int
27EF60:  MOVS            R2, #0x20 ; ' '; int
27EF62:  STR             R0, [R4,#0x28]
27EF64:  STRD.W          R5, R5, [SP,#0x10+var_10]; double
27EF68:  BLX             j_mpg123_param
27EF6C:  LDR             R0, [R4,#0x28]
27EF6E:  BLX             j_mpg123_format_all
27EF72:  LDR             R0, [R4,#0x28]
27EF74:  BLX             j_mpg123_open_feed
27EF78:  CBNZ            R0, loc_27EFB6
27EF7A:  LDR             R0, [R4,#0xC]; this
27EF7C:  MOV.W           R2, #0x1400; n
27EF80:  LDR             R1, [R4,#0x58]; ptr
27EF82:  BLX             j__ZN13CAEDataStream10FillBufferEPvj; CAEDataStream::FillBuffer(void *,uint)
27EF86:  MOV             R2, R0
27EF88:  CMP             R2, #0
27EF8A:  ITTT NE
27EF8C:  LDRNE           R0, [R4,#0x28]
27EF8E:  LDRNE           R1, [R4,#0x58]
27EF90:  BLXNE           j_mpg123_feed
27EF94:  LDR             R0, [R4,#0x28]
27EF96:  ADD.W           R1, R4, #0x10
27EF9A:  ADD.W           R2, R4, #0x14
27EF9E:  ADD.W           R3, R4, #0x18
27EFA2:  BLX             j_mpg123_getformat
27EFA6:  CBNZ            R0, loc_27EFB4
27EFA8:  LDR             R0, [R4,#0x28]
27EFAA:  ADD.W           R1, R4, #0x2C ; ','
27EFAE:  BLX             j_mpg123_info
27EFB2:  CBZ             R0, loc_27EFBC
27EFB4:  MOVS            R5, #0
27EFB6:  MOV             R0, R5
27EFB8:  ADD             SP, SP, #8
27EFBA:  POP             {R4,R5,R7,PC}
27EFBC:  LDR             R0, [R4,#0x34]
27EFBE:  MOVW            R1, #0xAC44
27EFC2:  CMP             R0, R1
27EFC4:  ITT EQ
27EFC6:  LDREQ           R0, [R4,#0x4C]
27EFC8:  CMPEQ           R0, #0x20 ; ' '
27EFCA:  BEQ             loc_27EFB4
27EFCC:  LDR             R1, [R4,#0xC]
27EFCE:  LDR             R0, [R4,#0x28]
27EFD0:  LDR             R1, [R1,#0x18]
27EFD2:  BLX             j_mpg123_set_filesize
27EFD6:  LDR             R0, [R4,#0x28]
27EFD8:  BLX             j_mpg123_length
27EFDC:  VLDR            S0, [R4,#0x34]
27EFE0:  VMOV            S2, R0
27EFE4:  VCVT.F64.S32    D16, S2
27EFE8:  VCVT.F64.S32    D17, S0
27EFEC:  VDIV.F64        D16, D16, D17
27EFF0:  VLDR            D17, =1000.0
27EFF4:  VMUL.F64        D16, D16, D17
27EFF8:  VLDR            D17, =-500.0
27EFFC:  VADD.F64        D16, D16, D17
27F000:  VLDR            D17, =200.0
27F004:  VCMPE.F64       D16, D17
27F008:  VMRS            APSR_nzcv, FPSCR
27F00C:  IT LE
27F00E:  VMOVLE.F64      D16, D17
27F012:  VCVT.S32.F64    S0, D16
27F016:  LDR             R0, [R4,#0x28]
27F018:  VSTR            S0, [R4,#0x1C]
27F01C:  BLX             j_mpg123_outblock
27F020:  MOVS            R5, #1
27F022:  STR             R0, [R4,#0x24]
27F024:  STRB            R5, [R4,#8]
27F026:  B               loc_27EFB6
