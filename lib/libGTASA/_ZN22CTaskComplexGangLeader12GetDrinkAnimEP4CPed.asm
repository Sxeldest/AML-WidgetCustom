; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader12GetDrinkAnimEP4CPed
; Address            : 0x5162C0 - 0x5162D8
; =========================================================

5162C0:  LDRSH.W         R1, [R0,#0x26]
5162C4:  MOVW            R0, #0x12D
5162C8:  CMP             R1, #0x67 ; 'g'
5162CA:  IT EQ
5162CC:  BXEQ            LR
5162CE:  CMP             R1, #0x69 ; 'i'
5162D0:  IT NE
5162D2:  MOVWNE          R0, #0x12B
5162D6:  BX              LR
