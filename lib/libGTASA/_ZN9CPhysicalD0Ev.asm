; =========================================================
; Game Engine Function: _ZN9CPhysicalD0Ev
; Address            : 0x3FCD54 - 0x3FCD8E
; =========================================================

3FCD54:  PUSH            {R4,R6,R7,LR}
3FCD56:  ADD             R7, SP, #8
3FCD58:  MOV             R4, R0
3FCD5A:  LDR             R0, =(_ZTV9CPhysical_ptr - 0x3FCD64)
3FCD5C:  LDR.W           R1, [R4,#0x138]
3FCD60:  ADD             R0, PC; _ZTV9CPhysical_ptr
3FCD62:  CMP             R1, #0
3FCD64:  LDR             R0, [R0]; `vtable for'CPhysical ...
3FCD66:  ADD.W           R0, R0, #8
3FCD6A:  STR             R0, [R4]
3FCD6C:  BEQ             loc_3FCD78
3FCD6E:  LDR             R0, =(g_realTimeShadowMan_ptr - 0x3FCD74)
3FCD70:  ADD             R0, PC; g_realTimeShadowMan_ptr
3FCD72:  LDR             R0, [R0]; g_realTimeShadowMan
3FCD74:  NOP
3FCD76:  NOP
3FCD78:  ADD.W           R0, R4, #0xB4; this
3FCD7C:  BLX             j__ZN14CEntryInfoList5FlushEv; CEntryInfoList::Flush(void)
3FCD80:  MOV             R0, R4; this
3FCD82:  BLX             j__ZN7CEntityD2Ev; CEntity::~CEntity()
3FCD86:  POP.W           {R4,R6,R7,LR}
3FCD8A:  B.W             j__ZdlPv; operator delete(void *)
