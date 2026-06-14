; =========================================================
; Game Engine Function: _ZN8CAESoundC2EssP14CAEAudioEntity7CVectorffffhtf
; Address            : 0x3A7708 - 0x3A77AA
; =========================================================

3A7708:  PUSH            {R4-R7,LR}
3A770A:  ADD             R7, SP, #0xC
3A770C:  PUSH.W          {R11}
3A7710:  MOV             R4, R0
3A7712:  MOVS            R0, #0
3A7714:  LDRD.W          R12, LR, [R7,#arg_0]
3A7718:  VMOV.I32        Q8, #0
3A771C:  STRH            R2, [R4,#2]
3A771E:  MOVS            R6, #0
3A7720:  STRH            R1, [R4]
3A7722:  MOVT            R0, #0xBF80
3A7726:  LDR             R5, [R7,#arg_8]
3A7728:  MOV.W           R1, #0xFFFFFFFF
3A772C:  STRD.W          R3, R6, [R4,#4]
3A7730:  MOV             R2, LR
3A7732:  STRD.W          R1, R0, [R4,#0xC]
3A7736:  ADD.W           R0, R4, #0x30 ; '0'
3A773A:  MOV             R1, R12
3A773C:  MOV             R3, R5
3A773E:  VST1.32         {D16-D17}, [R0]
3A7742:  MOV             R0, R4
3A7744:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3A7748:  VLDR            S6, [R7,#arg_18]
3A774C:  VLDR            S0, [R7,#arg_10]
3A7750:  VLDR            S2, [R7,#arg_C]
3A7754:  VLDR            S4, [R7,#arg_14]
3A7758:  LDR             R0, [R7,#arg_1C]
3A775A:  VLDR            S8, [R7,#arg_24]
3A775E:  VSTR            S6, [R4,#0x50]
3A7762:  STRB.W          R0, [R4,#0x54]
3A7766:  MOVS            R0, #1
3A7768:  LDR             R1, [R7,#arg_20]
3A776A:  STRH.W          R1, [R4,#0x56]
3A776E:  MOV.W           R1, #0x3F800000
3A7772:  VSTR            S2, [R4,#0x14]
3A7776:  VSTR            S0, [R4,#0x18]
3A777A:  VSTR            S4, [R4,#0x1C]
3A777E:  VSTR            S8, [R4,#0x20]
3A7782:  STRH.W          R0, [R4,#0x58]
3A7786:  MOVS            R0, #0xC2C80000
3A778C:  STRH.W          R6, [R4,#0x5E]
3A7790:  STRH.W          R6, [R4,#0x5C]
3A7794:  STRD.W          R0, R1, [R4,#0x60]
3A7798:  MOVW            R0, #0xFFFF
3A779C:  STR             R6, [R4,#0x6C]
3A779E:  STRH.W          R0, [R4,#0x70]
3A77A2:  MOV             R0, R4
3A77A4:  POP.W           {R11}
3A77A8:  POP             {R4-R7,PC}
