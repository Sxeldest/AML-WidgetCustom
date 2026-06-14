; =========================================================
; Game Engine Function: sub_206B84
; Address            : 0x206B84 - 0x206D3A
; =========================================================

206B84:  PUSH            {R4-R7,LR}
206B86:  ADD             R7, SP, #0xC
206B88:  PUSH.W          {R8-R11}
206B8C:  SUB             SP, SP, #0x54
206B8E:  MOV             R4, R0
206B90:  LDR             R0, =(__stack_chk_guard_ptr - 0x206B9C)
206B92:  MOVW            R8, #0x4154
206B96:  MOV             R10, R2
206B98:  ADD             R0, PC; __stack_chk_guard_ptr
206B9A:  MOV             R5, R1
206B9C:  MOVT            R8, #0x4944
206BA0:  LDR             R0, [R0]; __stack_chk_guard
206BA2:  LDR             R0, [R0]
206BA4:  STR             R0, [SP,#0x70+var_20]
206BA6:  LDR.W           R0, [R4,#0x140]
206BAA:  CBZ             R0, loc_206C10
206BAC:  MOVW            R1, #0x203A
206BB0:  STRB.W          R5, [SP,#0x70+var_5D]
206BB4:  STRH.W          R1, [SP,#0x70+var_5C]
206BB8:  LSRS            R1, R5, #0x10
206BBA:  STRB.W          R0, [SP,#0x70+var_57]
206BBE:  ADD             R6, SP, #0x70+var_60
206BC0:  STRB.W          R1, [SP,#0x70+var_5F]
206BC4:  LSRS            R1, R5, #0x18
206BC6:  STRB.W          R1, [SP,#0x70+var_60]
206BCA:  LSRS            R1, R5, #8
206BCC:  STRB.W          R1, [SP,#0x70+var_5E]
206BD0:  LSRS            R1, R0, #0x18
206BD2:  STRB.W          R1, [SP,#0x70+var_5A]
206BD6:  LSRS            R1, R0, #0x10
206BD8:  LSRS            R0, R0, #8
206BDA:  ADR             R3, aUsingZstream_0; " using zstream"
206BDC:  STRB.W          R1, [SP,#0x70+var_59]
206BE0:  MOVS            R1, #0x40 ; '@'
206BE2:  STRB.W          R0, [SP,#0x70+var_58]
206BE6:  MOV             R0, R6
206BE8:  MOVS            R2, #0xA
206BEA:  BLX             j_png_safecat
206BEE:  MOV             R0, R4
206BF0:  MOV             R1, R6
206BF2:  BLX             j_png_warning
206BF6:  LDR.W           R0, [R4,#0x140]
206BFA:  CMP             R0, R8
206BFC:  BNE             loc_206C0A
206BFE:  ADR             R0, aInUseByIdat; "in use by IDAT"
206C00:  STR.W           R0, [R4,#0x15C]
206C04:  MOV             R6, #0xFFFFFFFE
206C08:  B               loc_206D14
206C0A:  MOVS            R0, #0
206C0C:  STR.W           R0, [R4,#0x140]
206C10:  CMP             R5, R8
206C12:  BNE             loc_206C3C
206C14:  LDRD.W          R9, R8, [R4,#0x184]
206C18:  LDRD.W          R6, R3, [R4,#0x18C]
206C1C:  LDRB.W          R0, [R4,#0x138]
206C20:  LSLS            R0, R0, #0x1F
206C22:  BNE             loc_206C50
206C24:  LDRB.W          R0, [R4,#0x20E]
206C28:  MOV.W           R11, #0
206C2C:  CMP             R0, #8
206C2E:  IT NE
206C30:  MOVNE.W         R11, #1
206C34:  CMP.W           R10, #0x4000
206C38:  BLS             loc_206C5A
206C3A:  B               loc_206C74
206C3C:  LDRD.W          R9, R8, [R4,#0x198]
206C40:  LDRD.W          R6, R3, [R4,#0x1A0]
206C44:  LDR.W           R11, [R4,#0x1A8]
206C48:  CMP.W           R10, #0x4000
206C4C:  BLS             loc_206C5A
206C4E:  B               loc_206C74
206C50:  LDR.W           R11, [R4,#0x194]
206C54:  CMP.W           R10, #0x4000
206C58:  BHI             loc_206C74
206C5A:  SUBS            R0, R6, #1
206C5C:  MOVS            R1, #1
206C5E:  LSLS            R1, R0
206C60:  ADD.W           R0, R10, #0x106
206C64:  CMP             R0, R1
206C66:  BHI             loc_206C74
206C68:  SUBS            R6, #1
206C6A:  LSRS            R2, R1, #1
206C6C:  CMP.W           R0, R1,LSR#1
206C70:  MOV             R1, R2
206C72:  BLS             loc_206C68
206C74:  LDR.W           R1, [R4,#0x138]
206C78:  TST.W           R1, #2
206C7C:  BEQ             loc_206CC2
206C7E:  LDR.W           R0, [R4,#0x1AC]
206C82:  CMP             R0, R9
206C84:  ITT EQ
206C86:  LDREQ.W         R0, [R4,#0x1B0]
206C8A:  CMPEQ           R0, R8
206C8C:  BNE             loc_206C9E
206C8E:  LDR.W           R0, [R4,#0x1B4]
206C92:  CMP             R0, R6
206C94:  ITT EQ
206C96:  LDREQ.W         R0, [R4,#0x1B8]
206C9A:  CMPEQ           R0, R3
206C9C:  BEQ             loc_206D30
206C9E:  ADD.W           R0, R4, #0x144
206CA2:  MOV             R10, R3
206CA4:  BLX             j_deflateEnd
206CA8:  CMP             R0, #0
206CAA:  ITTT NE
206CAC:  ADRNE           R1, aDeflateendFail; "deflateEnd failed (ignored)"
206CAE:  MOVNE           R0, R4
206CB0:  BLXNE           j_png_warning
206CB4:  LDR.W           R0, [R4,#0x138]
206CB8:  MOV             R3, R10
206CBA:  BIC.W           R1, R0, #2
206CBE:  STR.W           R1, [R4,#0x138]
206CC2:  MOVS            R0, #0
206CC4:  LSLS            R1, R1, #0x1E
206CC6:  STRD.W          R0, R0, [R4,#0x150]
206CCA:  STRD.W          R0, R0, [R4,#0x144]
206CCE:  ADD.W           R0, R4, #0x144
206CD2:  BMI             loc_206CFC
206CD4:  MOVS            R1, #0x38 ; '8'
206CD6:  ADR             R2, a113_0; "1.1.3"
206CD8:  STRD.W          R3, R11, [SP,#0x70+var_70]
206CDC:  MOV             R3, R6
206CDE:  STRD.W          R2, R1, [SP,#0x70+var_68]
206CE2:  MOV             R1, R9
206CE4:  MOV             R2, R8
206CE6:  BLX             j_deflateInit2_
206CEA:  MOV             R6, R0
206CEC:  CBNZ            R6, loc_206D04
206CEE:  LDR.W           R0, [R4,#0x138]
206CF2:  ORR.W           R0, R0, #2
206CF6:  STR.W           R0, [R4,#0x138]
206CFA:  B               loc_206D0E
206CFC:  BLX             j_deflateReset
206D00:  MOV             R6, R0
206D02:  CBZ             R6, loc_206D0E
206D04:  MOV             R0, R4
206D06:  MOV             R1, R6
206D08:  BLX             j_png_zstream_error
206D0C:  B               loc_206D14
206D0E:  STR.W           R5, [R4,#0x140]
206D12:  MOVS            R6, #0
206D14:  LDR             R0, =(__stack_chk_guard_ptr - 0x206D1C)
206D16:  LDR             R1, [SP,#0x70+var_20]
206D18:  ADD             R0, PC; __stack_chk_guard_ptr
206D1A:  LDR             R0, [R0]; __stack_chk_guard
206D1C:  LDR             R0, [R0]
206D1E:  SUBS            R0, R0, R1
206D20:  ITTTT EQ
206D22:  MOVEQ           R0, R6
206D24:  ADDEQ           SP, SP, #0x54 ; 'T'
206D26:  POPEQ.W         {R8-R11}
206D2A:  POPEQ           {R4-R7,PC}
206D2C:  BLX             __stack_chk_fail
206D30:  LDR.W           R0, [R4,#0x1BC]
206D34:  CMP             R0, R11
206D36:  BNE             loc_206C9E
206D38:  B               loc_206CC2
