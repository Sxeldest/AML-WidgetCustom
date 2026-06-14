; =========================================================
; Game Engine Function: sub_15180C
; Address            : 0x15180C - 0x15181E
; =========================================================

15180C:  LDR             R2, =(_ZTSZN14AudioChannel3D15Set3DAttributesEffiifE3$_3 - 0x151816); type descriptor name
15180E:  LDR             R3, [R1,#4]
151810:  MOVS            R1, #0
151812:  ADD             R2, PC; type descriptor name
151814:  CMP             R3, R2
151816:  IT EQ
151818:  ADDEQ           R1, R0, #4
15181A:  MOV             R0, R1
15181C:  BX              LR
