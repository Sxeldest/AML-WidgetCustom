; =========================================================
; Game Engine Function: _Z15_rpMTEffectInitP10RpMTEffect12RwPlatformID
; Address            : 0x1C55F8 - 0x1C5652
; =========================================================

1C55F8:  MOVS            R2, #1
1C55FA:  VMOV.I32        Q8, #0
1C55FE:  STRD.W          R1, R2, [R0]
1C5602:  MOVS            R2, #0
1C5604:  STRD.W          R2, R2, [R0,#0x28]
1C5608:  ADD.W           R2, R0, #0x18
1C560C:  CMP             R1, #0
1C560E:  VST1.32         {D16-D17}, [R2]
1C5612:  ADD.W           R2, R0, #8
1C5616:  VST1.32         {D16-D17}, [R2]
1C561A:  BEQ             locret_1C5650
1C561C:  LDR             R1, =(_rpMultiTextureModule_ptr - 0x1C5624)
1C561E:  LDR             R2, =(RwEngineInstance_ptr - 0x1C5626)
1C5620:  ADD             R1, PC; _rpMultiTextureModule_ptr
1C5622:  ADD             R2, PC; RwEngineInstance_ptr
1C5624:  LDR             R1, [R1]; _rpMultiTextureModule
1C5626:  LDR             R2, [R2]; RwEngineInstance
1C5628:  LDR             R1, [R1]
1C562A:  LDR             R2, [R2]
1C562C:  ADD             R1, R2
1C562E:  LDR             R1, [R1,#8]
1C5630:  CMP             R1, #0
1C5632:  IT EQ
1C5634:  BXEQ            LR
1C5636:  LDR             R2, [R1]
1C5638:  MOV             R3, R0
1C563A:  STR.W           R2, [R3,#0x28]!
1C563E:  STR             R1, [R3,#4]
1C5640:  LDR             R2, [R1]
1C5642:  STR             R3, [R2,#4]
1C5644:  STR             R3, [R1]
1C5646:  LDR.W           R1, [R3,#-0x24]
1C564A:  ADDS            R1, #1
1C564C:  STR.W           R1, [R3,#-0x24]
1C5650:  BX              LR
