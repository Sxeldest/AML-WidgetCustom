; =========================================================
; Game Engine Function: _Z12CameraCreateiii
; Address            : 0x46F7CC - 0x46F842
; =========================================================

46F7CC:  PUSH            {R4-R7,LR}
46F7CE:  ADD             R7, SP, #0xC
46F7D0:  PUSH.W          {R8}
46F7D4:  MOV             R8, R2
46F7D6:  MOV             R6, R1
46F7D8:  MOV             R5, R0
46F7DA:  BLX             j__Z14RwCameraCreatev; RwCameraCreate(void)
46F7DE:  MOV             R4, R0
46F7E0:  CBZ             R4, loc_46F832
46F7E2:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
46F7E6:  MOV             R1, R0
46F7E8:  MOV             R0, R4
46F7EA:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
46F7EE:  MOV             R0, R5; int
46F7F0:  MOV             R1, R6; int
46F7F2:  MOVS            R2, #0; int
46F7F4:  MOVS            R3, #2; int
46F7F6:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
46F7FA:  CMP.W           R8, #0
46F7FE:  STR             R0, [R4,#0x60]
46F800:  BEQ             loc_46F810
46F802:  MOV             R0, R5; int
46F804:  MOV             R1, R6; int
46F806:  MOVS            R2, #0; int
46F808:  MOVS            R3, #1; int
46F80A:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
46F80E:  STR             R0, [R4,#0x64]
46F810:  LDR             R0, [R4,#4]
46F812:  CBZ             R0, loc_46F832
46F814:  LDR             R0, [R4,#0x60]
46F816:  CMP             R0, #0
46F818:  ITT NE
46F81A:  LDRNE           R0, [R0]
46F81C:  CMPNE           R0, #0
46F81E:  BEQ             loc_46F832
46F820:  CMP.W           R8, #0
46F824:  BEQ             loc_46F83A
46F826:  LDR             R0, [R4,#0x64]
46F828:  CMP             R0, #0
46F82A:  ITT NE
46F82C:  LDRNE           R0, [R0]
46F82E:  CMPNE           R0, #0
46F830:  BNE             loc_46F83A
46F832:  MOV             R0, R4
46F834:  BLX             j__Z13CameraDestroyP8RwCamera; CameraDestroy(RwCamera *)
46F838:  MOVS            R4, #0
46F83A:  MOV             R0, R4
46F83C:  POP.W           {R8}
46F840:  POP             {R4-R7,PC}
