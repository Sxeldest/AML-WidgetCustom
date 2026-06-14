; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader12GetSmokeAnimEP4CPed
; Address            : 0x5162D8 - 0x5162F0
; =========================================================

5162D8:  LDRSH.W         R1, [R0,#0x26]
5162DC:  MOV.W           R0, #0x12E
5162E0:  CMP             R1, #0x67 ; 'g'
5162E2:  IT EQ
5162E4:  BXEQ            LR
5162E6:  CMP             R1, #0x69 ; 'i'
5162E8:  IT NE
5162EA:  MOVNE.W         R0, #0x12C
5162EE:  BX              LR
