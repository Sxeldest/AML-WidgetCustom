; =========================================================
; Game Engine Function: _ZN6CPlane29InitPlaneGenerationAndRemovalEv
; Address            : 0x579D2C - 0x579D4A
; =========================================================

579D2C:  LDR             R0, =(_ZN6CPlane26GenPlane_LastTimeGeneratedE_ptr - 0x579D38)
579D2E:  MOVS            R3, #0
579D30:  LDR             R1, =(_ZN6CPlane15GenPlane_StatusE_ptr - 0x579D3A)
579D32:  LDR             R2, =(_ZN6CPlane15GenPlane_ActiveE_ptr - 0x579D3C)
579D34:  ADD             R0, PC; _ZN6CPlane26GenPlane_LastTimeGeneratedE_ptr
579D36:  ADD             R1, PC; _ZN6CPlane15GenPlane_StatusE_ptr
579D38:  ADD             R2, PC; _ZN6CPlane15GenPlane_ActiveE_ptr
579D3A:  LDR             R0, [R0]; CPlane::GenPlane_LastTimeGenerated ...
579D3C:  LDR             R1, [R1]; CPlane::GenPlane_Status ...
579D3E:  LDR             R2, [R2]; CPlane::GenPlane_Active ...
579D40:  STR             R3, [R0]; CPlane::GenPlane_LastTimeGenerated
579D42:  MOVS            R0, #1
579D44:  STR             R3, [R1]; CPlane::GenPlane_Status
579D46:  STRB            R0, [R2]; CPlane::GenPlane_Active
579D48:  BX              LR
