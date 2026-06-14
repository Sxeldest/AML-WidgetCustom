; =========================================================
; Game Engine Function: _Z19BreakableDestructorPvii
; Address            : 0x450DD8 - 0x450E1C
; =========================================================

450DD8:  PUSH            {R4-R7,LR}
450DDA:  ADD             R7, SP, #0xC
450DDC:  PUSH.W          {R11}
450DE0:  MOV             R4, R0
450DE2:  LDR             R0, =(g_BreakablePlugin_ptr - 0x450DE8)
450DE4:  ADD             R0, PC; g_BreakablePlugin_ptr
450DE6:  LDR             R0, [R0]; g_BreakablePlugin
450DE8:  LDR             R0, [R0]
450DEA:  CMP             R0, #1
450DEC:  BLT             loc_450E14
450DEE:  LDR             R5, [R4,R0]
450DF0:  CBZ             R5, loc_450E14
450DF2:  LDRH            R1, [R5,#0x20]
450DF4:  CBZ             R1, loc_450E0E
450DF6:  MOVS            R6, #0
450DF8:  LDR             R0, [R5,#0x24]
450DFA:  LDR.W           R0, [R0,R6,LSL#2]
450DFE:  CBZ             R0, loc_450E06
450E00:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
450E04:  LDRH            R1, [R5,#0x20]
450E06:  ADDS            R6, #1
450E08:  UXTH            R0, R1
450E0A:  CMP             R6, R0
450E0C:  BLT             loc_450DF8
450E0E:  MOV             R0, R5; void *
450E10:  BLX             _ZdlPv; operator delete(void *)
450E14:  MOV             R0, R4
450E16:  POP.W           {R11}
450E1A:  POP             {R4-R7,PC}
