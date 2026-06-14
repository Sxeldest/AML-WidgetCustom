; =========================================================
; Game Engine Function: sub_477890
; Address            : 0x477890 - 0x477A36
; =========================================================

477890:  PUSH            {R4-R7,LR}
477892:  ADD             R7, SP, #0xC
477894:  PUSH.W          {R8-R11}
477898:  SUB             SP, SP, #0x14
47789A:  MOV             R3, R0
47789C:  LDR.W           R0, [R3,#0xBC]
4778A0:  LDR.W           R12, [R3,#0x15C]
4778A4:  CBZ             R0, loc_4778DA
4778A6:  LDR.W           R2, [R12,#0x24]
4778AA:  CBNZ            R2, loc_4778D4
4778AC:  LDR.W           R2, [R3,#0xE4]
4778B0:  CMP             R2, #1
4778B2:  BLT             loc_4778CE
4778B4:  ADD.W           R0, R12, #0x14
4778B8:  MOVS            R6, #0
4778BA:  MOVS            R2, #0
4778BC:  STR.W           R6, [R0,R2,LSL#2]
4778C0:  ADDS            R2, #1
4778C2:  LDR.W           R5, [R3,#0xE4]
4778C6:  CMP             R2, R5
4778C8:  BLT             loc_4778BC
4778CA:  LDR.W           R0, [R3,#0xBC]
4778CE:  MOV             R2, R0
4778D0:  STR.W           R0, [R12,#0x24]
4778D4:  SUBS            R0, R2, #1
4778D6:  STR.W           R0, [R12,#0x24]
4778DA:  LDR.W           R0, [R3,#0x100]
4778DE:  CMP             R0, #1
4778E0:  BLT.W           loc_477A2C
4778E4:  LDR             R0, =(jpeg_natural_order_ptr - 0x4778F0)
4778E6:  MOVS            R4, #0
4778E8:  MOVS            R5, #0
4778EA:  STR             R3, [SP,#0x30+var_20]
4778EC:  ADD             R0, PC; jpeg_natural_order_ptr
4778EE:  STRD.W          R12, R1, [SP,#0x30+var_30]
4778F2:  LDR             R6, [R0]; jpeg_natural_order
4778F4:  ADD.W           R0, R3, R5,LSL#2
4778F8:  LDR.W           R9, [R1,R5,LSL#2]
4778FC:  LDR.W           R0, [R0,#0x104]
477900:  LDRSH.W         LR, [R9]
477904:  ADD.W           R1, R3, R0,LSL#2
477908:  ADD.W           R11, R12, R0,LSL#2
47790C:  LDR.W           R2, [R1,#0xE8]
477910:  LDR.W           R0, [R11,#0x14]!
477914:  LDRD.W          R1, R2, [R2,#0x14]
477918:  ADD.W           R2, R12, R2,LSL#2
47791C:  SUBS.W          R0, LR, R0
477920:  IT MI
477922:  NEGMI           R0, R0
477924:  ADD.W           R1, R12, R1,LSL#2
477928:  LDR.W           R8, [R2,#0x5C]
47792C:  CMP             R0, #0
47792E:  LDR.W           R10, [R1,#0x4C]
477932:  STRD.W          R11, R5, [SP,#0x30+var_28]
477936:  BEQ             loc_477960
477938:  MOV.W           R1, #0xFFFFFFFF
47793C:  ADDS            R1, #1
47793E:  ASRS            R2, R0, #1
477940:  CMP.W           R4, R0,ASR#1
477944:  MOV             R0, R2
477946:  BNE             loc_47793C
477948:  ADDS            R5, R1, #1
47794A:  CMP             R1, #0xB
47794C:  BLT             loc_477962
47794E:  LDR             R0, [R3]
477950:  MOVS            R1, #6
477952:  STR             R1, [R0,#0x14]
477954:  LDR             R0, [R3]
477956:  LDR             R1, [R0]
477958:  MOV             R0, R3
47795A:  BLX             R1
47795C:  LDR             R3, [SP,#0x30+var_20]
47795E:  B               loc_477962
477960:  MOVS            R5, #0
477962:  LDR.W           R0, [R10,R5,LSL#2]
477966:  MOV.W           R11, #0
47796A:  ADDS            R0, #1
47796C:  STR.W           R0, [R10,R5,LSL#2]
477970:  MOV.W           R10, #1
477974:  LDR.W           R0, [R6,R10,LSL#2]
477978:  LDRSH.W         R0, [R9,R0,LSL#1]
47797C:  CBZ             R0, loc_4779EE
47797E:  CMP.W           R11, #0x10
477982:  BLT             loc_4779B0
477984:  MVN.W           R2, R11
477988:  CMN.W           R2, #0x20 ; ' '
47798C:  LDR.W           R1, [R8,#0x3C0]
477990:  IT LE
477992:  MOVLE           R2, #0xFFFFFFE0
477996:  ADD             R2, R11
477998:  ADDS            R2, #0x10
47799A:  ADD.W           R1, R1, R2,LSR#4
47799E:  ADDS            R1, #1
4779A0:  STR.W           R1, [R8,#0x3C0]
4779A4:  BIC.W           R1, R2, #0xF
4779A8:  SUB.W           R2, R11, #0x10
4779AC:  SUB.W           R11, R2, R1
4779B0:  CMP             R0, #0
4779B2:  MOV.W           R5, #0
4779B6:  IT LT
4779B8:  NEGLT           R0, R0
4779BA:  ADDS            R5, #1
4779BC:  ASRS            R1, R0, #1
4779BE:  CMP.W           R4, R0,ASR#1
4779C2:  MOV             R0, R1
4779C4:  BNE             loc_4779BA
4779C6:  CMP             R5, #0xB
4779C8:  BLT             loc_4779DA
4779CA:  LDR             R0, [R3]
4779CC:  MOVS            R1, #6
4779CE:  STR             R1, [R0,#0x14]
4779D0:  LDR             R0, [R3]
4779D2:  LDR             R1, [R0]
4779D4:  MOV             R0, R3
4779D6:  BLX             R1
4779D8:  LDR             R3, [SP,#0x30+var_20]
4779DA:  ADD.W           R0, R8, R11,LSL#6
4779DE:  MOV.W           R11, #0
4779E2:  LDR.W           R1, [R0,R5,LSL#2]
4779E6:  ADDS            R1, #1
4779E8:  STR.W           R1, [R0,R5,LSL#2]
4779EC:  B               loc_4779F2
4779EE:  ADD.W           R11, R11, #1
4779F2:  ADD.W           R10, R10, #1
4779F6:  CMP.W           R10, #0x40 ; '@'
4779FA:  BNE             loc_477974
4779FC:  CMP.W           R11, #1
477A00:  ITTT GE
477A02:  LDRGE.W         R0, [R8]
477A06:  ADDGE           R0, #1
477A08:  STRGE.W         R0, [R8]
477A0C:  LDR             R1, [SP,#0x30+var_2C]
477A0E:  LDR             R5, [SP,#0x30+var_24]
477A10:  LDR             R2, [SP,#0x30+var_28]
477A12:  LDR.W           R0, [R1,R5,LSL#2]
477A16:  ADDS            R5, #1
477A18:  LDRSH.W         R0, [R0]
477A1C:  STR             R0, [R2]
477A1E:  LDR.W           R0, [R3,#0x100]
477A22:  LDR.W           R12, [SP,#0x30+var_30]
477A26:  CMP             R5, R0
477A28:  BLT.W           loc_4778F4
477A2C:  MOVS            R0, #1
477A2E:  ADD             SP, SP, #0x14
477A30:  POP.W           {R8-R11}
477A34:  POP             {R4-R7,PC}
