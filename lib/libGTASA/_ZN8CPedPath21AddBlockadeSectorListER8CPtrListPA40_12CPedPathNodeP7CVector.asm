; =========================================================
; Game Engine Function: _ZN8CPedPath21AddBlockadeSectorListER8CPtrListPA40_12CPedPathNodeP7CVector
; Address            : 0x31BE7C - 0x31BEC0
; =========================================================

31BE7C:  PUSH            {R4-R7,LR}
31BE7E:  ADD             R7, SP, #0xC
31BE80:  PUSH.W          {R8}
31BE84:  LDR             R6, [R0]
31BE86:  MOV             R8, R2
31BE88:  MOV             R5, R1
31BE8A:  CBZ             R6, loc_31BEBA
31BE8C:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x31BE92)
31BE8E:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
31BE90:  LDR             R4, [R0]; CWorld::ms_nCurrentScanCode ...
31BE92:  LDRD.W          R0, R6, [R6]
31BE96:  LDRH            R1, [R4]; CWorld::ms_nCurrentScanCode
31BE98:  LDRH            R2, [R0,#0x30]
31BE9A:  CMP             R2, R1
31BE9C:  ITT NE
31BE9E:  LDRBNE          R2, [R0,#0x1C]
31BEA0:  MOVSNE.W        R2, R2,LSL#31
31BEA4:  BNE             loc_31BEAC
31BEA6:  CMP             R6, #0
31BEA8:  BNE             loc_31BE92
31BEAA:  B               loc_31BEBA
31BEAC:  STRH            R1, [R0,#0x30]
31BEAE:  MOV             R1, R5
31BEB0:  MOV             R2, R8
31BEB2:  BLX             j__ZN8CPedPath11AddBlockadeEP7CEntityPA40_12CPedPathNodeP7CVector; CPedPath::AddBlockade(CEntity *,CPedPathNode (*)[40],CVector *)
31BEB6:  CMP             R6, #0
31BEB8:  BNE             loc_31BE92
31BEBA:  POP.W           {R8}
31BEBE:  POP             {R4-R7,PC}
