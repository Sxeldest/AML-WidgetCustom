; =========================================================
; Game Engine Function: _ZN10CStreaming4SaveEv
; Address            : 0x487A0C - 0x487A56
; =========================================================

487A0C:  PUSH            {R4-R7,LR}
487A0E:  ADD             R7, SP, #0xC
487A10:  PUSH.W          {R8}
487A14:  SUB             SP, SP, #8
487A16:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x487A28)
487A18:  SUB.W           R4, R7, #-var_11
487A1C:  MOVW            R6, #0x66CC
487A20:  MOV.W           R8, #0xFF
487A24:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
487A26:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
487A28:  ADD.W           R5, R0, #0x10
487A2C:  LDRB            R0, [R5]
487A2E:  MOVS            R1, #(stderr+1); void *
487A30:  STRB.W          R8, [R7,#var_11]
487A34:  CMP             R0, #1
487A36:  ITT EQ
487A38:  LDRBEQ.W        R0, [R5,#-0xA]
487A3C:  STRBEQ.W        R0, [R7,#var_11]
487A40:  MOV             R0, R4; this
487A42:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487A46:  ADDS            R5, #0x14
487A48:  SUBS            R6, #1
487A4A:  BNE             loc_487A2C
487A4C:  MOVS            R0, #1
487A4E:  ADD             SP, SP, #8
487A50:  POP.W           {R8}
487A54:  POP             {R4-R7,PC}
