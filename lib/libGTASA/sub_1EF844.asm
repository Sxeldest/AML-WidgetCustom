; =========================================================
; Game Engine Function: sub_1EF844
; Address            : 0x1EF844 - 0x1EF9D8
; =========================================================

1EF844:  PUSH            {R4-R7,LR}
1EF846:  ADD             R7, SP, #0xC
1EF848:  PUSH.W          {R8-R11}
1EF84C:  SUB             SP, SP, #0xE4
1EF84E:  MOV             R9, R0
1EF850:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EF85A)
1EF852:  MOV             R5, R1
1EF854:  CMP             R5, #0
1EF856:  ADD             R0, PC; __stack_chk_guard_ptr
1EF858:  ADD.W           R11, SP, #0x100+var_E4
1EF85C:  MOV             R6, R3
1EF85E:  ADR             R3, aProfile; "profile '"
1EF860:  LDR             R0, [R0]; __stack_chk_guard
1EF862:  MOV             R4, R2
1EF864:  MOV.W           R1, #0xC4
1EF868:  MOV.W           R2, #0
1EF86C:  LDR.W           R8, [R7,#arg_0]
1EF870:  LDR             R0, [R0]
1EF872:  STR             R0, [SP,#0x100+var_20]
1EF874:  ITTT NE
1EF876:  LDRHNE.W        R0, [R5,#0x4A]
1EF87A:  ORRNE.W         R0, R0, #0x8000
1EF87E:  STRHNE.W        R0, [R5,#0x4A]
1EF882:  MOV             R0, R11
1EF884:  BLX             j_png_safecat
1EF888:  MOV             R2, R0
1EF88A:  ADD.W           R1, R2, #0x4F ; 'O'
1EF88E:  MOV             R0, R11
1EF890:  MOV             R3, R4
1EF892:  BLX             j_png_safecat
1EF896:  ADR             R3, asc_1EF9E8; "': "
1EF898:  MOV             R2, R0
1EF89A:  MOV             R0, R11
1EF89C:  MOVS            R1, #0xC4
1EF89E:  BLX             j_png_safecat
1EF8A2:  MOV             R10, R0
1EF8A4:  MOVS            R1, #0xDF
1EF8A6:  AND.W           R0, R1, R6,LSR#24
1EF8AA:  MOV             R2, #0xFFFFFFD0
1EF8AE:  SUB.W           R3, R0, #0x41 ; 'A'
1EF8B2:  LSRS            R0, R6, #0x18
1EF8B4:  CMP             R3, #0x1A
1EF8B6:  BCC             loc_1EF8C4
1EF8B8:  CMP             R0, #0x20 ; ' '
1EF8BA:  ITT NE
1EF8BC:  ADDNE.W         R3, R2, R6,LSR#24
1EF8C0:  CMPNE           R3, #9
1EF8C2:  BHI             loc_1EF91E
1EF8C4:  AND.W           R1, R1, R6,LSR#16
1EF8C8:  SUB.W           R3, R1, #0x41 ; 'A'
1EF8CC:  UBFX.W          R1, R6, #0x10, #8
1EF8D0:  CMP             R3, #0x1A
1EF8D2:  BCC             loc_1EF8E0
1EF8D4:  CMP             R1, #0x20 ; ' '
1EF8D6:  ITT NE
1EF8D8:  UXTABNE.W       R2, R2, R6,ROR#16
1EF8DC:  CMPNE           R2, #9
1EF8DE:  BHI             loc_1EF91E
1EF8E0:  MOVS            R2, #0xDF
1EF8E2:  MOV             LR, #0xFFFFFFD0
1EF8E6:  AND.W           R2, R2, R6,LSR#8
1EF8EA:  SUB.W           R3, R2, #0x41 ; 'A'
1EF8EE:  UBFX.W          R2, R6, #8, #8
1EF8F2:  CMP             R3, #0x1A
1EF8F4:  BCC             loc_1EF902
1EF8F6:  CMP             R2, #0x20 ; ' '
1EF8F8:  ITT NE
1EF8FA:  UXTABNE.W       R3, LR, R6,ROR#8
1EF8FE:  CMPNE           R3, #9
1EF900:  BHI             loc_1EF91E
1EF902:  AND.W           R4, R6, #0xDF
1EF906:  UXTB.W          R12, R6
1EF90A:  SUBS            R4, #0x41 ; 'A'
1EF90C:  CMP             R4, #0x1A
1EF90E:  BCC             loc_1EF97E
1EF910:  CMP.W           R12, #0x20 ; ' '
1EF914:  ITT NE
1EF916:  UXTABNE.W       R4, LR, R6
1EF91A:  CMPNE           R4, #9
1EF91C:  BLS             loc_1EF97E
1EF91E:  ADD             R0, SP, #0x100+var_FC
1EF920:  MOVS            R2, #3
1EF922:  ADD.W           R1, R0, #0x18
1EF926:  MOV             R3, R6
1EF928:  BLX             j_png_format_number
1EF92C:  ADD             R4, SP, #0x100+var_E4
1EF92E:  MOV             R3, R0
1EF930:  MOVS            R1, #0xC4
1EF932:  MOV             R2, R10
1EF934:  MOV             R0, R4
1EF936:  BLX             j_png_safecat
1EF93A:  ADR             R3, aH; "h: "
1EF93C:  MOV             R2, R0
1EF93E:  MOV             R0, R4
1EF940:  MOVS            R1, #0xC4
1EF942:  BLX             j_png_safecat
1EF946:  MOV             R2, R0
1EF948:  ADD             R4, SP, #0x100+var_E4
1EF94A:  MOVS            R1, #0xC4
1EF94C:  MOV             R3, R8
1EF94E:  MOV             R0, R4
1EF950:  BLX             j_png_safecat
1EF954:  MOVS            R2, #1
1EF956:  CMP             R5, #0
1EF958:  IT NE
1EF95A:  MOVNE           R2, #2
1EF95C:  MOV             R0, R9
1EF95E:  MOV             R1, R4
1EF960:  BLX             j_png_chunk_report
1EF964:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EF96C)
1EF966:  LDR             R1, [SP,#0x100+var_20]
1EF968:  ADD             R0, PC; __stack_chk_guard_ptr
1EF96A:  LDR             R0, [R0]; __stack_chk_guard
1EF96C:  LDR             R0, [R0]
1EF96E:  SUBS            R0, R0, R1
1EF970:  ITTT EQ
1EF972:  ADDEQ           SP, SP, #0xE4
1EF974:  POPEQ.W         {R8-R11}
1EF978:  POPEQ           {R4-R7,PC}
1EF97A:  BLX             __stack_chk_fail
1EF97E:  MOVS            R3, #0x27 ; '''
1EF980:  SUB.W           LR, R0, #0x20 ; ' '
1EF984:  STRB.W          R3, [R11,R10]
1EF988:  MOVS            R4, #0x3F ; '?'
1EF98A:  CMP.W           LR, #0x5F ; '_'
1EF98E:  ADD.W           R3, R11, R10
1EF992:  IT CS
1EF994:  MOVCS           R0, R4
1EF996:  STRB            R0, [R3,#1]
1EF998:  SUB.W           R0, R1, #0x20 ; ' '
1EF99C:  CMP             R0, #0x5F ; '_'
1EF99E:  MOV.W           R0, #0x3F ; '?'
1EF9A2:  IT CC
1EF9A4:  LSRCC           R0, R6, #0x10
1EF9A6:  STRB            R0, [R3,#2]
1EF9A8:  SUB.W           R0, R2, #0x20 ; ' '
1EF9AC:  CMP             R0, #0x5F ; '_'
1EF9AE:  MOV.W           R0, #0x3F ; '?'
1EF9B2:  IT CC
1EF9B4:  LSRCC           R0, R6, #8
1EF9B6:  ADD.W           R2, R10, #8
1EF9BA:  STRB            R0, [R3,#3]
1EF9BC:  SUB.W           R0, R12, #0x20 ; ' '
1EF9C0:  CMP             R0, #0x5F ; '_'
1EF9C2:  MOV.W           R0, #0x27 ; '''
1EF9C6:  IT CC
1EF9C8:  MOVCC           R4, R6
1EF9CA:  STRB            R4, [R3,#4]
1EF9CC:  STRB            R0, [R3,#5]
1EF9CE:  MOVS            R0, #0x3A ; ':'
1EF9D0:  STRB            R0, [R3,#6]
1EF9D2:  MOVS            R0, #0x20 ; ' '
1EF9D4:  STRB            R0, [R3,#7]
1EF9D6:  B               loc_1EF948
