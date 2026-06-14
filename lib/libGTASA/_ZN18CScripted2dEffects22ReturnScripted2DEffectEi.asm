; =========================================================
; Game Engine Function: _ZN18CScripted2dEffects22ReturnScripted2DEffectEi
; Address            : 0x59C81C - 0x59C842
; =========================================================

59C81C:  PUSH            {R4,R6,R7,LR}
59C81E:  ADD             R7, SP, #8
59C820:  LDR             R1, =(_ZN18CScripted2dEffects12ms_activatedE_ptr - 0x59C82A)
59C822:  MOVS            R3, #0
59C824:  LDR             R2, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x59C82C)
59C826:  ADD             R1, PC; _ZN18CScripted2dEffects12ms_activatedE_ptr
59C828:  ADD             R2, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
59C82A:  LDR             R1, [R1]; CScripted2dEffects::ms_activated ...
59C82C:  LDR             R2, [R2]; CScripted2dEffects::ms_effects ...
59C82E:  STRB            R3, [R1,R0]
59C830:  ADD.W           R4, R2, R0,LSL#6
59C834:  BLX.W           j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
59C838:  MOV             R1, R4
59C83A:  POP.W           {R4,R6,R7,LR}
59C83E:  B.W             sub_18F4DC
