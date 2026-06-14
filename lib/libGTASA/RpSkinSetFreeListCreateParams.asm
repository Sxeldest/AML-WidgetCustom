; =========================================================
; Game Engine Function: RpSkinSetFreeListCreateParams
; Address            : 0x1C911C - 0x1C912A
; =========================================================

1C911C:  LDR             R2, =(dword_67A1B8 - 0x1C9124)
1C911E:  LDR             R3, =(dword_67A1B4 - 0x1C9126)
1C9120:  ADD             R2, PC; dword_67A1B8
1C9122:  ADD             R3, PC; dword_67A1B4
1C9124:  STR             R1, [R2]
1C9126:  STR             R0, [R3]
1C9128:  BX              LR
