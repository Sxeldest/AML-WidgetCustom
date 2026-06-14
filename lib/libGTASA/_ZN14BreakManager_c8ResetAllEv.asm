; =========================================================
; Game Engine Function: _ZN14BreakManager_c8ResetAllEv
; Address            : 0x4526FA - 0x45278A
; =========================================================

4526FA:  PUSH            {R4-R7,LR}
4526FC:  ADD             R7, SP, #0xC
4526FE:  PUSH.W          {R8-R11}
452702:  SUB             SP, SP, #4
452704:  MOV             R6, R0
452706:  MOV.W           R9, #0
45270A:  MOV.W           R11, #0
45270E:  STR             R6, [SP,#0x20+var_20]
452710:  ADD.W           R5, R6, R11,LSL#5
452714:  MOV             R10, R5
452716:  LDRB.W          R0, [R10,#1]!
45271A:  CBZ             R0, loc_452778
45271C:  MOV             R4, R5
45271E:  LDR.W           R0, [R4,#8]!; void *
452722:  CBZ             R0, loc_452774
452724:  LDR.W           R1, [R5,#4]!
452728:  CMP             R1, #1
45272A:  BLT             loc_452770
45272C:  MOVS            R6, #0
45272E:  MOV.W           R8, #0x54 ; 'T'
452732:  LDR.W           R1, [R0,R8]
452736:  CBZ             R1, loc_452746
452738:  MOV             R0, R1
45273A:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
45273E:  LDR             R0, [R4]
452740:  STR.W           R9, [R0,R8]
452744:  LDR             R0, [R4]
452746:  ADD.W           R1, R0, R8
45274A:  LDR.W           R1, [R1,#-4]
45274E:  CBZ             R1, loc_452758
452750:  MOV             R0, R1; void *
452752:  BLX             _ZdaPv; operator delete[](void *)
452756:  LDR             R0, [R4]; void *
452758:  LDR             R1, [R5]
45275A:  ADDS            R6, #1
45275C:  ADD.W           R8, R8, #0x74 ; 't'
452760:  CMP             R6, R1
452762:  BLT             loc_452732
452764:  CMP             R0, #0
452766:  LDR             R6, [SP,#0x20+var_20]
452768:  IT NE
45276A:  BLXNE           _ZdaPv; operator delete[](void *)
45276E:  B               loc_452774
452770:  BLX             _ZdaPv; operator delete[](void *)
452774:  STRB.W          R9, [R10]
452778:  ADD.W           R11, R11, #1
45277C:  CMP.W           R11, #0x40 ; '@'
452780:  BNE             loc_452710
452782:  ADD             SP, SP, #4
452784:  POP.W           {R8-R11}
452788:  POP             {R4-R7,PC}
