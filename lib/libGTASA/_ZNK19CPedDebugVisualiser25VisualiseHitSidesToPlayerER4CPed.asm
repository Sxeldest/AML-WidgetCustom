; =========================================================
; Game Engine Function: _ZNK19CPedDebugVisualiser25VisualiseHitSidesToPlayerER4CPed
; Address            : 0x4ACE7E - 0x4ACEBE
; =========================================================

4ACE7E:  PUSH            {R4,R6,R7,LR}
4ACE80:  ADD             R7, SP, #8
4ACE82:  SUB             SP, SP, #0x30
4ACE84:  MOV.W           R0, #0xFFFFFFFF; int
4ACE88:  MOV             R4, R1
4ACE8A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4ACE8E:  LDR.W           R1, [R4,#0x590]; CPed *
4ACE92:  CMP             R1, #0
4ACE94:  ITT NE
4ACE96:  LDRBNE.W        R2, [R4,#0x485]
4ACE9A:  MOVSNE.W        R2, R2,LSL#31; CEntity *
4ACE9E:  BNE             loc_4ACEAC
4ACEA0:  MOV             R1, R4; CPed *
4ACEA2:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
4ACEA6:  MOV             R1, SP
4ACEA8:  MOV             R0, R4
4ACEAA:  B               loc_4ACEB6
4ACEAC:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
4ACEB0:  LDR.W           R0, [R4,#0x590]; this
4ACEB4:  MOV             R1, SP; CEntity *
4ACEB6:  BLX             j__ZN20CPedGeometryAnalyser17ComputeEntityDirsERK7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityDirs(CEntity const&,CVector *)
4ACEBA:  ADD             SP, SP, #0x30 ; '0'
4ACEBC:  POP             {R4,R6,R7,PC}
