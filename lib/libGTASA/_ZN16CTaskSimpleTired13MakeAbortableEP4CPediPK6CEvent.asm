; =========================================================
; Game Engine Function: _ZN16CTaskSimpleTired13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EBF2C - 0x4EBF54
; =========================================================

4EBF2C:  PUSH            {R4,R5,R7,LR}
4EBF2E:  ADD             R7, SP, #8
4EBF30:  MOV             R4, R0
4EBF32:  LDR             R5, [R4,#0x18]
4EBF34:  CBZ             R5, loc_4EBF42
4EBF36:  LDR             R0, [R1,#0x18]
4EBF38:  MOVS            R1, #0xA
4EBF3A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4EBF3E:  CMP             R5, R0
4EBF40:  BEQ             loc_4EBF46
4EBF42:  MOVS            R0, #1
4EBF44:  POP             {R4,R5,R7,PC}
4EBF46:  LDR             R0, [R4,#0x18]
4EBF48:  MOVS            R1, #0xC0800000
4EBF4E:  STR             R1, [R0,#0x1C]
4EBF50:  MOVS            R0, #1
4EBF52:  POP             {R4,R5,R7,PC}
