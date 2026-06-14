; =========================================================
; Game Engine Function: _ZN11CAudioZones4InitEv
; Address            : 0x3BDA0C - 0x3BDA34
; =========================================================

3BDA0C:  LDR             R0, =(_ZN11CAudioZones10m_NumBoxesE_ptr - 0x3BDA16)
3BDA0E:  LDR             R1, =(_ZN11CAudioZones16m_NumActiveBoxesE_ptr - 0x3BDA1A)
3BDA10:  LDR             R2, =(_ZN11CAudioZones12m_NumSpheresE_ptr - 0x3BDA1C)
3BDA12:  ADD             R0, PC; _ZN11CAudioZones10m_NumBoxesE_ptr
3BDA14:  LDR             R3, =(_ZN11CAudioZones18m_NumActiveSpheresE_ptr - 0x3BDA20)
3BDA16:  ADD             R1, PC; _ZN11CAudioZones16m_NumActiveBoxesE_ptr
3BDA18:  ADD             R2, PC; _ZN11CAudioZones12m_NumSpheresE_ptr
3BDA1A:  LDR             R0, [R0]; CAudioZones::m_NumBoxes ...
3BDA1C:  ADD             R3, PC; _ZN11CAudioZones18m_NumActiveSpheresE_ptr
3BDA1E:  LDR.W           R12, [R1]; CAudioZones::m_NumActiveBoxes ...
3BDA22:  LDR             R2, [R2]; CAudioZones::m_NumSpheres ...
3BDA24:  MOVS            R1, #0
3BDA26:  LDR             R3, [R3]; CAudioZones::m_NumActiveSpheres ...
3BDA28:  STR             R1, [R0]; CAudioZones::m_NumBoxes
3BDA2A:  STR             R1, [R2]; CAudioZones::m_NumSpheres
3BDA2C:  STR             R1, [R3]; CAudioZones::m_NumActiveSpheres
3BDA2E:  STR.W           R1, [R12]; CAudioZones::m_NumActiveBoxes
3BDA32:  BX              LR
