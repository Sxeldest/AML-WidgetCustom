; =========================================================
; Game Engine Function: _ZN10CStreaming4LoadEv
; Address            : 0x487A5C - 0x487AA8
; =========================================================

487A5C:  PUSH            {R4-R7,LR}
487A5E:  ADD             R7, SP, #0xC
487A60:  PUSH.W          {R11}
487A64:  SUB             SP, SP, #8
487A66:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x487A74)
487A68:  SUB.W           R4, R7, #-var_11
487A6C:  MOVW            R6, #0x66CC
487A70:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
487A72:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
487A74:  ADD.W           R5, R0, #0x10
487A78:  MOV             R0, R4; this
487A7A:  MOVS            R1, #(stderr+1); void *
487A7C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
487A80:  LDRB            R0, [R5]
487A82:  CMP             R0, #1
487A84:  BNE             loc_487A98
487A86:  LDRB.W          R0, [R7,#var_11]
487A8A:  CMP             R0, #0xFF
487A8C:  ITTT NE
487A8E:  LDRBNE.W        R1, [R5,#-0xA]
487A92:  ORRNE           R0, R1
487A94:  STRBNE.W        R0, [R5,#-0xA]
487A98:  ADDS            R5, #0x14
487A9A:  SUBS            R6, #1
487A9C:  BNE             loc_487A78
487A9E:  MOVS            R0, #1
487AA0:  ADD             SP, SP, #8
487AA2:  POP.W           {R11}
487AA6:  POP             {R4-R7,PC}
