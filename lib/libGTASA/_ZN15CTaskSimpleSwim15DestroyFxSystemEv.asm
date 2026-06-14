; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim15DestroyFxSystemEv
; Address            : 0x53A216 - 0x53A22E
; =========================================================

53A216:  PUSH            {R4,R6,R7,LR}
53A218:  ADD             R7, SP, #8
53A21A:  MOV             R4, R0
53A21C:  LDR             R0, [R4,#0x60]; this
53A21E:  CMP             R0, #0
53A220:  IT EQ
53A222:  POPEQ           {R4,R6,R7,PC}
53A224:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
53A228:  MOVS            R0, #0
53A22A:  STR             R0, [R4,#0x60]
53A22C:  POP             {R4,R6,R7,PC}
