; =========================================================
; Game Engine Function: sub_5D06FC
; Address            : 0x5D06FC - 0x5D079C
; =========================================================

5D06FC:  PUSH            {R4-R7,LR}
5D06FE:  ADD             R7, SP, #0xC
5D0700:  PUSH.W          {R8}
5D0704:  SUB             SP, SP, #0x18
5D0706:  MOV             R8, R2
5D0708:  ADD             R2, SP, #0x28+var_14
5D070A:  ADD             R3, SP, #0x28+var_18
5D070C:  MOV             R6, R1
5D070E:  MOVS            R1, #1
5D0710:  MOV             R5, R0
5D0712:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D0716:  CBZ             R0, loc_5D0790
5D0718:  LDR             R4, [SP,#0x28+var_14]
5D071A:  MOV             R1, SP; void *
5D071C:  MOV             R0, R5; int
5D071E:  MOV             R2, R4; size_t
5D0720:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
5D0724:  CMP             R4, R0
5D0726:  BNE             loc_5D0790
5D0728:  BLX.W           j__Z14RpAtomicCreatev; RpAtomicCreate(void)
5D072C:  MOV             R4, R0
5D072E:  CBZ             R4, loc_5D0790
5D0730:  LDR             R0, [SP,#0x28+var_20]
5D0732:  STRB            R0, [R4,#2]
5D0734:  LDR             R0, [R6,#4]
5D0736:  CBZ             R0, loc_5D0746
5D0738:  LDR             R0, [SP,#0x28+var_28]
5D073A:  LDR             R1, [R6]
5D073C:  LDR.W           R1, [R1,R0,LSL#2]
5D0740:  MOV             R0, R4
5D0742:  BLX.W           j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
5D0746:  LDR.W           R0, [R8,#4]
5D074A:  CBZ             R0, loc_5D0760
5D074C:  LDR             R0, [SP,#0x28+var_24]
5D074E:  MOVS            R2, #0
5D0750:  LDR.W           R1, [R8]
5D0754:  LDR.W           R1, [R1,R0,LSL#2]
5D0758:  MOV             R0, R4
5D075A:  BLX.W           j__Z19RpAtomicSetGeometryP8RpAtomicP10RpGeometryj; RpAtomicSetGeometry(RpAtomic *,RpGeometry *,uint)
5D075E:  B               loc_5D0792
5D0760:  ADD             R3, SP, #0x28+var_18
5D0762:  MOV             R0, R5; int
5D0764:  MOVS            R1, #0xF
5D0766:  MOVS            R2, #0
5D0768:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D076C:  CBZ             R0, loc_5D078A
5D076E:  MOV             R0, R5
5D0770:  BLX.W           j__Z20RpGeometryStreamReadP8RwStream; RpGeometryStreamRead(RwStream *)
5D0774:  MOV             R5, R0
5D0776:  CBZ             R5, loc_5D078A
5D0778:  MOV             R0, R4
5D077A:  MOV             R1, R5
5D077C:  MOVS            R2, #0
5D077E:  BLX.W           j__Z19RpAtomicSetGeometryP8RpAtomicP10RpGeometryj; RpAtomicSetGeometry(RpAtomic *,RpGeometry *,uint)
5D0782:  MOV             R0, R5
5D0784:  BLX.W           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
5D0788:  B               loc_5D0792
5D078A:  MOV             R0, R4
5D078C:  BLX.W           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
5D0790:  MOVS            R4, #0
5D0792:  MOV             R0, R4
5D0794:  ADD             SP, SP, #0x18
5D0796:  POP.W           {R8}
5D079A:  POP             {R4-R7,PC}
