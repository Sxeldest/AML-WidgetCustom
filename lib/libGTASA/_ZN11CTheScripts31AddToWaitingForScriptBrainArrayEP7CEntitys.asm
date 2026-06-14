; =========================================================
; Game Engine Function: _ZN11CTheScripts31AddToWaitingForScriptBrainArrayEP7CEntitys
; Address            : 0x32F920 - 0x32F96C
; =========================================================

32F920:  PUSH            {R4,R5,R7,LR}
32F922:  ADD             R7, SP, #8
32F924:  MOV             R4, R1
32F926:  LDR             R1, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x32F932)
32F928:  MOVS            R2, #0
32F92A:  MOV.W           R12, #0xFFFFFFFF
32F92E:  ADD             R1, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
32F930:  MOV.W           R5, #0xFFFFFFFF
32F934:  LDR             R3, [R1]; CTheScripts::EntitiesWaitingForScriptBrain ...
32F936:  LDR.W           R1, [R3,R2,LSL#3]
32F93A:  CBZ             R1, loc_32F942
32F93C:  CMP             R1, R0
32F93E:  BNE             loc_32F944
32F940:  B               locret_32F96A
32F942:  MOV             R5, R2
32F944:  ADDS            R1, R2, #1
32F946:  CMP             R2, #0x95
32F948:  MOV             R2, R1
32F94A:  BLT             loc_32F936
32F94C:  SXTH            R2, R5
32F94E:  CMP             R2, R12
32F950:  IT LE
32F952:  POPLE           {R4,R5,R7,PC}
32F954:  LDR             R1, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x32F95A)
32F956:  ADD             R1, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
32F958:  LDR             R1, [R1]; CTheScripts::EntitiesWaitingForScriptBrain ...
32F95A:  ADD.W           R5, R1, R2,LSL#3
32F95E:  STR.W           R0, [R1,R2,LSL#3]
32F962:  MOV             R1, R5; CEntity **
32F964:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
32F968:  STRH            R4, [R5,#4]
32F96A:  POP             {R4,R5,R7,PC}
