; =========================================================
; Game Engine Function: _rpSkinSplitDataCreate
; Address            : 0x1C78A8 - 0x1C7928
; =========================================================

1C78A8:  PUSH            {R4-R7,LR}
1C78AA:  ADD             R7, SP, #0xC
1C78AC:  PUSH.W          {R8-R11}
1C78B0:  SUB             SP, SP, #4
1C78B2:  MOV             R4, R0
1C78B4:  LDR.W           R11, [R7,#arg_0]
1C78B8:  LDR             R0, [R4,#0x2C]
1C78BA:  MOV             R10, R3
1C78BC:  MOV             R9, R2
1C78BE:  MOV             R8, R1
1C78C0:  CBZ             R0, loc_1C78D0
1C78C2:  LDR             R1, =(RwEngineInstance_ptr - 0x1C78C8)
1C78C4:  ADD             R1, PC; RwEngineInstance_ptr
1C78C6:  LDR             R1, [R1]; RwEngineInstance
1C78C8:  LDR             R1, [R1]
1C78CA:  LDR.W           R1, [R1,#0x130]
1C78CE:  BLX             R1
1C78D0:  LDR             R0, =(RwEngineInstance_ptr - 0x1C78E0)
1C78D2:  VMOV.I32        Q8, #0
1C78D6:  ADD.W           R1, R4, #0x20 ; ' '
1C78DA:  MOVS            R5, #0
1C78DC:  ADD             R0, PC; RwEngineInstance_ptr
1C78DE:  STRD.W          R5, R5, [R4,#0x30]
1C78E2:  VST1.32         {D16-D17}, [R1]
1C78E6:  ADD.W           R1, R9, R10,LSL#1
1C78EA:  ADD.W           R6, R1, R11,LSL#1
1C78EE:  LDR             R0, [R0]; RwEngineInstance
1C78F0:  LDR             R0, [R0]
1C78F2:  LDR.W           R2, [R0,#0x12C]
1C78F6:  MOV             R0, R6
1C78F8:  BLX             R2
1C78FA:  CMP             R0, #0
1C78FC:  STR             R0, [R4,#0x2C]
1C78FE:  BEQ             loc_1C791E
1C7900:  MOV             R1, R6
1C7902:  MOV.W           R5, R10,LSL#1
1C7906:  BLX             j___aeabi_memclr8_1
1C790A:  LDR             R0, [R4,#0x2C]
1C790C:  ADD.W           R1, R4, #0x20 ; ' '
1C7910:  STM.W           R1, {R8,R10,R11}
1C7914:  ADD             R0, R9
1C7916:  ADDS            R1, R0, R5
1C7918:  MOV             R5, R4
1C791A:  STRD.W          R0, R1, [R4,#0x30]
1C791E:  MOV             R0, R5
1C7920:  ADD             SP, SP, #4
1C7922:  POP.W           {R8-R11}
1C7926:  POP             {R4-R7,PC}
