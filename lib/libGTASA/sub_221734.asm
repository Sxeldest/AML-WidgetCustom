; =========================================================
; Game Engine Function: sub_221734
; Address            : 0x221734 - 0x221848
; =========================================================

221734:  PUSH            {R4-R7,LR}
221736:  ADD             R7, SP, #0xC
221738:  PUSH.W          {R8,R9,R11}
22173C:  SUB             SP, SP, #8
22173E:  LDR             R4, [R1]
221740:  MOV             R9, R0
221742:  LDRH.W          R0, [R4,#0x8A]
221746:  CMP             R0, #0
221748:  ITTT NE
22174A:  LDRNE.W         R6, [R4,#0x80]
22174E:  LDRHNE          R0, [R6,#4]
221750:  CMPNE           R0, #0
221752:  BEQ             loc_22183A
221754:  MOV             R5, R4
221756:  LDR.W           R8, [R5,#0x34]!
22175A:  CMP.W           R8, #0
22175E:  BEQ             loc_2217BC
221760:  LDRH            R0, [R6,#6]
221762:  LDRH.W          R1, [R8,#0x18]
221766:  CMP             R1, R0
221768:  BNE             loc_2217B6
22176A:  LDR.W           R0, [R8]
22176E:  LDR.W           R9, [R9,#0x14]
221772:  CBZ             R0, loc_2217DC
221774:  LDR.W           R1, [R8,#4]
221778:  LDR             R2, =(resourcesModule_ptr - 0x221782)
22177A:  LDR             R3, =(RwEngineInstance_ptr - 0x221784)
22177C:  STR             R0, [R1]
22177E:  ADD             R2, PC; resourcesModule_ptr
221780:  ADD             R3, PC; RwEngineInstance_ptr
221782:  LDRD.W          R0, R1, [R8]
221786:  LDR             R2, [R2]; resourcesModule
221788:  LDR             R3, [R3]; RwEngineInstance
22178A:  STR             R1, [R0,#4]
22178C:  LDR             R0, [R2]
22178E:  LDR             R1, [R3]
221790:  ADD             R0, R1
221792:  LDR             R0, [R0,#0x24]
221794:  LDR             R0, [R0]
221796:  STR.W           R0, [R8]
22179A:  LDR             R0, [R2]
22179C:  LDR             R1, [R3]
22179E:  ADD             R0, R1
2217A0:  LDR             R1, [R0,#0x24]
2217A2:  STR.W           R1, [R8,#4]
2217A6:  LDR             R1, [R0,#0x24]
2217A8:  LDR             R1, [R1]
2217AA:  STR.W           R8, [R1,#4]
2217AE:  LDR             R0, [R0,#0x24]
2217B0:  STR.W           R8, [R0]
2217B4:  B               loc_2217DC
2217B6:  MOV             R0, R8
2217B8:  BLX             j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
2217BC:  LDR.W           R9, [R9,#0x14]
2217C0:  MOV             R2, R5
2217C2:  MOV             R3, R6
2217C4:  LDRD.W          R0, R1, [R9]
2217C8:  STRD.W          R0, R1, [SP,#0x20+var_20]
2217CC:  MOV             R0, R4
2217CE:  MOV             R1, R4
2217D0:  BLX             j__Z17_rxOpenGLInstancePvS_PP10RwResEntryP12RpMeshHeaderiPFiS_P24RxOpenGLMeshInstanceDataiiE; _rxOpenGLInstance(void *,void *,RwResEntry **,RpMeshHeader *,int,int (*)(void *,RxOpenGLMeshInstanceData *,int,int))
2217D4:  MOV             R8, R0
2217D6:  CMP.W           R8, #0
2217DA:  BEQ             loc_221844
2217DC:  LDR.W           R1, [R9,#0xC]
2217E0:  CMP             R1, #0
2217E2:  ITT NE
2217E4:  MOVNE           R0, R4
2217E6:  BLXNE           R1
2217E8:  LDR             R0, =(_rwOpenGLNormalizeEnabled_ptr - 0x2217EE)
2217EA:  ADD             R0, PC; _rwOpenGLNormalizeEnabled_ptr
2217EC:  LDR             R0, [R0]; _rwOpenGLNormalizeEnabled
2217EE:  LDR             R0, [R0]
2217F0:  CBZ             R0, loc_221804
2217F2:  MOVW            R0, #0xBA1; unsigned int
2217F6:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
2217FA:  LDR             R0, =(_rwOpenGLNormalizeEnabled_ptr - 0x221802)
2217FC:  MOVS            R1, #0
2217FE:  ADD             R0, PC; _rwOpenGLNormalizeEnabled_ptr
221800:  LDR             R0, [R0]; _rwOpenGLNormalizeEnabled
221802:  STR             R1, [R0]
221804:  LDR.W           R6, [R9,#0x10]
221808:  CBZ             R6, loc_22181E
22180A:  LDR             R0, =(RwEngineInstance_ptr - 0x221814)
22180C:  MOV             R1, R4
22180E:  MOVS            R2, #0xFF
221810:  ADD             R0, PC; RwEngineInstance_ptr
221812:  LDR             R0, [R0]; RwEngineInstance
221814:  LDR             R0, [R0]
221816:  LDR             R0, [R0,#4]
221818:  LDR             R3, [R0,#8]
22181A:  MOV             R0, R8
22181C:  BLX             R6
22181E:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x221824)
221820:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
221822:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
221824:  LDR             R0, [R0]
221826:  CBZ             R0, loc_22183A
221828:  MOV.W           R0, #0xB50; unsigned int
22182C:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
221830:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x221838)
221832:  MOVS            R1, #0
221834:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
221836:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
221838:  STR             R1, [R0]
22183A:  MOVS            R0, #1
22183C:  ADD             SP, SP, #8
22183E:  POP.W           {R8,R9,R11}
221842:  POP             {R4-R7,PC}
221844:  MOVS            R0, #0
221846:  B               loc_22183C
