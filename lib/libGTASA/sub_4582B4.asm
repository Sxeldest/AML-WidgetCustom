; =========================================================
; Game Engine Function: sub_4582B4
; Address            : 0x4582B4 - 0x4582C2
; =========================================================

4582B4:  PUSH            {R4,R6,R7,LR}
4582B6:  ADD             R7, SP, #8
4582B8:  MOV             R4, R0
4582BA:  BLX             j__Z16RpAtomicInstanceP8RpAtomic; RpAtomicInstance(RpAtomic *)
4582BE:  MOV             R0, R4
4582C0:  POP             {R4,R6,R7,PC}
