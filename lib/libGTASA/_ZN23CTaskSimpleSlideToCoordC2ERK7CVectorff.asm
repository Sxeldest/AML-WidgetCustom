; =========================================================
; Game Engine Function: _ZN23CTaskSimpleSlideToCoordC2ERK7CVectorff
; Address            : 0x5260EC - 0x52613C
; =========================================================

5260EC:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleSlideToCoord::CTaskSimpleSlideToCoord(CVector const&, float, float)'
5260EE:  ADD             R7, SP, #0xC
5260F0:  PUSH.W          {R8}
5260F4:  MOV             R6, R1
5260F6:  MOVS            R1, #0; bool
5260F8:  MOV             R8, R3
5260FA:  MOV             R5, R2
5260FC:  MOVS            R4, #0
5260FE:  BLX             j__ZN15CTaskSimpleAnimC2Eb; CTaskSimpleAnim::CTaskSimpleAnim(bool)
526102:  LDR             R1, =(_ZTV23CTaskSimpleSlideToCoord_ptr - 0x526110)
526104:  ADD.W           R3, R0, #0x6C ; 'l'
526108:  STRH.W          R4, [R0,#0x4C]
52610C:  ADD             R1, PC; _ZTV23CTaskSimpleSlideToCoord_ptr
52610E:  STRD.W          R4, R4, [R0,#0x44]
526112:  LDR             R1, [R1]; `vtable for'CTaskSimpleSlideToCoord ...
526114:  ADDS            R1, #8
526116:  STR             R1, [R0]
526118:  LDR             R1, [R6,#8]
52611A:  LDRB.W          R2, [R0,#0x78]
52611E:  VLDR            D16, [R6]
526122:  STM.W           R3, {R1,R5,R8}
526126:  AND.W           R1, R2, #0xFC
52612A:  ORR.W           R1, R1, #1
52612E:  STRB.W          R1, [R0,#0x78]
526132:  VSTR            D16, [R0,#0x64]
526136:  POP.W           {R8}
52613A:  POP             {R4-R7,PC}
