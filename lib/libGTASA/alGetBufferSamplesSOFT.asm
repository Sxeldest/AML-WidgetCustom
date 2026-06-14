; =========================================================
; Game Engine Function: alGetBufferSamplesSOFT
; Address            : 0x2466D0 - 0x246B0A
; =========================================================

2466D0:  PUSH            {R4-R7,LR}
2466D2:  ADD             R7, SP, #0xC
2466D4:  PUSH.W          {R8-R11}
2466D8:  SUB             SP, SP, #0x1C
2466DA:  MOV             R9, R3
2466DC:  MOV             R11, R2
2466DE:  MOV             R4, R1
2466E0:  MOV             R5, R0
2466E2:  LDRD.W          R6, R10, [R7,#arg_0]
2466E6:  BLX             j_GetContextRef
2466EA:  MOV             R8, R0
2466EC:  CMP.W           R8, #0
2466F0:  BEQ.W           loc_246844
2466F4:  LDR.W           R0, [R8,#0x88]
2466F8:  MOV             R1, R5
2466FA:  ADDS            R0, #0x40 ; '@'
2466FC:  BLX             j_LookupUIntMapKey
246700:  MOV             R5, R0
246702:  CMP             R5, #0
246704:  BEQ.W           loc_24684C
246708:  ORR.W           R0, R11, R4
24670C:  CMP.W           R0, #0xFFFFFFFF
246710:  BLE.W           loc_246888
246714:  SUB.W           R0, R6, #0x1400
246718:  CMP             R0, #0xA
24671A:  BCS.W           loc_2468C4
24671E:  STRD.W          R4, R9, [SP,#0x38+var_28]
246722:  ADD.W           R9, R5, #0x30 ; '0'
246726:  STRD.W          R10, R6, [SP,#0x38+var_30]
24672A:  ADD.W           R10, R5, #0x3C ; '<'
24672E:  MOVS            R1, #1
246730:  DMB.W           ISH
246734:  LDREX.W         R0, [R10]
246738:  STREX.W         R2, R1, [R10]
24673C:  CMP             R2, #0
24673E:  BNE             loc_246734
246740:  CMP             R0, #1
246742:  DMB.W           ISH
246746:  BNE             loc_246766
246748:  MOVS            R6, #1
24674A:  BLX             sched_yield
24674E:  DMB.W           ISH
246752:  LDREX.W         R0, [R10]
246756:  STREX.W         R1, R6, [R10]
24675A:  CMP             R1, #0
24675C:  BNE             loc_246752
24675E:  CMP             R0, #1
246760:  DMB.W           ISH
246764:  BEQ             loc_24674A
246766:  STR.W           R8, [SP,#0x38+var_20]
24676A:  ADD.W           R8, R5, #0x38 ; '8'
24676E:  MOV             R4, R11
246770:  MOVS            R1, #1
246772:  DMB.W           ISH
246776:  LDREX.W         R0, [R8]
24677A:  STREX.W         R2, R1, [R8]
24677E:  CMP             R2, #0
246780:  BNE             loc_246776
246782:  CMP             R0, #1
246784:  DMB.W           ISH
246788:  BNE             loc_2467A8
24678A:  MOVS            R6, #1
24678C:  BLX             sched_yield
246790:  DMB.W           ISH
246794:  LDREX.W         R0, [R8]
246798:  STREX.W         R1, R6, [R8]
24679C:  CMP             R1, #0
24679E:  BNE             loc_246794
2467A0:  CMP             R0, #1
2467A2:  DMB.W           ISH
2467A6:  BEQ             loc_24678C
2467A8:  DMB.W           ISH
2467AC:  LDREX.W         R0, [R9]
2467B0:  ADDS            R1, R0, #1
2467B2:  STREX.W         R2, R1, [R9]
2467B6:  CMP             R2, #0
2467B8:  BNE             loc_2467AC
2467BA:  CMP             R0, #0
2467BC:  DMB.W           ISH
2467C0:  BNE             loc_2467FE
2467C2:  ADD.W           R11, R5, #0x40 ; '@'
2467C6:  MOVS            R1, #1
2467C8:  DMB.W           ISH
2467CC:  LDREX.W         R0, [R11]
2467D0:  STREX.W         R2, R1, [R11]
2467D4:  CMP             R2, #0
2467D6:  BNE             loc_2467CC
2467D8:  CMP             R0, #1
2467DA:  DMB.W           ISH
2467DE:  BNE             loc_2467FE
2467E0:  MOVS            R6, #1
2467E2:  BLX             sched_yield
2467E6:  DMB.W           ISH
2467EA:  LDREX.W         R0, [R11]
2467EE:  STREX.W         R1, R6, [R11]
2467F2:  CMP             R1, #0
2467F4:  BNE             loc_2467EA
2467F6:  CMP             R0, #1
2467F8:  DMB.W           ISH
2467FC:  BEQ             loc_2467E2
2467FE:  MOVS            R0, #0
246800:  DMB.W           ISH
246804:  LDREX.W         R1, [R8]
246808:  STREX.W         R1, R0, [R8]
24680C:  CMP             R1, #0
24680E:  BNE             loc_246804
246810:  DMB.W           ISH
246814:  MOVS            R0, #0
246816:  DMB.W           ISH
24681A:  LDREX.W         R1, [R10]
24681E:  STREX.W         R1, R0, [R10]
246822:  CMP             R1, #0
246824:  BNE             loc_24681A
246826:  DMB.W           ISH
24682A:  LDRD.W          R2, R3, [R5,#0x10]
24682E:  LDR.W           R8, [SP,#0x38+var_20]
246832:  SUB.W           R0, R2, #0x1500
246836:  CMP             R0, #6
246838:  BHI             loc_246900
24683A:  LDR             R1, =(unk_60A680 - 0x246840)
24683C:  ADD             R1, PC; unk_60A680
24683E:  LDR.W           R12, [R1,R0,LSL#2]
246842:  B               loc_246904
246844:  ADD             SP, SP, #0x1C
246846:  POP.W           {R8-R11}
24684A:  POP             {R4-R7,PC}
24684C:  LDR             R0, =(TrapALError_ptr - 0x246852)
24684E:  ADD             R0, PC; TrapALError_ptr
246850:  LDR             R0, [R0]; TrapALError
246852:  LDRB            R0, [R0]
246854:  CMP             R0, #0
246856:  ITT NE
246858:  MOVNE           R0, #5; sig
24685A:  BLXNE           raise
24685E:  LDREX.W         R0, [R8,#0x50]
246862:  CMP             R0, #0
246864:  BNE.W           loc_246A98
246868:  ADD.W           R0, R8, #0x50 ; 'P'
24686C:  MOVW            R1, #0xA001
246870:  DMB.W           ISH
246874:  STREX.W         R2, R1, [R0]
246878:  CMP             R2, #0
24687A:  BEQ.W           loc_246A9C
24687E:  LDREX.W         R2, [R0]
246882:  CMP             R2, #0
246884:  BEQ             loc_246874
246886:  B               loc_246A98
246888:  LDR             R0, =(TrapALError_ptr - 0x24688E)
24688A:  ADD             R0, PC; TrapALError_ptr
24688C:  LDR             R0, [R0]; TrapALError
24688E:  LDRB            R0, [R0]
246890:  CMP             R0, #0
246892:  ITT NE
246894:  MOVNE           R0, #5; sig
246896:  BLXNE           raise
24689A:  LDREX.W         R0, [R8,#0x50]
24689E:  CMP             R0, #0
2468A0:  BNE.W           loc_246A98
2468A4:  ADD.W           R0, R8, #0x50 ; 'P'
2468A8:  MOVW            R1, #0xA003
2468AC:  DMB.W           ISH
2468B0:  STREX.W         R2, R1, [R0]
2468B4:  CMP             R2, #0
2468B6:  BEQ.W           loc_246A9C
2468BA:  LDREX.W         R2, [R0]
2468BE:  CMP             R2, #0
2468C0:  BEQ             loc_2468B0
2468C2:  B               loc_246A98
2468C4:  LDR             R0, =(TrapALError_ptr - 0x2468CA)
2468C6:  ADD             R0, PC; TrapALError_ptr
2468C8:  LDR             R0, [R0]; TrapALError
2468CA:  LDRB            R0, [R0]
2468CC:  CMP             R0, #0
2468CE:  ITT NE
2468D0:  MOVNE           R0, #5; sig
2468D2:  BLXNE           raise
2468D6:  LDREX.W         R0, [R8,#0x50]
2468DA:  CMP             R0, #0
2468DC:  BNE.W           loc_246A98
2468E0:  ADD.W           R0, R8, #0x50 ; 'P'
2468E4:  MOVW            R1, #0xA002
2468E8:  DMB.W           ISH
2468EC:  STREX.W         R2, R1, [R0]
2468F0:  CMP             R2, #0
2468F2:  BEQ.W           loc_246A9C
2468F6:  LDREX.W         R2, [R0]
2468FA:  CMP             R2, #0
2468FC:  BEQ             loc_2468EC
2468FE:  B               loc_246A98
246900:  MOV.W           R12, #0
246904:  LDRD.W          R10, R0, [SP,#0x38+var_28]
246908:  SUB.W           R1, R3, #0x1400
24690C:  CMP             R1, #6
24690E:  BHI             loc_24698C
246910:  LDR             R6, =(unk_60A580 - 0x246916)
246912:  ADD             R6, PC; unk_60A580
246914:  LDR.W           LR, [R6,R1,LSL#2]
246918:  CMP             R2, R0
24691A:  BEQ             loc_246994
24691C:  DMB.W           ISH
246920:  LDREX.W         R0, [R9]
246924:  SUBS            R1, R0, #1
246926:  STREX.W         R2, R1, [R9]
24692A:  CMP             R2, #0
24692C:  BNE             loc_246920
24692E:  CMP             R0, #1
246930:  DMB.W           ISH
246934:  BNE             loc_246950
246936:  ADD.W           R0, R5, #0x40 ; '@'
24693A:  MOVS            R1, #0
24693C:  DMB.W           ISH
246940:  LDREX.W         R2, [R0]
246944:  STREX.W         R2, R1, [R0]
246948:  CMP             R2, #0
24694A:  BNE             loc_246940
24694C:  DMB.W           ISH
246950:  LDR             R0, =(TrapALError_ptr - 0x246956)
246952:  ADD             R0, PC; TrapALError_ptr
246954:  LDR             R0, [R0]; TrapALError
246956:  LDRB            R0, [R0]
246958:  CMP             R0, #0
24695A:  ITT NE
24695C:  MOVNE           R0, #5; sig
24695E:  BLXNE           raise
246962:  LDREX.W         R0, [R8,#0x50]
246966:  CMP             R0, #0
246968:  BNE.W           loc_246A98
24696C:  ADD.W           R0, R8, #0x50 ; 'P'
246970:  MOVW            R1, #0xA002
246974:  DMB.W           ISH
246978:  STREX.W         R2, R1, [R0]
24697C:  CMP             R2, #0
24697E:  BEQ.W           loc_246A9C
246982:  LDREX.W         R2, [R0]
246986:  CMP             R2, #0
246988:  BEQ             loc_246978
24698A:  B               loc_246A98
24698C:  MOV.W           LR, #0
246990:  CMP             R2, R0
246992:  BNE             loc_24691C
246994:  LDR             R2, [R5,#0xC]
246996:  CMP             R2, R10
246998:  ITT GE
24699A:  SUBGE.W         R2, R2, R10
24699E:  CMPGE           R2, R4
2469A0:  BGE             loc_246A0E
2469A2:  DMB.W           ISH
2469A6:  LDREX.W         R0, [R9]
2469AA:  SUBS            R1, R0, #1
2469AC:  STREX.W         R2, R1, [R9]
2469B0:  CMP             R2, #0
2469B2:  BNE             loc_2469A6
2469B4:  CMP             R0, #1
2469B6:  DMB.W           ISH
2469BA:  BNE             loc_2469D6
2469BC:  ADD.W           R0, R5, #0x40 ; '@'
2469C0:  MOVS            R1, #0
2469C2:  DMB.W           ISH
2469C6:  LDREX.W         R2, [R0]
2469CA:  STREX.W         R2, R1, [R0]
2469CE:  CMP             R2, #0
2469D0:  BNE             loc_2469C6
2469D2:  DMB.W           ISH
2469D6:  LDR             R0, =(TrapALError_ptr - 0x2469DC)
2469D8:  ADD             R0, PC; TrapALError_ptr
2469DA:  LDR             R0, [R0]; TrapALError
2469DC:  LDRB            R0, [R0]
2469DE:  CMP             R0, #0
2469E0:  ITT NE
2469E2:  MOVNE           R0, #5; sig
2469E4:  BLXNE           raise
2469E8:  LDREX.W         R0, [R8,#0x50]
2469EC:  CMP             R0, #0
2469EE:  BNE             loc_246A98
2469F0:  ADD.W           R0, R8, #0x50 ; 'P'
2469F4:  MOVW            R1, #0xA003
2469F8:  DMB.W           ISH
2469FC:  STREX.W         R2, R1, [R0]
246A00:  CMP             R2, #0
246A02:  BEQ             loc_246A9C
246A04:  LDREX.W         R2, [R0]
246A08:  CMP             R2, #0
246A0A:  BEQ             loc_2469FC
246A0C:  B               loc_246A98
246A0E:  MOVW            R2, #0xE07F
246A12:  LDR             R1, [SP,#0x38+var_2C]
246A14:  MOVT            R2, #0x7E07
246A18:  SMMUL.W         R2, R4, R2
246A1C:  ASRS            R6, R2, #5
246A1E:  ADD.W           R2, R6, R2,LSR#31
246A22:  ADD.W           R2, R2, R2,LSL#6
246A26:  SUBS            R2, R4, R2
246A28:  BEQ             loc_246AB0
246A2A:  MOVW            R2, #0x140C
246A2E:  CMP             R1, R2
246A30:  BNE             loc_246AB0
246A32:  DMB.W           ISH
246A36:  LDREX.W         R0, [R9]
246A3A:  SUBS            R1, R0, #1
246A3C:  STREX.W         R2, R1, [R9]
246A40:  CMP             R2, #0
246A42:  BNE             loc_246A36
246A44:  CMP             R0, #1
246A46:  DMB.W           ISH
246A4A:  BNE             loc_246A66
246A4C:  ADD.W           R0, R5, #0x40 ; '@'
246A50:  MOVS            R1, #0
246A52:  DMB.W           ISH
246A56:  LDREX.W         R2, [R0]
246A5A:  STREX.W         R2, R1, [R0]
246A5E:  CMP             R2, #0
246A60:  BNE             loc_246A56
246A62:  DMB.W           ISH
246A66:  LDR             R0, =(TrapALError_ptr - 0x246A6C)
246A68:  ADD             R0, PC; TrapALError_ptr
246A6A:  LDR             R0, [R0]; TrapALError
246A6C:  LDRB            R0, [R0]
246A6E:  CMP             R0, #0
246A70:  ITT NE
246A72:  MOVNE           R0, #5; sig
246A74:  BLXNE           raise
246A78:  LDREX.W         R0, [R8,#0x50]
246A7C:  CBNZ            R0, loc_246A98
246A7E:  ADD.W           R0, R8, #0x50 ; 'P'
246A82:  MOVW            R1, #0xA003
246A86:  DMB.W           ISH
246A8A:  STREX.W         R2, R1, [R0]
246A8E:  CBZ             R2, loc_246A9C
246A90:  LDREX.W         R2, [R0]
246A94:  CMP             R2, #0
246A96:  BEQ             loc_246A8A
246A98:  CLREX.W
246A9C:  DMB.W           ISH
246AA0:  MOV             R0, R8
246AA2:  ADD             SP, SP, #0x1C
246AA4:  POP.W           {R8-R11}
246AA8:  POP.W           {R4-R7,LR}
246AAC:  B.W             ALCcontext_DecRef
246AB0:  MUL.W           R6, R12, R10
246AB4:  LDR             R2, [R5]
246AB6:  SUB.W           R0, R0, #0x1500
246ABA:  CMP             R0, #6
246ABC:  MLA.W           R2, R6, LR, R2
246AC0:  BHI             loc_246ACC
246AC2:  LDR             R6, =(unk_60A680 - 0x246AC8)
246AC4:  ADD             R6, PC; unk_60A680
246AC6:  LDR.W           R0, [R6,R0,LSL#2]
246ACA:  B               loc_246ACE
246ACC:  MOVS            R0, #0
246ACE:  STRD.W          R0, R4, [SP,#0x38+var_38]
246AD2:  LDR             R0, [SP,#0x38+var_30]
246AD4:  BL              sub_2404D8
246AD8:  DMB.W           ISH
246ADC:  LDREX.W         R0, [R9]
246AE0:  SUBS            R1, R0, #1
246AE2:  STREX.W         R2, R1, [R9]
246AE6:  CMP             R2, #0
246AE8:  BNE             loc_246ADC
246AEA:  CMP             R0, #1
246AEC:  DMB.W           ISH
246AF0:  BNE             loc_246AA0
246AF2:  ADD.W           R0, R5, #0x40 ; '@'
246AF6:  MOVS            R1, #0
246AF8:  DMB.W           ISH
246AFC:  LDREX.W         R2, [R0]
246B00:  STREX.W         R2, R1, [R0]
246B04:  CMP             R2, #0
246B06:  BNE             loc_246AFC
246B08:  B               loc_246A9C
