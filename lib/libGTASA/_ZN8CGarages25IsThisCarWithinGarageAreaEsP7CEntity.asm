; =========================================================
; Game Engine Function: _ZN8CGarages25IsThisCarWithinGarageAreaEsP7CEntity
; Address            : 0x313A44 - 0x313A56
; =========================================================

313A44:  LDR             R2, =(_ZN8CGarages8aGaragesE_ptr - 0x313A4C)
313A46:  MOVS            R3, #0xD8
313A48:  ADD             R2, PC; _ZN8CGarages8aGaragesE_ptr
313A4A:  LDR             R2, [R2]; CGarages::aGarages ...
313A4C:  SMLABB.W        R0, R0, R3, R2; this
313A50:  MOVS            R2, #0; float
313A52:  B.W             _ZN7CGarage24IsEntityEntirelyInside3DEP7CEntityf; CGarage::IsEntityEntirelyInside3D(CEntity *,float)
