; =========================================================
; Game Engine Function: _Z15RsSetPresetViewP8RwCamerai
; Address            : 0x4D4630 - 0x4D46C0
; =========================================================

4D4630:  PUSH            {R4-R7,LR}
4D4632:  ADD             R7, SP, #0xC
4D4634:  PUSH.W          {R11}
4D4638:  MOV             R4, R0
4D463A:  MOVS            R0, #0
4D463C:  CBZ             R4, loc_4D46BA
4D463E:  LDR             R2, =(dword_9FC940 - 0x4D4644)
4D4640:  ADD             R2, PC; dword_9FC940
4D4642:  LDR             R2, [R2]
4D4644:  CBZ             R2, loc_4D46BA
4D4646:  CMP             R1, #0
4D4648:  MOV.W           R0, #0
4D464C:  IT GE
4D464E:  CMPGE           R2, R1
4D4650:  BLE             loc_4D46BA
4D4652:  LDR             R0, =(dword_6B0350 - 0x4D465A)
4D4654:  LDR             R3, =(dword_9FC944 - 0x4D465C)
4D4656:  ADD             R0, PC; dword_6B0350
4D4658:  ADD             R3, PC; dword_9FC944
4D465A:  STR             R1, [R0]
4D465C:  SUBS            R0, R2, R1
4D465E:  LDR             R5, [R3]
4D4660:  CMP             R0, #2
4D4662:  LDR             R6, [R4,#4]
4D4664:  BGE             loc_4D466A
4D4666:  B               loc_4D4672
4D4668:  SUBS            R0, #1
4D466A:  CBZ             R5, loc_4D4672
4D466C:  LDR             R5, [R5,#0x20]
4D466E:  CMP             R0, #3
4D4670:  BGE             loc_4D4668
4D4672:  MOV             R0, R6
4D4674:  BLX             j__Z18RwFrameSetIdentityP7RwFrame; RwFrameSetIdentity(RwFrame *)
4D4678:  LDR             R1, =(unk_6B0354 - 0x4D4682)
4D467A:  MOVS            R3, #0
4D467C:  LDR             R0, [R5,#0xC]
4D467E:  ADD             R1, PC; unk_6B0354
4D4680:  EOR.W           R2, R0, #0x80000000
4D4684:  MOV             R0, R6
4D4686:  BLX             j__Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType; RwFrameRotate(RwFrame *,RwV3d const*,float,RwOpCombineType)
4D468A:  LDR             R1, =(unk_6B0360 - 0x4D4696)
4D468C:  MOV             R0, R6
4D468E:  LDR             R2, [R5,#0x10]
4D4690:  MOVS            R3, #2
4D4692:  ADD             R1, PC; unk_6B0360
4D4694:  BLX             j__Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType; RwFrameRotate(RwFrame *,RwV3d const*,float,RwOpCombineType)
4D4698:  MOV             R0, R6
4D469A:  MOV             R1, R5
4D469C:  MOVS            R2, #2
4D469E:  BLX             j__Z16RwFrameTranslateP7RwFramePK5RwV3d15RwOpCombineType; RwFrameTranslate(RwFrame *,RwV3d const*,RwOpCombineType)
4D46A2:  MOV             R0, R6
4D46A4:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
4D46A8:  LDR             R1, [R5,#0x14]
4D46AA:  MOV             R0, R4
4D46AC:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
4D46B0:  LDR             R1, [R5,#0x18]
4D46B2:  MOV             R0, R4
4D46B4:  BLX             j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
4D46B8:  MOVS            R0, #1
4D46BA:  POP.W           {R11}
4D46BE:  POP             {R4-R7,PC}
