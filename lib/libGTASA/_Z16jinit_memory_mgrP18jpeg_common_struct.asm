; =========================================================
; Game Engine Function: _Z16jinit_memory_mgrP18jpeg_common_struct
; Address            : 0x480D7C - 0x480E6A
; =========================================================

480D7C:  PUSH            {R4-R7,LR}
480D7E:  ADD             R7, SP, #0xC
480D80:  PUSH.W          {R8-R10}
480D84:  SUB             SP, SP, #8
480D86:  MOV             R5, R0
480D88:  MOVS            R6, #0
480D8A:  STR             R6, [R5,#4]
480D8C:  BLX             j__Z13jpeg_mem_initP18jpeg_common_struct; jpeg_mem_init(jpeg_common_struct *)
480D90:  STR             R0, [SP,#0x20+var_1C]
480D92:  MOV             R0, R5; int
480D94:  MOVS            R1, #0x54 ; 'T'; byte_count
480D96:  MOV.W           R8, #0x54 ; 'T'
480D9A:  BLX             j__Z14jpeg_get_smallP18jpeg_common_structj; jpeg_get_small(jpeg_common_struct *,uint)
480D9E:  MOV             R4, R0
480DA0:  CBNZ            R4, loc_480DBA
480DA2:  MOV             R0, R5
480DA4:  BLX             j__Z13jpeg_mem_termP18jpeg_common_struct; jpeg_mem_term(jpeg_common_struct *)
480DA8:  LDR             R0, [R5]
480DAA:  MOVS            R1, #0x36 ; '6'
480DAC:  STR             R1, [R0,#0x14]
480DAE:  LDR             R0, [R5]
480DB0:  STR             R6, [R0,#0x18]
480DB2:  LDR             R0, [R5]
480DB4:  LDR             R1, [R0]
480DB6:  MOV             R0, R5
480DB8:  BLX             R1
480DBA:  LDR             R0, =(sub_480FD4+1 - 0x480DCC)
480DBC:  MOVW            R3, #0xCA00
480DC0:  LDR             R1, =(sub_480EA8+1 - 0x480DD2)
480DC2:  MOVT            R3, #0x3B9A
480DC6:  LDR             R2, =(sub_481074+1 - 0x480DD6)
480DC8:  ADD             R0, PC; sub_480FD4
480DCA:  LDR.W           LR, =(sub_481228+1 - 0x480DDA)
480DCE:  ADD             R1, PC; sub_480EA8
480DD0:  STR             R3, [R4,#0x30]
480DD2:  ADD             R2, PC; sub_481074
480DD4:  STR             R0, [R4,#4]
480DD6:  ADD             LR, PC; sub_481228
480DD8:  LDR             R0, =(sub_48163A+1 - 0x480DE6)
480DDA:  LDR.W           R9, =(sub_481122+1 - 0x480DEC)
480DDE:  LDR.W           R12, =(sub_4811D0+1 - 0x480DF0)
480DE2:  ADD             R0, PC; sub_48163A
480DE4:  LDR.W           R10, =(sub_481280+1 - 0x480DF4)
480DE8:  ADD             R9, PC; sub_481122
480DEA:  STR             R1, [R4]
480DEC:  ADD             R12, PC; sub_4811D0
480DEE:  LDR             R1, =(sub_4818A0+1 - 0x480DFA)
480DF0:  ADD             R10, PC; sub_481280
480DF2:  STR             R2, [R4,#8]
480DF4:  LDR             R2, =(sub_481B0E+1 - 0x480E02)
480DF6:  ADD             R1, PC; sub_4818A0
480DF8:  LDR             R3, =(sub_481BFC+1 - 0x480E08)
480DFA:  STR.W           R9, [R4,#0xC]
480DFE:  ADD             R2, PC; sub_481B0E
480E00:  STRD.W          R12, LR, [R4,#0x10]
480E04:  ADD             R3, PC; sub_481BFC
480E06:  STRD.W          R10, R0, [R4,#0x18]
480E0A:  ADD.W           R0, R4, #0x20 ; ' '
480E0E:  STM             R0!, {R1-R3}
480E10:  LDR             R0, [SP,#0x20+var_1C]
480E12:  STR             R0, [R4,#0x2C]
480E14:  ADR             R0, aJpegmem; "JPEGMEM"
480E16:  STRD.W          R6, R6, [R4,#0x34]
480E1A:  STRD.W          R6, R6, [R4,#0x3C]
480E1E:  STRD.W          R6, R6, [R4,#0x44]
480E22:  STR.W           R8, [R4,#0x4C]
480E26:  STR             R4, [R5,#4]
480E28:  BLX             getenv
480E2C:  CBZ             R0, loc_480E62
480E2E:  MOVS            R1, #0x78 ; 'x'
480E30:  ADD             R2, SP, #0x20+var_1C
480E32:  STRB.W          R1, [R7,#var_1D]
480E36:  ADR             R1, aLdC; "%ld%c"
480E38:  SUB.W           R3, R7, #-var_1D
480E3C:  BLX             sscanf
480E40:  CMP             R0, #1
480E42:  BLT             loc_480E62
480E44:  LDRB.W          R0, [R7,#var_1D]
480E48:  ORR.W           R0, R0, #0x20 ; ' '
480E4C:  CMP             R0, #0x6D ; 'm'
480E4E:  LDR             R0, [SP,#0x20+var_1C]
480E50:  ITTT EQ
480E52:  MOVEQ.W         R1, #0x3E8
480E56:  MULEQ           R0, R1
480E58:  STREQ           R0, [SP,#0x20+var_1C]
480E5A:  MOV.W           R1, #0x3E8
480E5E:  MULS            R0, R1
480E60:  STR             R0, [R4,#0x2C]
480E62:  ADD             SP, SP, #8
480E64:  POP.W           {R8-R10}
480E68:  POP             {R4-R7,PC}
