; =========================================================
; Game Engine Function: _ZN11CTheScripts36RemoveFromWaitingForScriptBrainArrayEP7CEntitys
; Address            : 0x32FAD0 - 0x32FB4A
; =========================================================

32FAD0:  PUSH            {R4-R7,LR}
32FAD2:  ADD             R7, SP, #0xC
32FAD4:  PUSH.W          {R8-R11}
32FAD8:  SUB             SP, SP, #4
32FADA:  MOV             R4, R0
32FADC:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x32FAEA)
32FADE:  UXTH.W          R10, R1
32FAE2:  MOVW            R8, #0xFFFF
32FAE6:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
32FAE8:  MOV.W           R9, #0
32FAEC:  LDR             R6, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
32FAEE:  LDR             R0, =(IsMissionLoad_ptr - 0x32FAF4)
32FAF0:  ADD             R0, PC; IsMissionLoad_ptr
32FAF2:  LDR.W           R11, [R0]; IsMissionLoad
32FAF6:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x32FAFC)
32FAF8:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
32FAFA:  LDR             R0, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
32FAFC:  STR             R0, [SP,#0x20+var_20]
32FAFE:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x32FB04)
32FB00:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
32FB02:  LDR             R5, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
32FB04:  LDR.W           R0, [R6,R9]
32FB08:  CMP             R0, R4
32FB0A:  BNE             loc_32FB38
32FB0C:  LDRB.W          R0, [R11]
32FB10:  CBNZ            R0, loc_32FB1C
32FB12:  LDR             R0, [SP,#0x20+var_20]
32FB14:  ADD             R0, R9
32FB16:  LDRH            R0, [R0,#4]
32FB18:  CMP             R0, R10
32FB1A:  BNE             loc_32FB38
32FB1C:  CMP             R4, #0
32FB1E:  ITTT NE
32FB20:  ADDNE.W         R1, R6, R9; CEntity **
32FB24:  MOVNE           R0, R4; this
32FB26:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
32FB2A:  MOVS            R0, #0
32FB2C:  STR.W           R0, [R5,R9]
32FB30:  ADD.W           R0, R5, R9
32FB34:  STRH.W          R8, [R0,#4]
32FB38:  ADD.W           R9, R9, #8
32FB3C:  CMP.W           R9, #0x4B0
32FB40:  BNE             loc_32FB04
32FB42:  ADD             SP, SP, #4
32FB44:  POP.W           {R8-R11}
32FB48:  POP             {R4-R7,PC}
