; =========================================================
; Game Engine Function: _ZN11CWaterLevel8ShutdownEv
; Address            : 0x5945D4 - 0x594626
; =========================================================

5945D4:  PUSH            {R7,LR}
5945D6:  MOV             R7, SP
5945D8:  LDR             R0, =(gpWaterTex_ptr - 0x5945DE)
5945DA:  ADD             R0, PC; gpWaterTex_ptr
5945DC:  LDR             R0, [R0]; gpWaterTex
5945DE:  LDR             R0, [R0]
5945E0:  CBZ             R0, loc_5945F0
5945E2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5945E6:  LDR             R0, =(gpWaterTex_ptr - 0x5945EE)
5945E8:  MOVS            R1, #0
5945EA:  ADD             R0, PC; gpWaterTex_ptr
5945EC:  LDR             R0, [R0]; gpWaterTex
5945EE:  STR             R1, [R0]
5945F0:  LDR             R0, =(gpSeaBedTex_ptr - 0x5945F6)
5945F2:  ADD             R0, PC; gpSeaBedTex_ptr
5945F4:  LDR             R0, [R0]; gpSeaBedTex
5945F6:  LDR             R0, [R0]
5945F8:  CBZ             R0, loc_594608
5945FA:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5945FE:  LDR             R0, =(gpSeaBedTex_ptr - 0x594606)
594600:  MOVS            R1, #0
594602:  ADD             R0, PC; gpSeaBedTex_ptr
594604:  LDR             R0, [R0]; gpSeaBedTex
594606:  STR             R1, [R0]
594608:  LDR             R0, =(gpWaterWakeTex_ptr - 0x59460E)
59460A:  ADD             R0, PC; gpWaterWakeTex_ptr
59460C:  LDR             R0, [R0]; gpWaterWakeTex
59460E:  LDR             R0, [R0]
594610:  CMP             R0, #0
594612:  IT EQ
594614:  POPEQ           {R7,PC}
594616:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
59461A:  LDR             R0, =(gpWaterWakeTex_ptr - 0x594622)
59461C:  MOVS            R1, #0
59461E:  ADD             R0, PC; gpWaterWakeTex_ptr
594620:  LDR             R0, [R0]; gpWaterWakeTex
594622:  STR             R1, [R0]
594624:  POP             {R7,PC}
