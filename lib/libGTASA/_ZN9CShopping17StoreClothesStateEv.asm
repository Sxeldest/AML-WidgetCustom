; =========================================================
; Game Engine Function: _ZN9CShopping17StoreClothesStateEv
; Address            : 0x361024 - 0x36105A
; =========================================================

361024:  PUSH            {R7,LR}
361026:  MOV             R7, SP
361028:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x361034)
36102A:  MOV.W           R2, #0x194
36102E:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x361036)
361030:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
361032:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
361034:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
361036:  LDR             R1, [R1]; CWorld::Players ...
361038:  LDR             R0, [R0]; CWorld::PlayerInFocus
36103A:  SMULBB.W        R0, R0, R2
36103E:  MOVS            R2, #0x78 ; 'x'; size_t
361040:  LDR             R0, [R1,R0]
361042:  LDR.W           R0, [R0,#0x444]
361046:  LDR             R1, [R0,#4]; void *
361048:  LDR             R0, =(unk_81FF40 - 0x36104E)
36104A:  ADD             R0, PC; unk_81FF40 ; void *
36104C:  BLX             memcpy_0
361050:  LDR             R0, =(byte_81FFB8 - 0x361058)
361052:  MOVS            R1, #1
361054:  ADD             R0, PC; byte_81FFB8
361056:  STRB            R1, [R0]
361058:  POP             {R7,PC}
