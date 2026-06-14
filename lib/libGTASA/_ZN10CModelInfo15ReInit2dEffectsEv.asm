; =========================================================
; Game Engine Function: _ZN10CModelInfo15ReInit2dEffectsEv
; Address            : 0x385A24 - 0x385A50
; =========================================================

385A24:  PUSH            {R4,R5,R7,LR}
385A26:  ADD             R7, SP, #8
385A28:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385A36)
385A2A:  MOVS            R2, #0
385A2C:  LDR             R0, =(dword_91C3B4 - 0x385A38)
385A2E:  MOVW            R5, #0x4E20
385A32:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385A34:  ADD             R0, PC; dword_91C3B4
385A36:  LDR             R4, [R1]; CModelInfo::ms_modelInfoPtrs ...
385A38:  STR             R2, [R0]
385A3A:  LDR             R0, [R4]; this
385A3C:  CMP             R0, #0
385A3E:  IT NE
385A40:  BLXNE           j__ZN14CBaseModelInfo13Init2dEffectsEv; CBaseModelInfo::Init2dEffects(void)
385A44:  SUBS            R5, #1
385A46:  ADD.W           R4, R4, #4
385A4A:  IT EQ
385A4C:  POPEQ           {R4,R5,R7,PC}
385A4E:  B               loc_385A3A
