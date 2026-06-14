; =========================================================
; Game Engine Function: _ZN13CCreepingFire14SetReadyToBurnEv
; Address            : 0x3F35D8 - 0x3F35EC
; =========================================================

3F35D8:  PUSH            {R7,LR}
3F35DA:  MOV             R7, SP
3F35DC:  LDR             R0, =(_ZN13CCreepingFire13m_aFireStatusE_ptr - 0x3F35E6)
3F35DE:  MOV.W           R1, #0x400
3F35E2:  ADD             R0, PC; _ZN13CCreepingFire13m_aFireStatusE_ptr
3F35E4:  LDR             R0, [R0]; CCreepingFire::m_aFireStatus ...
3F35E6:  BLX             j___aeabi_memclr8_1
3F35EA:  POP             {R7,PC}
