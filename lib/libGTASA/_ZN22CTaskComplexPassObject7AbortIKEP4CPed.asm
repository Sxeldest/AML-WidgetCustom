; =========================================================
; Game Engine Function: _ZN22CTaskComplexPassObject7AbortIKEP4CPed
; Address            : 0x51ADAC - 0x51ADDC
; =========================================================

51ADAC:  PUSH            {R4,R6,R7,LR}
51ADAE:  ADD             R7, SP, #8
51ADB0:  LDR             R0, =(g_ikChainMan_ptr - 0x51ADBC)
51ADB2:  MOV             R4, R1
51ADB4:  MOVS            R1, #0; int
51ADB6:  MOV             R2, R4; CPed *
51ADB8:  ADD             R0, PC; g_ikChainMan_ptr
51ADBA:  LDR             R0, [R0]; g_ikChainMan ; this
51ADBC:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
51ADC0:  CMP             R0, #0
51ADC2:  IT EQ
51ADC4:  POPEQ           {R4,R6,R7,PC}
51ADC6:  LDR             R0, =(g_ikChainMan_ptr - 0x51ADD4)
51ADC8:  MOVS            R1, #0; int
51ADCA:  MOV             R2, R4; CPed *
51ADCC:  MOV.W           R3, #0x1F4; int
51ADD0:  ADD             R0, PC; g_ikChainMan_ptr
51ADD2:  LDR             R0, [R0]; g_ikChainMan ; this
51ADD4:  POP.W           {R4,R6,R7,LR}
51ADD8:  B.W             sub_19A210
