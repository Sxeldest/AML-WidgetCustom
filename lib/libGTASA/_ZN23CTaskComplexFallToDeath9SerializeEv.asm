; =========================================================
; Game Engine Function: _ZN23CTaskComplexFallToDeath9SerializeEv
; Address            : 0x532FE4 - 0x5330F0
; =========================================================

532FE4:  PUSH            {R4-R7,LR}
532FE6:  ADD             R7, SP, #0xC
532FE8:  PUSH.W          {R11}
532FEC:  SUB             SP, SP, #8
532FEE:  MOV             R4, R0
532FF0:  LDR             R0, [R4]
532FF2:  LDR             R1, [R0,#0x14]
532FF4:  MOV             R0, R4
532FF6:  BLX             R1
532FF8:  MOV             R5, R0
532FFA:  LDR             R0, =(UseDataFence_ptr - 0x533000)
532FFC:  ADD             R0, PC; UseDataFence_ptr
532FFE:  LDR             R0, [R0]; UseDataFence
533000:  LDRB            R0, [R0]
533002:  CMP             R0, #0
533004:  IT NE
533006:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53300A:  MOVS            R0, #4; byte_count
53300C:  BLX             malloc
533010:  MOV             R6, R0
533012:  MOVS            R1, #byte_4; void *
533014:  STR             R5, [R6]
533016:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53301A:  MOV             R0, R6; p
53301C:  BLX             free
533020:  LDR             R0, [R4]
533022:  LDR             R1, [R0,#0x14]
533024:  MOV             R0, R4
533026:  BLX             R1
533028:  MOVW            R1, #0x115
53302C:  CMP             R0, R1
53302E:  BNE             loc_5330D4
533030:  LDR             R0, =(UseDataFence_ptr - 0x533036)
533032:  ADD             R0, PC; UseDataFence_ptr
533034:  LDR             R0, [R0]; UseDataFence
533036:  LDRB            R0, [R0]
533038:  CMP             R0, #0
53303A:  IT NE
53303C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533040:  ADD.W           R0, R4, #0x20 ; ' '; this
533044:  MOVS            R1, #(stderr+1); void *
533046:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53304A:  LDR             R0, =(UseDataFence_ptr - 0x533050)
53304C:  ADD             R0, PC; UseDataFence_ptr
53304E:  LDR             R0, [R0]; UseDataFence
533050:  LDRB            R0, [R0]
533052:  CMP             R0, #0
533054:  IT NE
533056:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53305A:  MOVS            R0, #0xC; byte_count
53305C:  BLX             malloc
533060:  ADD.W           R1, R4, #0xC
533064:  MOV             R5, R0
533066:  LDR             R0, [R4,#0x14]
533068:  VLD1.8          {D16}, [R1]
53306C:  MOVS            R1, #(byte_9+3); void *
53306E:  STR             R0, [R5,#8]
533070:  MOV             R0, R5; this
533072:  VST1.8          {D16}, [R5]
533076:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53307A:  MOV             R0, R5; p
53307C:  BLX             free
533080:  LDR             R0, =(UseDataFence_ptr - 0x53308A)
533082:  LDRB.W          R1, [R4,#0x21]
533086:  ADD             R0, PC; UseDataFence_ptr
533088:  LDR             R0, [R0]; UseDataFence
53308A:  LDRB            R0, [R0]
53308C:  UBFX.W          R1, R1, #3, #1
533090:  STRB.W          R1, [R7,#var_11]
533094:  CMP             R0, #0
533096:  IT NE
533098:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53309C:  SUB.W           R0, R7, #-var_11; this
5330A0:  MOVS            R1, #(stderr+1); void *
5330A2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5330A6:  LDR             R0, =(UseDataFence_ptr - 0x5330B0)
5330A8:  LDRB.W          R1, [R4,#0x21]
5330AC:  ADD             R0, PC; UseDataFence_ptr
5330AE:  LDR             R0, [R0]; UseDataFence
5330B0:  LDRB            R0, [R0]
5330B2:  UBFX.W          R1, R1, #4, #1
5330B6:  STRB.W          R1, [R7,#var_12]
5330BA:  CMP             R0, #0
5330BC:  IT NE
5330BE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5330C2:  SUB.W           R0, R7, #-var_12; this
5330C6:  MOVS            R1, #(stderr+1); void *
5330C8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5330CC:  ADD             SP, SP, #8
5330CE:  POP.W           {R11}
5330D2:  POP             {R4-R7,PC}
5330D4:  LDR             R0, [R4]
5330D6:  LDR             R1, [R0,#0x14]
5330D8:  MOV             R0, R4
5330DA:  BLX             R1
5330DC:  MOV             R1, R0; int
5330DE:  MOVW            R0, #0x115; int
5330E2:  ADD             SP, SP, #8
5330E4:  POP.W           {R11}
5330E8:  POP.W           {R4-R7,LR}
5330EC:  B.W             sub_1941D4
