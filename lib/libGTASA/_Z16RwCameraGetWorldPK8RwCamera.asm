; =========================================================
; Game Engine Function: _Z16RwCameraGetWorldPK8RwCamera
; Address            : 0x21E068 - 0x21E074
; =========================================================

21E068:  LDR             R1, =(dword_6BD638 - 0x21E06E)
21E06A:  ADD             R1, PC; dword_6BD638
21E06C:  LDR             R1, [R1]
21E06E:  ADD             R0, R1
21E070:  LDR             R0, [R0,#0xC]
21E072:  BX              LR
