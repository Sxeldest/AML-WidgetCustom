; =========================================================
; Game Engine Function: _Z23AttachAtomicsFromListCBP8RpAtomicPv
; Address            : 0x386854 - 0x386892
; =========================================================

386854:  PUSH            {R4-R7,LR}
386856:  ADD             R7, SP, #0xC
386858:  PUSH.W          {R8,R9,R11}
38685C:  MOV             R4, R1
38685E:  MOV             R5, R0
386860:  LDR             R0, [R4]
386862:  LDR             R1, [R5,#4]
386864:  LDR.W           R8, [R5,#0x3C]
386868:  LDR             R6, [R0]
38686A:  MOV             R0, R6
38686C:  LDR.W           R9, [R6,#0x3C]
386870:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
386874:  MOV             R0, R9
386876:  MOV             R1, R6
386878:  BLX             j__Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic; RpClumpRemoveAtomic(RpClump *,RpAtomic *)
38687C:  MOV             R0, R8
38687E:  MOV             R1, R6
386880:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
386884:  LDR             R0, [R4]
386886:  ADDS            R0, #4
386888:  STR             R0, [R4]
38688A:  MOV             R0, R5
38688C:  POP.W           {R8,R9,R11}
386890:  POP             {R4-R7,PC}
