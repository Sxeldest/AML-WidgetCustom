; =========================================================
; Game Engine Function: _ZN8CAESoundD2Ev
; Address            : 0x3A7A1C - 0x3A7A38
; =========================================================

3A7A1C:  PUSH            {R4,R5,R7,LR}
3A7A1E:  ADD             R7, SP, #8
3A7A20:  MOV             R4, R0
3A7A22:  MOV             R5, R4
3A7A24:  LDR.W           R0, [R5,#8]!; this
3A7A28:  CBZ             R0, loc_3A7A34
3A7A2A:  MOV             R1, R5; CEntity **
3A7A2C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3A7A30:  MOVS            R0, #0
3A7A32:  STR             R0, [R5]
3A7A34:  MOV             R0, R4
3A7A36:  POP             {R4,R5,R7,PC}
