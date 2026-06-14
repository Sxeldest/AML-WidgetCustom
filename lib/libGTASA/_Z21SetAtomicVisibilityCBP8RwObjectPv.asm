; =========================================================
; Game Engine Function: _Z21SetAtomicVisibilityCBP8RwObjectPv
; Address            : 0x4A4BFA - 0x4A4C16
; =========================================================

4A4BFA:  PUSH            {R4,R5,R7,LR}
4A4BFC:  ADD             R7, SP, #8
4A4BFE:  MOV             R4, R1
4A4C00:  MOV             R5, R0
4A4C02:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
4A4C06:  CMP             R0, R4
4A4C08:  MOV.W           R1, #0
4A4C0C:  IT EQ
4A4C0E:  MOVEQ           R1, #4
4A4C10:  MOV             R0, R5
4A4C12:  STRB            R1, [R5,#2]
4A4C14:  POP             {R4,R5,R7,PC}
