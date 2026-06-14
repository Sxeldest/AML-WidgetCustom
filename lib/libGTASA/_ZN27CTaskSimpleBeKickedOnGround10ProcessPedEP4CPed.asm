; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeKickedOnGround10ProcessPedEP4CPed
; Address            : 0x4DF278 - 0x4DF298
; =========================================================

4DF278:  LDRB            R2, [R0,#8]
4DF27A:  CMP             R2, #0
4DF27C:  ITT NE
4DF27E:  MOVNE           R0, #1
4DF280:  BXNE            LR
4DF282:  LDR             R2, [R0,#0xC]
4DF284:  CMP             R2, #0
4DF286:  ITT NE
4DF288:  MOVNE           R0, #0; this
4DF28A:  BXNE            LR
4DF28C:  PUSH            {R7,LR}
4DF28E:  MOV             R7, SP
4DF290:  BLX             j__ZN27CTaskSimpleBeKickedOnGround9StartAnimEP4CPed; CTaskSimpleBeKickedOnGround::StartAnim(CPed *)
4DF294:  MOVS            R0, #0
4DF296:  POP             {R7,PC}
