; =========================================================
; Game Engine Function: _ZN4CPed14RemoveBodyPartEia
; Address            : 0x4ACF9C - 0x4ACFCE
; =========================================================

4ACF9C:  PUSH            {R4,R5,R7,LR}
4ACF9E:  ADD             R7, SP, #8
4ACFA0:  MOV             R5, R1
4ACFA2:  MOV             R4, R0
4ACFA4:  ADD.W           R0, R4, R5,LSL#2
4ACFA8:  LDR.W           R0, [R0,#0x494]
4ACFAC:  LDR             R0, [R0,#0x10]; this
4ACFAE:  CMP             R0, #0
4ACFB0:  IT EQ
4ACFB2:  POPEQ           {R4,R5,R7,PC}
4ACFB4:  BLX             j__ZN13CLocalisation10ShootLimbsEv; CLocalisation::ShootLimbs(void)
4ACFB8:  CMP             R0, #0
4ACFBA:  ITTTT NE
4ACFBC:  LDRNE.W         R0, [R4,#0x484]
4ACFC0:  STRBNE.W        R5, [R4,#0x75C]
4ACFC4:  ORRNE.W         R0, R0, #0x8000
4ACFC8:  STRNE.W         R0, [R4,#0x484]
4ACFCC:  POP             {R4,R5,R7,PC}
