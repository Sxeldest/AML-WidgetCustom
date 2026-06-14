; =========================================================
; Game Engine Function: _ZN4CPed17RemoveWeaponAnimsEif
; Address            : 0x4ADDB4 - 0x4ADE18
; =========================================================

4ADDB4:  PUSH            {R4-R7,LR}
4ADDB6:  ADD             R7, SP, #0xC
4ADDB8:  PUSH.W          {R8}
4ADDBC:  VPUSH           {D8}
4ADDC0:  MOV             R8, R2
4ADDC2:  MOV             R5, R0
4ADDC4:  VMOV            S16, R8
4ADDC8:  MOVS            R6, #0
4ADDCA:  MOVS            R4, #0x22 ; '"'
4ADDCC:  LDR             R0, [R5,#0x18]
4ADDCE:  MOVS            R1, #0xE0
4ADDD0:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4ADDD4:  CBZ             R0, loc_4ADDEA
4ADDD6:  LDRH            R1, [R0,#0x2E]
4ADDD8:  TST.W           R1, #0x10
4ADDDC:  ORR.W           R2, R1, #4
4ADDE0:  STRH            R2, [R0,#0x2E]
4ADDE2:  ITE NE
4ADDE4:  VSTRNE          S16, [R0,#0x1C]
4ADDE8:  MOVEQ           R6, #1
4ADDEA:  SUBS            R4, #1
4ADDEC:  BNE             loc_4ADDCC
4ADDEE:  LSLS            R0, R6, #0x1F
4ADDF0:  BEQ             loc_4ADE0E
4ADDF2:  LDR.W           R1, [R5,#0x4E0]
4ADDF6:  EOR.W           R3, R8, #0x80000000
4ADDFA:  LDR             R0, [R5,#0x18]
4ADDFC:  MOVS            R2, #3
4ADDFE:  VPOP            {D8}
4ADE02:  POP.W           {R8}
4ADE06:  POP.W           {R4-R7,LR}
4ADE0A:  B.W             sub_197F88
4ADE0E:  VPOP            {D8}
4ADE12:  POP.W           {R8}
4ADE16:  POP             {R4-R7,PC}
