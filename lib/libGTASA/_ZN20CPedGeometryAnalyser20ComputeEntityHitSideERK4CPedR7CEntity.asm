; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity
; Address            : 0x4AE054 - 0x4AE064
; =========================================================

4AE054:  LDR             R3, [R0,#0x14]
4AE056:  ADD.W           R2, R3, #0x30 ; '0'
4AE05A:  CMP             R3, #0
4AE05C:  IT EQ
4AE05E:  ADDEQ           R2, R0, #4; CEntity *
4AE060:  MOV             R0, R2; this
4AE062:  B               _ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
