; =========================================================
; Game Engine Function: _ZN17CTaskSimpleFacial9GetAnimIdEi
; Address            : 0x540CFC - 0x540D10
; =========================================================

540CFC:  CMP             R0, #8
540CFE:  ITT HI
540D00:  MOVHI.W         R0, #0xFFFFFFFF
540D04:  BXHI            LR
540D06:  LDR             R1, =(unk_61E9B0 - 0x540D0C)
540D08:  ADD             R1, PC; unk_61E9B0
540D0A:  LDR.W           R0, [R1,R0,LSL#2]
540D0E:  BX              LR
