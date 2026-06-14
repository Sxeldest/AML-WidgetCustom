; =========================================================
; Game Engine Function: _ZN13CPedModelInfo14IncrementVoiceEv
; Address            : 0x386BF8 - 0x386C30
; =========================================================

386BF8:  LDRSH.W         R1, [R0,#0x56]
386BFC:  MOVW            R2, #0xFFFF
386C00:  CMP             R1, #0
386C02:  ITT GE
386C04:  LDRSHGE.W       R3, [R0,#0x58]
386C08:  CMPGE           R3, #0
386C0A:  BLT             loc_386C2A
386C0C:  LDRH.W          R2, [R0,#0x5A]
386C10:  ADDS            R2, #1
386C12:  STRH.W          R2, [R0,#0x5A]
386C16:  SXTH            R2, R2
386C18:  CMP             R2, R3
386C1A:  BGT             loc_386C28
386C1C:  CMP             R2, R1
386C1E:  MOV             R2, R1
386C20:  IT LT
386C22:  STRHLT.W        R2, [R0,#0x5A]
386C26:  BX              LR
386C28:  MOV             R2, R1
386C2A:  STRH.W          R2, [R0,#0x5A]
386C2E:  BX              LR
