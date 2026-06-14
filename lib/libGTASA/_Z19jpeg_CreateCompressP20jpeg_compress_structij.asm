; =========================================================
; Game Engine Function: _Z19jpeg_CreateCompressP20jpeg_compress_structij
; Address            : 0x475DBC - 0x475E5E
; =========================================================

475DBC:  PUSH            {R4-R7,LR}
475DBE:  ADD             R7, SP, #0xC
475DC0:  PUSH.W          {R11}
475DC4:  MOV             R4, R0
475DC6:  MOVS            R0, #0
475DC8:  MOV             R5, R2
475DCA:  CMP             R1, #0x3E ; '>'
475DCC:  STR             R0, [R4,#4]
475DCE:  BEQ             loc_475DE8
475DD0:  LDR             R0, [R4]
475DD2:  MOVS            R2, #0xC
475DD4:  STR             R2, [R0,#0x14]
475DD6:  MOVS            R2, #0x3E ; '>'
475DD8:  LDR             R0, [R4]
475DDA:  STR             R2, [R0,#0x18]
475DDC:  LDR             R0, [R4]
475DDE:  STR             R1, [R0,#0x1C]
475DE0:  LDR             R0, [R4]
475DE2:  LDR             R1, [R0]
475DE4:  MOV             R0, R4
475DE6:  BLX             R1
475DE8:  CMP.W           R5, #0x168
475DEC:  BEQ             loc_475E08
475DEE:  LDR             R0, [R4]
475DF0:  MOVS            R1, #0x15
475DF2:  STR             R1, [R0,#0x14]
475DF4:  MOV.W           R1, #0x168
475DF8:  LDR             R0, [R4]
475DFA:  STR             R1, [R0,#0x18]
475DFC:  LDR             R0, [R4]
475DFE:  STR             R5, [R0,#0x1C]
475E00:  LDR             R0, [R4]
475E02:  LDR             R1, [R0]
475E04:  MOV             R0, R4
475E06:  BLX             R1
475E08:  ADDS            R0, R4, #4
475E0A:  MOV.W           R1, #0x164
475E0E:  LDR             R5, [R4]
475E10:  LDR             R6, [R4,#0xC]
475E12:  BLX             j___aeabi_memclr8_1
475E16:  STR             R6, [R4,#0xC]
475E18:  MOV             R0, R4
475E1A:  STR             R5, [R4]
475E1C:  MOVS            R5, #0
475E1E:  STRB            R5, [R4,#0x10]
475E20:  BLX             j__Z16jinit_memory_mgrP18jpeg_common_struct; jinit_memory_mgr(jpeg_common_struct *)
475E24:  VMOV.I32        Q8, #0
475E28:  ADD.W           R0, R4, #0x64 ; 'd'
475E2C:  VST1.32         {D16-D17}, [R0]
475E30:  ADD.W           R0, R4, #0x54 ; 'T'
475E34:  VST1.32         {D16-D17}, [R0]
475E38:  ADD.W           R0, R4, #0x44 ; 'D'
475E3C:  VST1.32         {D16-D17}, [R0]
475E40:  MOVS            R0, #0x3FF00000
475E46:  STR             R5, [R4,#8]
475E48:  STR.W           R5, [R4,#0x160]
475E4C:  STR             R5, [R4,#0x74]
475E4E:  STRD.W          R5, R0, [R4,#0x30]
475E52:  MOVS            R0, #0x64 ; 'd'
475E54:  STRD.W          R0, R5, [R4,#0x14]
475E58:  POP.W           {R11}
475E5C:  POP             {R4-R7,PC}
