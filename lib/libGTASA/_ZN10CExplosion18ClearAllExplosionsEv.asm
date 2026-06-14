; =========================================================
; Game Engine Function: _ZN10CExplosion18ClearAllExplosionsEv
; Address            : 0x5D78E4 - 0x5D7952
; =========================================================

5D78E4:  PUSH            {R4,R6,R7,LR}
5D78E6:  ADD             R7, SP, #8
5D78E8:  LDR             R1, =(dword_A84370 - 0x5D78F8)
5D78EA:  VMOV.I32        Q8, #0
5D78EE:  MOVS            R0, #0
5D78F0:  MOV.W           R12, #1
5D78F4:  ADD             R1, PC; dword_A84370
5D78F6:  MOV.W           LR, #0x3F800000
5D78FA:  MOVS            R2, #0
5D78FC:  ADDS            R3, R1, R2
5D78FE:  ADDS            R2, #0x7C ; '|'
5D7900:  ADD.W           R4, R3, #0x14
5D7904:  CMP.W           R2, #0x7C0
5D7908:  STRB.W          R0, [R3,#0x28]
5D790C:  STR             R0, [R3,#0x2C]
5D790E:  STRB.W          R12, [R3,#0x2A]
5D7912:  STRD.W          R0, R0, [R3,#0x34]
5D7916:  STR             R0, [R3,#0x3C]
5D7918:  VST1.32         {D16-D17}, [R4]
5D791C:  VST1.32         {D16-D17}, [R3]!
5D7920:  STR.W           LR, [R3]
5D7924:  STRD.W          R0, R0, [R1,#(dword_A843B0 - 0xA84370)]
5D7928:  STR             R0, [R1,#(dword_A843B8 - 0xA84370)]
5D792A:  STR             R0, [R1,#(dword_A843E0 - 0xA84370)]
5D792C:  STR             R0, [R1,#(dword_A843D4 - 0xA84370)]
5D792E:  STRD.W          R0, R0, [R1,#(dword_A84438 - 0xA84370)]
5D7932:  STR.W           R0, [R1,#(dword_A84440 - 0xA84370)]
5D7936:  STR.W           R0, [R1,#(dword_A84454 - 0xA84370)]
5D793A:  STR.W           R0, [R1,#(dword_A84460 - 0xA84370)]
5D793E:  STR.W           R0, [R1,#(dword_A844D4 - 0xA84370)]
5D7942:  STR.W           R0, [R1,#(dword_A844E0 - 0xA84370)]
5D7946:  STRD.W          R0, R0, [R1,#(dword_A844C0 - 0xA84370)]
5D794A:  STR.W           R0, [R1,#(dword_A844C8 - 0xA84370)]
5D794E:  BNE             loc_5D78FC
5D7950:  POP             {R4,R6,R7,PC}
