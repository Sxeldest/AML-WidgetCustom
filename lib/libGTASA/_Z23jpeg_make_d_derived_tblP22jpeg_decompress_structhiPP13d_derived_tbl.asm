; =========================================================
; Game Engine Function: _Z23jpeg_make_d_derived_tblP22jpeg_decompress_structhiPP13d_derived_tbl
; Address            : 0x47C9C0 - 0x47CD4C
; =========================================================

47C9C0:  PUSH            {R4-R7,LR}
47C9C2:  ADD             R7, SP, #0xC
47C9C4:  PUSH.W          {R8-R11}
47C9C8:  SUB.W           SP, SP, #0x558
47C9CC:  SUB             SP, SP, #4
47C9CE:  MOV             R10, R0
47C9D0:  LDR             R0, =(__stack_chk_guard_ptr - 0x47C9DA)
47C9D2:  STR             R1, [SP,#0x578+var_570]
47C9D4:  MOV             R6, R2
47C9D6:  ADD             R0, PC; __stack_chk_guard_ptr
47C9D8:  MOV             R5, R3
47C9DA:  CMP             R6, #4
47C9DC:  LDR             R0, [R0]; __stack_chk_guard
47C9DE:  LDR             R0, [R0]
47C9E0:  STR.W           R0, [R7,#var_20]
47C9E4:  BCC             loc_47C9FE
47C9E6:  LDR.W           R0, [R10]
47C9EA:  MOVS            R1, #0x32 ; '2'
47C9EC:  STR             R1, [R0,#0x14]
47C9EE:  LDR.W           R0, [R10]
47C9F2:  STR             R6, [R0,#0x18]
47C9F4:  LDR.W           R0, [R10]
47C9F8:  LDR             R1, [R0]
47C9FA:  MOV             R0, R10
47C9FC:  BLX             R1
47C9FE:  LDR             R2, [SP,#0x578+var_570]
47CA00:  ADD.W           R0, R10, R6,LSL#2
47CA04:  ADD.W           R1, R0, #0xB0
47CA08:  CMP             R2, #0
47CA0A:  IT NE
47CA0C:  ADDNE.W         R1, R0, #0xA0
47CA10:  LDR.W           R11, [R1]
47CA14:  CMP.W           R11, #0
47CA18:  BNE             loc_47CA32
47CA1A:  LDR.W           R0, [R10]
47CA1E:  MOVS            R1, #0x32 ; '2'
47CA20:  STR             R1, [R0,#0x14]
47CA22:  LDR.W           R0, [R10]
47CA26:  STR             R6, [R0,#0x18]
47CA28:  LDR.W           R0, [R10]
47CA2C:  LDR             R1, [R0]
47CA2E:  MOV             R0, R10
47CA30:  BLX             R1
47CA32:  LDR             R1, [R5]
47CA34:  CMP             R1, #0
47CA36:  MOV             R0, R1
47CA38:  BNE             loc_47CA4C
47CA3A:  LDR.W           R0, [R10,#4]
47CA3E:  MOVS            R1, #1
47CA40:  MOV.W           R2, #0x590
47CA44:  LDR             R3, [R0]
47CA46:  MOV             R0, R10
47CA48:  BLX             R3
47CA4A:  STR             R0, [R5]
47CA4C:  ADDW            R8, SP, #0x578+var_121
47CA50:  MOVS            R6, #1
47CA52:  MOV.W           R9, #0
47CA56:  STR             R0, [SP,#0x578+var_558]
47CA58:  STR.W           R11, [R0,#0x8C]
47CA5C:  LDRB.W          R5, [R11,R6]
47CA60:  ADD.W           R4, R9, R5
47CA64:  CMP.W           R4, #0x100
47CA68:  BLE             loc_47CA7C
47CA6A:  LDR.W           R0, [R10]
47CA6E:  MOVS            R1, #8
47CA70:  STR             R1, [R0,#0x14]
47CA72:  LDR.W           R0, [R10]
47CA76:  LDR             R1, [R0]
47CA78:  MOV             R0, R10
47CA7A:  BLX             R1
47CA7C:  CBZ             R5, loc_47CA8C
47CA7E:  ADD.W           R0, R8, R9
47CA82:  UXTB            R2, R6
47CA84:  MOV             R1, R5
47CA86:  BLX             j___aeabi_memset8
47CA8A:  MOV             R9, R4
47CA8C:  ADDS            R6, #1
47CA8E:  CMP             R6, #0x11
47CA90:  BNE             loc_47CA5C
47CA92:  MOVS            R0, #0
47CA94:  STR.W           R11, [SP,#0x578+var_554]
47CA98:  STRB.W          R0, [R8,R9]
47CA9C:  LDRB.W          R6, [SP,#0x578+var_121]
47CAA0:  STR.W           R10, [SP,#0x578+var_56C]
47CAA4:  CMP             R6, #0
47CAA6:  STR.W           R9, [SP,#0x578+var_574]
47CAAA:  BEQ             loc_47CAF6
47CAAC:  ADD.W           R10, SP, #0x578+var_528
47CAB0:  MOVS            R5, #0
47CAB2:  MOVS            R4, #1
47CAB4:  MOV.W           R11, #0
47CAB8:  MOV             R9, R6
47CABA:  UXTB            R0, R6
47CABC:  CMP             R9, R0
47CABE:  BNE             loc_47CAD4
47CAC0:  ADD.W           R0, R8, R5
47CAC4:  STR.W           R11, [R10,R5,LSL#2]
47CAC8:  ADD.W           R11, R11, #1
47CACC:  LDRB            R6, [R0,#1]
47CACE:  ADDS            R5, #1
47CAD0:  CMP             R9, R6
47CAD2:  BEQ             loc_47CAC0
47CAD4:  LSL.W           R0, R4, R9
47CAD8:  CMP             R11, R0
47CADA:  BLT             loc_47CAEA
47CADC:  LDR             R0, [SP,#0x578+var_56C]
47CADE:  MOVS            R2, #8
47CAE0:  LDR             R1, [R0]
47CAE2:  STR             R2, [R1,#0x14]
47CAE4:  LDR             R1, [R0]
47CAE6:  LDR             R1, [R1]
47CAE8:  BLX             R1
47CAEA:  ADD.W           R9, R9, #1
47CAEE:  MOV.W           R11, R11,LSL#1
47CAF2:  LSLS            R0, R6, #0x18
47CAF4:  BNE             loc_47CABA
47CAF6:  LDR.W           R9, [SP,#0x578+var_554]
47CAFA:  MOVS            R1, #0
47CAFC:  LDR.W           R11, [SP,#0x578+var_558]
47CB00:  MOVS            R2, #0
47CB02:  ADD.W           R0, R9, #1
47CB06:  LDRB            R3, [R0,R1]
47CB08:  CBZ             R3, loc_47CB28
47CB0A:  ADD             R3, SP, #0x578+var_528
47CB0C:  ADD.W           R6, R11, R1,LSL#2
47CB10:  MOV             R5, R3
47CB12:  LDR.W           R3, [R5,R2,LSL#2]
47CB16:  SUBS            R3, R2, R3
47CB18:  STR             R3, [R6,#0x4C]
47CB1A:  LDRB            R3, [R0,R1]
47CB1C:  ADD             R2, R3
47CB1E:  ADD.W           R3, R5, R2,LSL#2
47CB22:  LDR.W           R3, [R3,#-4]
47CB26:  B               loc_47CB2C
47CB28:  MOV.W           R3, #0xFFFFFFFF
47CB2C:  ADD.W           R6, R11, R1,LSL#2
47CB30:  ADDS            R1, #1
47CB32:  CMP             R1, #0x10
47CB34:  STR             R3, [R6,#4]
47CB36:  BNE             loc_47CB06
47CB38:  MOVW            R0, #:lower16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
47CB3C:  MOV.W           R1, #0x400
47CB40:  MOVT            R0, #:upper16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
47CB44:  STR.W           R0, [R11,#0x44]
47CB48:  ADD.W           R0, R11, #0x90
47CB4C:  STR             R0, [SP,#0x578+var_564]
47CB4E:  BLX             j___aeabi_memclr8_1
47CB52:  MOVW            R5, #0xFC00
47CB56:  ADD.W           R0, R11, #0x490
47CB5A:  ADDW            R1, R11, #0x492
47CB5E:  MOVS            R3, #1
47CB60:  MOV.W           R12, #0
47CB64:  MOVT            R5, #0xFFFF
47CB68:  STR             R1, [SP,#0x578+var_568]
47CB6A:  ADD.W           R1, R11, #0x98
47CB6E:  STR             R1, [SP,#0x578+var_55C]
47CB70:  LDRB.W          R1, [R9,R3]
47CB74:  CMP             R1, #0
47CB76:  BEQ.W           loc_47CCF0
47CB7A:  RSB.W           R1, R3, #8
47CB7E:  MOV.W           R8, #1
47CB82:  STR             R1, [SP,#0x578+var_53C]
47CB84:  VDUP.32         Q8, R3
47CB88:  LSL.W           R2, R8, R1
47CB8C:  MOVS            R6, #0
47CB8E:  MVNS            R1, R2
47CB90:  CMP.W           R1, #0xFFFFFFFF
47CB94:  IT LT
47CB96:  MOVLT           R1, #0xFFFFFFFE
47CB9A:  ADDS            R4, R2, R1
47CB9C:  LDR             R1, [SP,#0x578+var_568]
47CB9E:  ADD             R1, R4
47CBA0:  STRD.W          R1, R4, [SP,#0x578+var_54C]
47CBA4:  ADDS            R1, R4, #2
47CBA6:  STR             R1, [SP,#0x578+var_52C]
47CBA8:  BIC.W           R1, R1, #3
47CBAC:  ADD.W           R4, R12, #1
47CBB0:  STR             R1, [SP,#0x578+var_530]
47CBB2:  SUBS            R1, R2, R1
47CBB4:  STR             R4, [SP,#0x578+var_550]
47CBB6:  STR             R2, [SP,#0x578+var_540]
47CBB8:  STR             R1, [SP,#0x578+var_560]
47CBBA:  B               loc_47CBD0
47CBBC:  LDR             R2, [SP,#0x578+var_540]
47CBBE:  LDR.W           R9, [SP,#0x578+var_554]
47CBC2:  B               loc_47CBC6
47CBC4:  LDR             R2, [SP,#0x578+var_540]
47CBC6:  LDR.W           R11, [SP,#0x578+var_558]
47CBCA:  LDRD.W          R6, R8, [SP,#0x578+var_538]
47CBCE:  B               loc_47CCC0
47CBD0:  ADD             R1, SP, #0x578+var_528
47CBD2:  LDR             R4, [SP,#0x578+var_53C]
47CBD4:  ADD.W           R2, R9, #0x11
47CBD8:  LDR.W           R1, [R1,R12,LSL#2]
47CBDC:  ADD.W           LR, R2, R12
47CBE0:  LSL.W           R10, R1, R4
47CBE4:  LDR             R1, [SP,#0x578+var_52C]
47CBE6:  CMP             R1, #4
47CBE8:  BCC             loc_47CCBE
47CBEA:  LDR             R1, [SP,#0x578+var_530]
47CBEC:  CMP             R1, #0
47CBEE:  BEQ             loc_47CCBE
47CBF0:  LDR             R1, [SP,#0x578+var_550]
47CBF2:  ADD.W           R4, R11, R10,LSL#2
47CBF6:  STR             R6, [SP,#0x578+var_538]
47CBF8:  ADD             R1, R6
47CBFA:  ADD.W           R6, R4, #0x90
47CBFE:  ADD             R1, R2
47CC00:  STR             R1, [SP,#0x578+var_544]
47CC02:  LDR             R1, [SP,#0x578+var_54C]
47CC04:  STR.W           R8, [SP,#0x578+var_534]
47CC08:  MOV.W           R8, #0
47CC0C:  ADD.W           R2, R1, R10
47CC10:  CMP             R2, R6
47CC12:  IT HI
47CC14:  MOVHI.W         R8, #1
47CC18:  CMP             LR, R2
47CC1A:  MOV.W           R2, #0
47CC1E:  IT CC
47CC20:  MOVCC           R2, #1
47CC22:  LDR             R1, [SP,#0x578+var_548]
47CC24:  ADD.W           R4, R1, R10
47CC28:  LDR             R1, [SP,#0x578+var_55C]
47CC2A:  ADD.W           R9, R1, R4,LSL#2
47CC2E:  ADD.W           R4, R11, R10
47CC32:  ADD.W           R4, R4, #0x490
47CC36:  MOV.W           R11, #0
47CC3A:  CMP             R4, R9
47CC3C:  IT CC
47CC3E:  MOVCC.W         R11, #1
47CC42:  LDR             R1, [SP,#0x578+var_544]
47CC44:  CMP             R4, R1
47CC46:  MOV.W           R4, #0
47CC4A:  IT CC
47CC4C:  MOVCC           R4, #1
47CC4E:  CMP             R1, R6
47CC50:  MOV.W           R6, #0
47CC54:  MOV.W           R1, #0
47CC58:  IT HI
47CC5A:  MOVHI           R6, #1
47CC5C:  CMP             LR, R9
47CC5E:  IT CC
47CC60:  MOVCC           R1, #1
47CC62:  TST.W           R8, R11
47CC66:  BNE             loc_47CBBC
47CC68:  LDR.W           R9, [SP,#0x578+var_554]
47CC6C:  ANDS            R1, R6
47CC6E:  BNE             loc_47CBC4
47CC70:  ANDS.W          R1, R4, R2
47CC74:  LDR             R2, [SP,#0x578+var_540]
47CC76:  LDR.W           R11, [SP,#0x578+var_558]
47CC7A:  LDRD.W          R6, R8, [SP,#0x578+var_538]
47CC7E:  BNE             loc_47CCC0
47CC80:  LDRB.W          R1, [LR]
47CC84:  ADD.W           R6, R0, R10
47CC88:  LDR             R2, [SP,#0x578+var_564]
47CC8A:  LDR             R4, [SP,#0x578+var_530]
47CC8C:  ADD.W           R2, R2, R10,LSL#2
47CC90:  VDUP.16         D18, R1
47CC94:  ADD.W           R8, R10, R4
47CC98:  VMOV            D19, D18
47CC9C:  SUBS            R4, #4
47CC9E:  VUZP.8          D19, D20
47CCA2:  VST1.32         {D16-D17}, [R2]!
47CCA6:  VST1.32         {D19[0]}, [R6]!
47CCAA:  BNE             loc_47CC98
47CCAC:  LDRD.W          R2, R1, [SP,#0x578+var_530]
47CCB0:  MOV             R10, R8
47CCB2:  CMP             R1, R2
47CCB4:  LDR             R2, [SP,#0x578+var_560]
47CCB6:  LDRD.W          R6, R8, [SP,#0x578+var_538]
47CCBA:  BNE             loc_47CCC0
47CCBC:  B               loc_47CCDA
47CCBE:  LDR             R2, [SP,#0x578+var_540]
47CCC0:  ADDS            R2, #1
47CCC2:  ADD.W           R1, R0, R10,LSL#2
47CCC6:  SUBS            R2, #1
47CCC8:  CMP             R2, #1
47CCCA:  STR             R3, [R1,R5]
47CCCC:  LDRB.W          R1, [LR]
47CCD0:  STRB.W          R1, [R0,R10]
47CCD4:  ADD.W           R10, R10, #1
47CCD8:  BGT             loc_47CCC2
47CCDA:  LDRB.W          R1, [R9,R3]
47CCDE:  ADD.W           R2, R8, #1
47CCE2:  ADDS            R6, #1
47CCE4:  ADD.W           R12, R12, #1
47CCE8:  CMP             R8, R1
47CCEA:  MOV             R8, R2
47CCEC:  BLT.W           loc_47CBD0
47CCF0:  ADDS            R3, #1
47CCF2:  CMP             R3, #9
47CCF4:  BNE.W           loc_47CB70
47CCF8:  LDR             R0, [SP,#0x578+var_570]
47CCFA:  LDR             R6, [SP,#0x578+var_56C]
47CCFC:  CMP             R0, #0
47CCFE:  LDR             R0, [SP,#0x578+var_574]
47CD00:  BEQ             loc_47CD2C
47CD02:  CMP             R0, #1
47CD04:  BLT             loc_47CD2C
47CD06:  ADD.W           R4, R9, #0x11
47CD0A:  MOV.W           R8, #8
47CD0E:  MOV             R5, R0
47CD10:  LDRB            R0, [R4]
47CD12:  CMP             R0, #0x10
47CD14:  BCC             loc_47CD24
47CD16:  LDR             R0, [R6]
47CD18:  STR.W           R8, [R0,#0x14]
47CD1C:  LDR             R0, [R6]
47CD1E:  LDR             R1, [R0]
47CD20:  MOV             R0, R6
47CD22:  BLX             R1
47CD24:  MOV             R0, R5
47CD26:  ADDS            R4, #1
47CD28:  SUBS            R0, #1
47CD2A:  BNE             loc_47CD0E
47CD2C:  LDR             R0, =(__stack_chk_guard_ptr - 0x47CD36)
47CD2E:  LDR.W           R1, [R7,#var_20]
47CD32:  ADD             R0, PC; __stack_chk_guard_ptr
47CD34:  LDR             R0, [R0]; __stack_chk_guard
47CD36:  LDR             R0, [R0]
47CD38:  SUBS            R0, R0, R1
47CD3A:  ITTTT EQ
47CD3C:  ADDEQ.W         SP, SP, #0x558
47CD40:  ADDEQ           SP, SP, #4
47CD42:  POPEQ.W         {R8-R11}
47CD46:  POPEQ           {R4-R7,PC}
47CD48:  BLX             __stack_chk_fail
