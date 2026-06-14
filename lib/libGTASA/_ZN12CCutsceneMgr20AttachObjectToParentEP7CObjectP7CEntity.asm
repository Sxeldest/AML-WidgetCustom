; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr20AttachObjectToParentEP7CObjectP7CEntity
; Address            : 0x465102 - 0x46510E
; =========================================================

465102:  LDR             R1, [R1,#0x18]
465104:  MOVS            R2, #0
465106:  LDR             R1, [R1,#4]
465108:  STRD.W          R1, R2, [R0,#0x184]
46510C:  BX              LR
