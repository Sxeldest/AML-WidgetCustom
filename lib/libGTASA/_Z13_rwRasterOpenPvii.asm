; =========================================================
; Game Engine Function: _Z13_rwRasterOpenPvii
; Address            : 0x1DAB90 - 0x1DAC56
; =========================================================

1DAB90:  PUSH            {R4-R7,LR}
1DAB92:  ADD             R7, SP, #0xC
1DAB94:  PUSH.W          {R8,R9,R11}
1DAB98:  SUB             SP, SP, #8
1DAB9A:  MOV             R8, R0
1DAB9C:  LDR             R0, =(RwEngineInstance_ptr - 0x1DABAA)
1DAB9E:  LDR.W           R9, =(dword_6BCF30 - 0x1DABAE)
1DABA2:  VMOV.I32        Q8, #0
1DABA6:  ADD             R0, PC; RwEngineInstance_ptr
1DABA8:  MOVS            R5, #0
1DABAA:  ADD             R9, PC; dword_6BCF30
1DABAC:  LDR.W           R12, =(dword_6825B4 - 0x1DABBA)
1DABB0:  LDR             R6, [R0]; RwEngineInstance
1DABB2:  STR.W           R1, [R9]
1DABB6:  ADD             R12, PC; dword_6825B4
1DABB8:  LDR             R4, =(dword_6825B0 - 0x1DABC0)
1DABBA:  LDR             R0, [R6]
1DABBC:  ADD             R4, PC; dword_6825B0
1DABBE:  ADD             R0, R1
1DABC0:  ADD.W           R2, R0, #0x4C ; 'L'
1DABC4:  STR             R5, [R0,#0x5C]
1DABC6:  VST1.32         {D16-D17}, [R2]
1DABCA:  ADD.W           R2, R0, #0x3C ; '<'
1DABCE:  ADDS            R0, #0x2C ; ','
1DABD0:  VST1.32         {D16-D17}, [R2]
1DABD4:  MOVS            R2, #0x80
1DABD6:  VST1.32         {D16-D17}, [R0]
1DABDA:  LDR             R0, [R6]
1DABDC:  ADD             R0, R1
1DABDE:  STR             R5, [R0,#0x38]
1DABE0:  LDR             R0, [R6]
1DABE2:  ADD             R0, R1
1DABE4:  STR             R5, [R0,#0x3C]
1DABE6:  LDR             R0, [R6]
1DABE8:  ADD             R0, R1
1DABEA:  STR             R5, [R0,#0x40]
1DABEC:  LDR             R0, [R6]
1DABEE:  ADD             R0, R1
1DABF0:  STRB.W          R2, [R0,#0x4D]
1DABF4:  LDR             R0, [R6]
1DABF6:  LDR             R2, =(dword_682598 - 0x1DABFE)
1DABF8:  ADD             R0, R1
1DABFA:  ADD             R2, PC; dword_682598
1DABFC:  STR             R5, [R0,#0x30]
1DABFE:  LDR             R0, [R6]
1DAC00:  ADD             R0, R1
1DAC02:  STR             R5, [R0,#0x34]
1DAC04:  LDR             R0, [R6]
1DAC06:  ADD             R0, R1
1DAC08:  STRB.W          R5, [R0,#0x4C]
1DAC0C:  LDR             R0, [R6]
1DAC0E:  ADD             R0, R1
1DAC10:  STR             R5, [R0,#0x28]
1DAC12:  LDR             R0, [R6]
1DAC14:  ADDS            R3, R0, R1
1DAC16:  ADDS            R3, #0x2C ; ','
1DAC18:  STR             R3, [R0,R1]
1DAC1A:  LDR             R0, [R2]
1DAC1C:  LDR             R2, =(unk_6BCF0C - 0x1DAC28)
1DAC1E:  LDR.W           R3, [R12]
1DAC22:  LDR             R1, [R4]
1DAC24:  ADD             R2, PC; unk_6BCF0C
1DAC26:  STR             R2, [SP,#0x20+var_20]
1DAC28:  MOVS            R2, #4
1DAC2A:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1DAC2E:  LDR.W           R1, [R9]
1DAC32:  LDR             R2, [R6]
1DAC34:  ADD             R2, R1
1DAC36:  STR             R0, [R2,#0x60]
1DAC38:  LDR             R0, [R6]
1DAC3A:  ADD             R0, R1
1DAC3C:  LDR             R0, [R0,#0x60]
1DAC3E:  CBZ             R0, loc_1DAC4C
1DAC40:  LDR             R0, =(dword_6BCF34 - 0x1DAC48)
1DAC42:  MOV             R5, R8
1DAC44:  ADD             R0, PC; dword_6BCF34
1DAC46:  LDR             R1, [R0]
1DAC48:  ADDS            R1, #1
1DAC4A:  STR             R1, [R0]
1DAC4C:  MOV             R0, R5
1DAC4E:  ADD             SP, SP, #8
1DAC50:  POP.W           {R8,R9,R11}
1DAC54:  POP             {R4-R7,PC}
