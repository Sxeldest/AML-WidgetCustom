; =========================================================
; Game Engine Function: _ZN6CWorld27GetIsLineOfSightSectorClearER7CSectorR13CRepeatSectorRK8CColLinebbbbbbb
; Address            : 0x424AA8 - 0x424B44
; =========================================================

424AA8:  PUSH            {R4-R7,LR}
424AAA:  ADD             R7, SP, #0xC
424AAC:  PUSH.W          {R8,R9,R11}; bool
424AB0:  LDR.W           R8, [R7,#arg_10]
424AB4:  MOV             R4, R2
424AB6:  MOV             R5, R1
424AB8:  MOV             R9, R0
424ABA:  CMP             R3, #1
424ABC:  BNE             loc_424AD0
424ABE:  MOV             R0, R9; this
424AC0:  MOV             R1, R4; CPtrList *
424AC2:  MOV             R2, R8; CColLine *
424AC4:  MOVS            R3, #0; bool
424AC6:  MOVS            R6, #0
424AC8:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424ACC:  CMP             R0, #1
424ACE:  BNE             loc_424B3C
424AD0:  LDR             R0, [R7,#arg_0]
424AD2:  CMP             R0, #1
424AD4:  BNE             loc_424AE8
424AD6:  MOV             R0, R5; this
424AD8:  MOV             R1, R4; CPtrList *
424ADA:  MOV             R2, R8; CColLine *
424ADC:  MOVS            R3, #0; bool
424ADE:  MOVS            R6, #0
424AE0:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424AE4:  CMP             R0, #1
424AE6:  BNE             loc_424B3C
424AE8:  LDR             R0, [R7,#arg_4]
424AEA:  CMP             R0, #1
424AEC:  BNE             loc_424B00
424AEE:  ADDS            R0, R5, #4; this
424AF0:  MOV             R1, R4; CPtrList *
424AF2:  MOV             R2, R8; CColLine *
424AF4:  MOVS            R3, #0; bool
424AF6:  MOVS            R6, #0
424AF8:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424AFC:  CMP             R0, #1
424AFE:  BNE             loc_424B3C
424B00:  LDR             R0, [R7,#arg_8]
424B02:  CMP             R0, #1
424B04:  BNE             loc_424B18
424B06:  LDR             R3, [R7,#arg_14]; bool
424B08:  ADD.W           R0, R5, #8; this
424B0C:  MOV             R1, R4; CPtrList *
424B0E:  MOV             R2, R8; CColLine *
424B10:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424B14:  CMP             R0, #1
424B16:  BNE             loc_424B3A
424B18:  LDR             R0, [R7,#arg_C]
424B1A:  CMP             R0, #1
424B1C:  BNE             loc_424B36
424B1E:  ADD.W           R0, R9, #4; this
424B22:  MOV             R1, R4; CPtrList *
424B24:  MOV             R2, R8; CColLine *
424B26:  MOVS            R3, #0; bool
424B28:  MOVS            R6, #0
424B2A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424B2E:  CMP             R0, #1
424B30:  IT EQ
424B32:  MOVEQ           R6, #1
424B34:  B               loc_424B3C
424B36:  MOVS            R6, #1
424B38:  B               loc_424B3C
424B3A:  MOVS            R6, #0
424B3C:  MOV             R0, R6
424B3E:  POP.W           {R8,R9,R11}
424B42:  POP             {R4-R7,PC}
