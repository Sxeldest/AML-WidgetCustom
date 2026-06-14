; =========================================================
; Game Engine Function: _ZN7CWeapon27TargetWeaponRangeMultiplierEP7CEntityS1_
; Address            : 0x5DF748 - 0x5DF7F0
; =========================================================

5DF748:  PUSH            {R7,LR}
5DF74A:  MOV             R7, SP
5DF74C:  VPUSH           {D8}
5DF750:  VMOV.F32        S16, #1.0
5DF754:  CMP             R0, #0
5DF756:  IT NE
5DF758:  CMPNE           R1, #0
5DF75A:  BEQ             loc_5DF7E6
5DF75C:  LDRB.W          R2, [R0,#0x3A]
5DF760:  AND.W           R2, R2, #7
5DF764:  CMP             R2, #3
5DF766:  BEQ             loc_5DF776
5DF768:  CMP             R2, #2
5DF76A:  BNE             loc_5DF798
5DF76C:  LDR.W           R0, [R0,#0x5A0]
5DF770:  CMP             R0, #9
5DF772:  BEQ             loc_5DF798
5DF774:  B               loc_5DF7E2
5DF776:  LDR.W           R2, [R0,#0x590]
5DF77A:  CMP             R2, #0
5DF77C:  ITT NE
5DF77E:  LDRNE.W         R2, [R2,#0x5A0]
5DF782:  CMPNE           R2, #9
5DF784:  BNE             loc_5DF7E2
5DF786:  LDR.W           R0, [R0,#0x100]
5DF78A:  CBZ             R0, loc_5DF798
5DF78C:  LDRB.W          R2, [R0,#0x3A]
5DF790:  AND.W           R2, R2, #7
5DF794:  CMP             R2, #2
5DF796:  BEQ             loc_5DF76C
5DF798:  LDRB.W          R0, [R1,#0x3A]
5DF79C:  AND.W           R0, R0, #7
5DF7A0:  CMP             R0, #3
5DF7A2:  BNE             loc_5DF7E6
5DF7A4:  MOV             R0, R1; this
5DF7A6:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DF7AA:  CMP             R0, #1
5DF7AC:  BNE             loc_5DF7E6
5DF7AE:  LDR             R0, =(TheCamera_ptr - 0x5DF7BC)
5DF7B0:  VMOV.F32        S0, #3.0
5DF7B4:  VMOV.F32        S16, #1.0
5DF7B8:  ADD             R0, PC; TheCamera_ptr
5DF7BA:  LDR             R0, [R0]; TheCamera
5DF7BC:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DF7C0:  ADD.W           R1, R1, R1,LSL#5
5DF7C4:  ADD.W           R0, R0, R1,LSL#4
5DF7C8:  LDRH.W          R0, [R0,#0x17E]
5DF7CC:  CMP             R0, #0x2D ; '-'
5DF7CE:  IT EQ
5DF7D0:  VMOVEQ.F32      S16, S0
5DF7D4:  VMOV.F32        S0, #2.0
5DF7D8:  CMP             R0, #0x31 ; '1'
5DF7DA:  IT EQ
5DF7DC:  VMOVEQ.F32      S16, S0
5DF7E0:  B               loc_5DF7E6
5DF7E2:  VMOV.F32        S16, #3.0
5DF7E6:  VMOV            R0, S16
5DF7EA:  VPOP            {D8}
5DF7EE:  POP             {R7,PC}
