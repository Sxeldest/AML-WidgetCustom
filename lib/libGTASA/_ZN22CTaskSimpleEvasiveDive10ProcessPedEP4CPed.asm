; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveDive10ProcessPedEP4CPed
; Address            : 0x50B1B4 - 0x50B1D4
; =========================================================

50B1B4:  LDRB            R2, [R0,#0xC]
50B1B6:  CMP             R2, #0
50B1B8:  ITT NE
50B1BA:  MOVNE           R0, #1
50B1BC:  BXNE            LR
50B1BE:  LDR             R2, [R0,#0x10]
50B1C0:  CMP             R2, #0
50B1C2:  ITT NE
50B1C4:  MOVNE           R0, #0; this
50B1C6:  BXNE            LR
50B1C8:  PUSH            {R7,LR}
50B1CA:  MOV             R7, SP
50B1CC:  BLX             j__ZN22CTaskSimpleEvasiveDive9StartAnimEP4CPed; CTaskSimpleEvasiveDive::StartAnim(CPed *)
50B1D0:  MOVS            R0, #0
50B1D2:  POP             {R7,PC}
