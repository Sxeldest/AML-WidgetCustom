; =========================================================
; Game Engine Function: sub_205854
; Address            : 0x205854 - 0x205A32
; =========================================================

205854:  PUSH            {R4-R7,LR}
205856:  ADD             R7, SP, #0xC
205858:  PUSH.W          {R8-R11}
20585C:  SUB             SP, SP, #0x2C
20585E:  MOV             R11, R0
205860:  LDR.W           R0, [R11]
205864:  LDR.W           R1, [R11,#0x14]
205868:  STR             R1, [SP,#0x48+var_34]
20586A:  LDR             R2, [R0]
20586C:  LDR.W           R9, [R11,#0x1C]
205870:  LDRD.W          R4, R1, [R0,#0xC]
205874:  AND.W           R12, R1, #2
205878:  LDR             R2, [R2]
20587A:  TST.W           R1, #1
20587E:  STR             R2, [SP,#0x48+var_38]
205880:  ORR.W           R2, R12, #1
205884:  BNE             loc_2058F6
205886:  CMP             R4, #0
205888:  BEQ.W           loc_205A28
20588C:  LDR             R0, [R0,#8]
20588E:  LDR             R1, =(png_sRGB_base_ptr - 0x205898)
205890:  MLA.W           R10, R0, R2, R9
205894:  ADD             R1, PC; png_sRGB_base_ptr
205896:  MULS            R0, R2
205898:  LDR             R5, [R1]; png_sRGB_base
20589A:  STR             R0, [SP,#0x48+var_20]
20589C:  LDR             R0, =(png_sRGB_delta_ptr - 0x2058A2)
20589E:  ADD             R0, PC; png_sRGB_delta_ptr
2058A0:  LDR             R6, [R0]; png_sRGB_delta
2058A2:  LDR             R0, [SP,#0x48+var_20]
2058A4:  MOV             R8, R4
2058A6:  CMP             R0, #1
2058A8:  BLT             loc_2058D4
2058AA:  LDR             R1, [SP,#0x48+var_34]
2058AC:  MOV             R0, R9
2058AE:  LDRH.W          R2, [R1],#2
2058B2:  RSB.W           R2, R2, R2,LSL#8
2058B6:  LSRS            R3, R2, #0xF
2058B8:  BFC.W           R2, #0xF, #0x11
2058BC:  LDRB            R4, [R6,R3]
2058BE:  LDRH.W          R3, [R5,R3,LSL#1]
2058C2:  SMULBB.W        R2, R2, R4
2058C6:  ADD.W           R2, R3, R2,LSR#12
2058CA:  LSRS            R2, R2, #8
2058CC:  STRB.W          R2, [R0],#1
2058D0:  CMP             R0, R10
2058D2:  BCC             loc_2058AE
2058D4:  LDR             R0, [SP,#0x48+var_38]
2058D6:  MOV             R1, R9
2058D8:  BLX             j_png_write_row
2058DC:  LDR.W           R0, [R11,#0x18]
2058E0:  MOV             R4, R8
2058E2:  MOVW            R1, #0xFFFE
2058E6:  SUBS            R4, #1
2058E8:  AND.W           R0, R0, R1
2058EC:  LDR             R1, [SP,#0x48+var_34]
2058EE:  ADD             R1, R0
2058F0:  STR             R1, [SP,#0x48+var_34]
2058F2:  BNE             loc_2058A2
2058F4:  B               loc_205A28
2058F6:  ANDS.W          R3, R1, #0x20 ; ' '
2058FA:  MOV             LR, R2
2058FC:  IT NE
2058FE:  ADDNE.W         R9, R9, #1
205902:  STR.W           R9, [SP,#0x48+var_48]
205906:  IT NE
205908:  MOVNE.W         LR, #0xFFFFFFFF
20590C:  CMP             R4, #0
20590E:  BEQ.W           loc_205A28
205912:  LDR             R0, [R0,#8]
205914:  ADDS            R5, R2, #1
205916:  CMP             R3, #0
205918:  STR             R5, [SP,#0x48+var_20]
20591A:  MUL.W           R2, R0, R5
20591E:  STR             R2, [SP,#0x48+var_44]
205920:  LDR             R2, [SP,#0x48+var_48]
205922:  MLA.W           R0, R0, R5, R2
205926:  STR             R0, [SP,#0x48+var_24]
205928:  LDR             R0, [SP,#0x48+var_34]
20592A:  IT NE
20592C:  ADDNE           R0, #2
20592E:  STR             R0, [SP,#0x48+var_34]
205930:  MOVS            R0, #4
205932:  AND.W           R0, R0, R1,LSL#1
205936:  ADDS            R0, #4
205938:  STR             R0, [SP,#0x48+var_28]
20593A:  LDR             R0, =(png_sRGB_delta_ptr - 0x205944)
20593C:  STRD.W          LR, R12, [SP,#0x48+var_30]
205940:  ADD             R0, PC; png_sRGB_delta_ptr
205942:  STR.W           R11, [SP,#0x48+var_40]
205946:  LDR.W           R8, [R0]; png_sRGB_delta
20594A:  LDR             R0, =(png_sRGB_base_ptr - 0x205950)
20594C:  ADD             R0, PC; png_sRGB_base_ptr
20594E:  LDR.W           R9, [R0]; png_sRGB_base
205952:  LDR             R0, [SP,#0x48+var_44]
205954:  STR             R4, [SP,#0x48+var_3C]
205956:  CMP             R0, #1
205958:  BLT             loc_205A00
20595A:  LDR.W           R10, [SP,#0x48+var_34]
20595E:  LDR.W           R11, [SP,#0x48+var_48]
205962:  LDRH.W          R6, [R10,LR,LSL#1]
205966:  MOVW            R1, #0x807F
20596A:  RSB.W           R0, R6, R6,LSL#8
20596E:  ADD             R0, R1
205970:  LSRS            R1, R0, #0x10
205972:  STRB.W          R1, [R11,LR]
205976:  UBFX.W          R1, R0, #0x10, #8
20597A:  CMP             R1, #0
20597C:  MOV.W           R0, #0
205980:  IT NE
205982:  CMPNE           R1, #0xFF
205984:  BEQ             loc_20599C
205986:  MOVW            R0, #0x8080
20598A:  MOV             R1, R6
20598C:  MOVT            R0, #0x7F7F
205990:  ADD.W           R0, R0, R6,LSR#1
205994:  BLX             __aeabi_uidiv
205998:  LDRD.W          LR, R12, [SP,#0x48+var_30]
20599C:  LDR             R2, [SP,#0x48+var_20]
20599E:  MOVS            R1, #0
2059A0:  MOVS            R3, #0xFF
2059A2:  CMP             R6, #0x80
2059A4:  BCC             loc_2059E2
2059A6:  LDRH.W          R5, [R10,R1,LSL#1]
2059AA:  CMP             R5, R6
2059AC:  BCS             loc_2059E2
2059AE:  CBZ             R5, loc_2059C2
2059B0:  MOVW            R3, #0xFF7E
2059B4:  CMP             R6, R3
2059B6:  BHI             loc_2059C6
2059B8:  MUL.W           R3, R0, R5
2059BC:  ADDS            R3, #0x40 ; '@'
2059BE:  LSRS            R3, R3, #7
2059C0:  B               loc_2059CA
2059C2:  MOVS            R3, #0
2059C4:  B               loc_2059E2
2059C6:  RSB.W           R3, R5, R5,LSL#8
2059CA:  LSRS            R5, R3, #0xF
2059CC:  BFC.W           R3, #0xF, #0x11
2059D0:  LDRB.W          R4, [R8,R5]
2059D4:  LDRH.W          R5, [R9,R5,LSL#1]
2059D8:  SMULBB.W        R3, R3, R4
2059DC:  ADD.W           R3, R5, R3,LSR#12
2059E0:  LSRS            R3, R3, #8
2059E2:  STRB.W          R3, [R11,R1]
2059E6:  SUBS            R2, #1
2059E8:  ADDS            R1, #1
2059EA:  CMP             R2, #1
2059EC:  BGT             loc_2059A0
2059EE:  LDR             R0, [SP,#0x48+var_28]
2059F0:  ADD             R10, R0
2059F2:  ADD.W           R0, R11, R12
2059F6:  ADD.W           R11, R0, #2
2059FA:  LDR             R0, [SP,#0x48+var_24]
2059FC:  CMP             R11, R0
2059FE:  BCC             loc_205962
205A00:  LDR.W           R11, [SP,#0x48+var_40]
205A04:  LDR             R0, [SP,#0x48+var_38]
205A06:  LDR.W           R1, [R11,#0x1C]
205A0A:  BLX             j_png_write_row
205A0E:  LDRD.W          LR, R12, [SP,#0x48+var_30]
205A12:  MOVW            R1, #0xFFFE
205A16:  LDR.W           R0, [R11,#0x18]
205A1A:  LDR             R4, [SP,#0x48+var_3C]
205A1C:  ANDS            R0, R1
205A1E:  LDR             R1, [SP,#0x48+var_34]
205A20:  SUBS            R4, #1
205A22:  ADD             R1, R0
205A24:  STR             R1, [SP,#0x48+var_34]
205A26:  BNE             loc_205952
205A28:  MOVS            R0, #1
205A2A:  ADD             SP, SP, #0x2C ; ','
205A2C:  POP.W           {R8-R11}
205A30:  POP             {R4-R7,PC}
