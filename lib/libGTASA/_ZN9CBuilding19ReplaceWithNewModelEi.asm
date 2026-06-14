; =========================================================
; Game Engine Function: _ZN9CBuilding19ReplaceWithNewModelEi
; Address            : 0x280128 - 0x280154
; =========================================================

280128:  PUSH            {R4,R5,R7,LR}
28012A:  ADD             R7, SP, #8
28012C:  MOV             R5, R0
28012E:  MOV             R4, R1
280130:  LDR             R0, [R5]
280132:  LDR             R1, [R0,#0x24]
280134:  MOV             R0, R5
280136:  BLX             R1
280138:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x28013E)
28013A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
28013C:  LDR             R1, [R0]; CModelInfo::ms_modelInfoPtrs ...
28013E:  LDRSH.W         R0, [R5,#0x26]; this
280142:  LDR.W           R1, [R1,R0,LSL#2]
280146:  LDRH            R1, [R1,#0x1E]; int
280148:  CMP             R1, #0
28014A:  IT EQ
28014C:  BLXEQ           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
280150:  STRH            R4, [R5,#0x26]
280152:  POP             {R4,R5,R7,PC}
