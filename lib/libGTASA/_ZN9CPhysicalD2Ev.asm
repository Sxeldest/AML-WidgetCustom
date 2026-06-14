; =========================================================
; Game Engine Function: _ZN9CPhysicalD2Ev
; Address            : 0x3FCD14 - 0x3FCD4A
; =========================================================

3FCD14:  PUSH            {R4,R6,R7,LR}
3FCD16:  ADD             R7, SP, #8
3FCD18:  MOV             R4, R0
3FCD1A:  LDR             R0, =(_ZTV9CPhysical_ptr - 0x3FCD24)
3FCD1C:  LDR.W           R1, [R4,#0x138]
3FCD20:  ADD             R0, PC; _ZTV9CPhysical_ptr
3FCD22:  CMP             R1, #0
3FCD24:  LDR             R0, [R0]; `vtable for'CPhysical ...
3FCD26:  ADD.W           R0, R0, #8
3FCD2A:  STR             R0, [R4]
3FCD2C:  BEQ             loc_3FCD38
3FCD2E:  LDR             R0, =(g_realTimeShadowMan_ptr - 0x3FCD34)
3FCD30:  ADD             R0, PC; g_realTimeShadowMan_ptr
3FCD32:  LDR             R0, [R0]; g_realTimeShadowMan
3FCD34:  NOP
3FCD36:  NOP
3FCD38:  ADD.W           R0, R4, #0xB4; this
3FCD3C:  BLX             j__ZN14CEntryInfoList5FlushEv; CEntryInfoList::Flush(void)
3FCD40:  MOV             R0, R4; this
3FCD42:  POP.W           {R4,R6,R7,LR}
3FCD46:  B.W             sub_19CC14
