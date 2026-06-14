; =========================================================
; Game Engine Function: DedicatedCreate
; Address            : 0x23ED40 - 0x23ED86
; =========================================================

23ED40:  PUSH            {R7,LR}
23ED42:  MOV             R7, SP
23ED44:  MOVS            R0, #0x34 ; '4'; byte_count
23ED46:  BLX             malloc
23ED4A:  MOVS            R1, #0
23ED4C:  CBZ             R0, loc_23ED82
23ED4E:  LDR.W           R12, =(sub_2602EA+1 - 0x23ED60)
23ED52:  VMOV.I32        Q8, #0
23ED56:  LDR.W           LR, =(sub_260346+1 - 0x23ED64)
23ED5A:  LDR             R3, =(j_j_free_0+1 - 0x23ED6C)
23ED5C:  ADD             R12, PC; sub_2602EA
23ED5E:  LDR             R2, =(sub_2602EE+1 - 0x23ED6E)
23ED60:  ADD             LR, PC; sub_260346
23ED62:  STR             R1, [R0,#0x30]
23ED64:  ADD.W           R1, R0, #0x20 ; ' '
23ED68:  ADD             R3, PC; j_j_free_0
23ED6A:  ADD             R2, PC; sub_2602EE
23ED6C:  STRD.W          R3, R12, [R0]
23ED70:  STRD.W          R2, LR, [R0,#8]
23ED74:  VST1.32         {D16-D17}, [R1]
23ED78:  ADD.W           R1, R0, #0x10
23ED7C:  VST1.32         {D16-D17}, [R1]
23ED80:  MOV             R1, R0
23ED82:  MOV             R0, R1
23ED84:  POP             {R7,PC}
