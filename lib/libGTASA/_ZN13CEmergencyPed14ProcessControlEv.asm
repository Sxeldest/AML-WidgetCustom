; =========================================================
; Game Engine Function: _ZN13CEmergencyPed14ProcessControlEv
; Address            : 0x49ED88 - 0x49EDDC
; =========================================================

49ED88:  PUSH            {R4,R6,R7,LR}
49ED8A:  ADD             R7, SP, #8
49ED8C:  MOV             R4, R0
49ED8E:  BLX             j__ZN4CPed14ProcessControlEv; CPed::ProcessControl(void)
49ED92:  LDRB            R0, [R4,#0x1C]
49ED94:  LSLS            R0, R0, #0x19
49ED96:  BMI             locret_49EDC0
49ED98:  LDR.W           R0, [R4,#0x44C]
49ED9C:  CMP             R0, #0x37 ; '7'
49ED9E:  IT EQ
49EDA0:  POPEQ           {R4,R6,R7,PC}
49EDA2:  LDRSB.W         R0, [R4,#0x71C]
49EDA6:  MOVS            R1, #0; CPed *
49EDA8:  RSB.W           R0, R0, R0,LSL#3
49EDAC:  ADD.W           R0, R4, R0,LSL#2
49EDB0:  ADDW            R0, R0, #0x5A4; this
49EDB4:  BLX             j__ZN7CWeapon6UpdateEP4CPed; CWeapon::Update(CPed *)
49EDB8:  LDR.W           R0, [R4,#0x44C]
49EDBC:  CMP             R0, #0x36 ; '6'
49EDBE:  BNE             loc_49EDC2
49EDC0:  POP             {R4,R6,R7,PC}
49EDC2:  LDRSB.W         R0, [R4,#0x71C]
49EDC6:  MOVS            R1, #0; CPed *
49EDC8:  RSB.W           R0, R0, R0,LSL#3
49EDCC:  ADD.W           R0, R4, R0,LSL#2
49EDD0:  ADDW            R0, R0, #0x5A4; this
49EDD4:  POP.W           {R4,R6,R7,LR}
49EDD8:  B.W             sub_18FD4C
