; =========================================================
; Game Engine Function: _ZN9CIplStore19AddIplsNeededAtPosnERK7CVector
; Address            : 0x281184 - 0x28119E
; =========================================================

281184:  LDR             R1, =(byte_6DFD9C - 0x28118E)
281186:  MOVS            R3, #1
281188:  LDR             R2, =(unk_6DFD90 - 0x281190)
28118A:  ADD             R1, PC; byte_6DFD9C
28118C:  ADD             R2, PC; unk_6DFD90
28118E:  STRB            R3, [R1]
281190:  VLDR            D16, [R0]
281194:  LDR             R0, [R0,#8]
281196:  STR             R0, [R2,#(dword_6DFD98 - 0x6DFD90)]
281198:  VSTR            D16, [R2]
28119C:  BX              LR
