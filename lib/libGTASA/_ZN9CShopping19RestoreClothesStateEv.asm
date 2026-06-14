; =========================================================
; Game Engine Function: _ZN9CShopping19RestoreClothesStateEv
; Address            : 0x36106C - 0x3610A2
; =========================================================

36106C:  PUSH            {R7,LR}
36106E:  MOV             R7, SP
361070:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x36107C)
361072:  MOV.W           R2, #0x194
361076:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x36107E)
361078:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
36107A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
36107C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
36107E:  LDR             R1, [R1]; CWorld::Players ...
361080:  LDR             R0, [R0]; CWorld::PlayerInFocus
361082:  SMULBB.W        R0, R0, R2
361086:  MOVS            R2, #0x78 ; 'x'; size_t
361088:  LDR             R0, [R1,R0]
36108A:  LDR             R1, =(unk_81FF40 - 0x361094)
36108C:  LDR.W           R0, [R0,#0x444]
361090:  ADD             R1, PC; unk_81FF40 ; void *
361092:  LDR             R0, [R0,#4]; void *
361094:  BLX             memcpy_0
361098:  LDR             R0, =(byte_81FFB8 - 0x3610A0)
36109A:  MOVS            R1, #0
36109C:  ADD             R0, PC; byte_81FFB8
36109E:  STRB            R1, [R0]
3610A0:  POP             {R7,PC}
