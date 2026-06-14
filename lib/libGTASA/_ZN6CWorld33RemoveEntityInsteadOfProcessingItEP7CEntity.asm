; =========================================================
; Game Engine Function: _ZN6CWorld33RemoveEntityInsteadOfProcessingItEP7CEntity
; Address            : 0x427E38 - 0x427EAE
; =========================================================

427E38:  PUSH            {R4,R6,R7,LR}
427E3A:  ADD             R7, SP, #8
427E3C:  MOV             R4, R0
427E3E:  LDRB.W          R0, [R4,#0x3A]
427E42:  AND.W           R0, R0, #7
427E46:  CMP             R0, #3
427E48:  BNE             loc_427E60
427E4A:  MOV.W           R0, #0xFFFFFFFF; int
427E4E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
427E52:  CMP             R0, R4
427E54:  BEQ             loc_427E8A
427E56:  MOV             R0, R4; this
427E58:  POP.W           {R4,R6,R7,LR}
427E5C:  B.W             j_j__ZN11CPopulation9RemovePedEP4CPed; j_CPopulation::RemovePed(CPed *)
427E60:  LDR             R0, [R4]
427E62:  LDR             R1, [R0,#0x10]
427E64:  MOV             R0, R4
427E66:  BLX             R1
427E68:  LDRB.W          R0, [R4,#0x3A]
427E6C:  AND.W           R0, R0, #7
427E70:  SUBS            R0, #2
427E72:  UXTB            R0, R0
427E74:  CMP             R0, #2
427E76:  ITT LS
427E78:  MOVLS           R0, R4; this
427E7A:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
427E7E:  LDR             R0, [R4]
427E80:  LDR             R1, [R0,#4]
427E82:  MOV             R0, R4
427E84:  POP.W           {R4,R6,R7,LR}
427E88:  BX              R1
427E8A:  LDR             R0, [R4]
427E8C:  LDR             R1, [R0,#0x10]
427E8E:  MOV             R0, R4
427E90:  BLX             R1
427E92:  LDRB.W          R0, [R4,#0x3A]
427E96:  AND.W           R0, R0, #7
427E9A:  SUBS            R0, #2
427E9C:  UXTB            R0, R0
427E9E:  CMP             R0, #2
427EA0:  IT HI
427EA2:  POPHI           {R4,R6,R7,PC}
427EA4:  MOV             R0, R4; this
427EA6:  POP.W           {R4,R6,R7,LR}
427EAA:  B.W             sub_18E9C4
