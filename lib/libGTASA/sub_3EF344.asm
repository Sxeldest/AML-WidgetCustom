; =========================================================
; Game Engine Function: sub_3EF344
; Address            : 0x3EF344 - 0x3EF372
; =========================================================

3EF344:  PUSH            {R4-R7,LR}
3EF346:  ADD             R7, SP, #0xC
3EF348:  PUSH.W          {R11}
3EF34C:  MOV             R4, R1
3EF34E:  MOV             R5, R0
3EF350:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
3EF354:  MOV             R6, R0
3EF356:  LDR             R0, [R5,#4]
3EF358:  LDR.W           R1, [R0,#0xA0]
3EF35C:  MOV             R0, R6
3EF35E:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
3EF362:  MOV             R0, R4
3EF364:  MOV             R1, R6
3EF366:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
3EF36A:  MOV             R0, R5
3EF36C:  POP.W           {R11}
3EF370:  POP             {R4-R7,PC}
