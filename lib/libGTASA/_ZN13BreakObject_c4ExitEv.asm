; =========================================================
; Game Engine Function: _ZN13BreakObject_c4ExitEv
; Address            : 0x451D90 - 0x451DF0
; =========================================================

451D90:  PUSH            {R4-R7,LR}
451D92:  ADD             R7, SP, #0xC
451D94:  PUSH.W          {R8}
451D98:  MOV             R4, R0
451D9A:  LDR             R0, [R4,#8]; void *
451D9C:  CBZ             R0, loc_451DE6
451D9E:  LDR             R1, [R4,#4]
451DA0:  CMP             R1, #1
451DA2:  BLT             loc_451DE2
451DA4:  MOV.W           R8, #0
451DA8:  MOVS            R6, #0x54 ; 'T'
451DAA:  MOVS            R5, #0
451DAC:  LDR             R1, [R0,R6]
451DAE:  CBZ             R1, loc_451DBE
451DB0:  MOV             R0, R1
451DB2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
451DB6:  LDR             R0, [R4,#8]
451DB8:  STR.W           R8, [R0,R6]
451DBC:  LDR             R0, [R4,#8]
451DBE:  ADDS            R1, R0, R6
451DC0:  LDR.W           R1, [R1,#-4]
451DC4:  CBZ             R1, loc_451DCE
451DC6:  MOV             R0, R1; void *
451DC8:  BLX             _ZdaPv; operator delete[](void *)
451DCC:  LDR             R0, [R4,#8]; void *
451DCE:  LDR             R1, [R4,#4]
451DD0:  ADDS            R5, #1
451DD2:  ADDS            R6, #0x74 ; 't'
451DD4:  CMP             R5, R1
451DD6:  BLT             loc_451DAC
451DD8:  CMP             R0, #0
451DDA:  IT NE
451DDC:  BLXNE           _ZdaPv; operator delete[](void *)
451DE0:  B               loc_451DE6
451DE2:  BLX             _ZdaPv; operator delete[](void *)
451DE6:  MOVS            R0, #0
451DE8:  STRB            R0, [R4,#1]
451DEA:  POP.W           {R8}
451DEE:  POP             {R4-R7,PC}
