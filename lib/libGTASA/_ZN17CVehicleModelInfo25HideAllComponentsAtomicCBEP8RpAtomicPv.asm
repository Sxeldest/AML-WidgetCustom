; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo25HideAllComponentsAtomicCBEP8RpAtomicPv
; Address            : 0x387EFC - 0x387F18
; =========================================================

387EFC:  PUSH            {R4,R5,R7,LR}
387EFE:  ADD             R7, SP, #8
387F00:  MOV             R4, R1
387F02:  MOV             R5, R0
387F04:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
387F08:  TST             R0, R4
387F0A:  MOV.W           R1, #4
387F0E:  IT NE
387F10:  MOVNE           R1, #0
387F12:  MOV             R0, R5
387F14:  STRB            R1, [R5,#2]
387F16:  POP             {R4,R5,R7,PC}
