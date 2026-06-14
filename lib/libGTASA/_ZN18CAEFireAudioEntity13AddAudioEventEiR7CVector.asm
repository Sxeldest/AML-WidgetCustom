; =========================================================
; Game Engine Function: _ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector
; Address            : 0x395BA4 - 0x395BDA
; =========================================================

395BA4:  SUB.W           R3, R1, #0x8A
395BA8:  CMP             R3, #3
395BAA:  IT CC
395BAC:  BXCC            LR
395BAE:  CMP             R1, #0x89
395BB0:  BNE             loc_395BCA
395BB2:  LDR.W           R1, [R0,#0x84]
395BB6:  CBZ             R1, locret_395BD8
395BB8:  LDR             R1, [R0,#0x7C]
395BBA:  CMP             R1, #0
395BBC:  ITT EQ
395BBE:  LDREQ.W         R1, [R0,#0x80]
395BC2:  CMPEQ           R1, #0
395BC4:  BNE             locret_395BD8
395BC6:  MOVS            R1, #0x89; int
395BC8:  B               _ZN18CAEFireAudioEntity15PlayWaterSoundsEiR7CVector; CAEFireAudioEntity::PlayWaterSounds(int,CVector &)
395BCA:  LDR.W           R3, [R0,#0x84]
395BCE:  CBZ             R3, locret_395BD8
395BD0:  LDR             R3, [R0,#0x7C]
395BD2:  CMP             R3, #0
395BD4:  IT EQ
395BD6:  BEQ             _ZN18CAEFireAudioEntity14PlayFireSoundsEiR7CVector; CAEFireAudioEntity::PlayFireSounds(int,CVector &)
395BD8:  BX              LR
