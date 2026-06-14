; =========================================================
; Game Engine Function: _Z24_rwFrameSyncHierarchyLTMP7RwFrame
; Address            : 0x1DB268 - 0x1DB2C8
; =========================================================

1DB268:  PUSH            {R4,R5,R7,LR}
1DB26A:  ADD             R7, SP, #8
1DB26C:  MOV             R4, R0
1DB26E:  LDRB            R5, [R4,#3]
1DB270:  TST.W           R5, #4
1DB274:  BEQ             loc_1DB2B6
1DB276:  ADD.W           R0, R4, #0x30 ; '0'
1DB27A:  VLD1.32         {D16-D17}, [R0]
1DB27E:  ADD.W           R0, R4, #0x20 ; ' '
1DB282:  VLD1.32         {D18-D19}, [R0]
1DB286:  ADD.W           R0, R4, #0x10
1DB28A:  VLD1.32         {D20-D21}, [R0]
1DB28E:  ADD.W           R0, R4, #0x40 ; '@'
1DB292:  VLD1.32         {D22-D23}, [R0]
1DB296:  ADD.W           R0, R4, #0x80
1DB29A:  VST1.32         {D22-D23}, [R0]
1DB29E:  ADD.W           R0, R4, #0x70 ; 'p'
1DB2A2:  VST1.32         {D16-D17}, [R0]
1DB2A6:  ADD.W           R0, R4, #0x60 ; '`'
1DB2AA:  VST1.32         {D18-D19}, [R0]
1DB2AE:  ADD.W           R0, R4, #0x50 ; 'P'
1DB2B2:  VST1.32         {D20-D21}, [R0]
1DB2B6:  LDR.W           R0, [R4,#0x98]
1DB2BA:  MOV             R1, R5
1DB2BC:  BL              sub_1DB2C8
1DB2C0:  AND.W           R0, R5, #0xFA
1DB2C4:  STRB            R0, [R4,#3]
1DB2C6:  POP             {R4,R5,R7,PC}
