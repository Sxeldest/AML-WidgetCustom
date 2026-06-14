; =========================================================
; Game Engine Function: _Z16RwCameraGetClumpPK8RwCamera
; Address            : 0x214350 - 0x21435A
; =========================================================

214350:  LDR             R1, =(dword_6BD590 - 0x214356)
214352:  ADD             R1, PC; dword_6BD590
214354:  LDR             R1, [R1]
214356:  LDR             R0, [R0,R1]
214358:  BX              LR
