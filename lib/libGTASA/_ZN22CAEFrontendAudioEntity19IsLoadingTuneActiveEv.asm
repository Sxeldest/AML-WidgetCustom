; =========================================================
; Game Engine Function: _ZN22CAEFrontendAudioEntity19IsLoadingTuneActiveEv
; Address            : 0x395F84 - 0x395F9A
; =========================================================

395F84:  PUSH            {R7,LR}
395F86:  MOV             R7, SP
395F88:  MOV             R2, R0; CAEAudioEntity *
395F8A:  LDR             R0, =(AESoundManager_ptr - 0x395F92)
395F8C:  MOVS            R1, #0x32 ; '2'; __int16
395F8E:  ADD             R0, PC; AESoundManager_ptr
395F90:  LDR             R0, [R0]; AESoundManager ; this
395F92:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
395F96:  UXTB            R0, R0
395F98:  POP             {R7,PC}
