; =========================================================
; Game Engine Function: _ZN6CWorld15PrintCarChangesEv
; Address            : 0x42BACC - 0x42BB4C
; =========================================================

42BACC:  PUSH            {R4-R7,LR}
42BACE:  ADD             R7, SP, #0xC
42BAD0:  PUSH.W          {R8}
42BAD4:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x42BADA)
42BAD6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
42BAD8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
42BADA:  LDR             R0, [R0]; CPools::ms_pVehiclePool
42BADC:  LDR             R3, [R0,#8]
42BADE:  CBZ             R3, loc_42BB46
42BAE0:  MOVW            R1, #0xA2C
42BAE4:  LDR.W           R12, =(unk_98A114 - 0x42BAFA)
42BAE8:  MUL.W           R2, R3, R1
42BAEC:  LDR.W           LR, =(unk_98A114 - 0x42BAFC)
42BAF0:  LDR             R1, [R0,#4]
42BAF2:  MOVW            R8, #0xFA86
42BAF6:  ADD             R12, PC; unk_98A114
42BAF8:  ADD             LR, PC; unk_98A114
42BAFA:  MOVT            R8, #0xFFFF
42BAFE:  SUBW            R2, R2, #0x48C
42BB02:  ADDS            R5, R1, R3
42BB04:  LDRSB.W         R5, [R5,#-1]
42BB08:  CMP             R5, #0
42BB0A:  BLT             loc_42BB24
42BB0C:  LDR             R6, [R0]
42BB0E:  ADDS            R5, R6, R2
42BB10:  CMP.W           R5, #0x5A0
42BB14:  BEQ             loc_42BB24
42BB16:  LDR             R6, [R6,R2]
42BB18:  CMP             R6, #0
42BB1A:  ITE EQ
42BB1C:  LDRSHEQ.W       R5, [R5,R8]
42BB20:  MOVNE           R5, #0
42BB22:  B               loc_42BB26
42BB24:  MOVS            R5, #0
42BB26:  ADD.W           R4, R12, R3,LSL#2
42BB2A:  SUBS            R6, R3, #1
42BB2C:  SUBW            R2, R2, #0xA2C
42BB30:  LDR.W           R4, [R4,#-4]
42BB34:  CMP             R5, R4
42BB36:  ITT NE
42BB38:  ADDNE.W         R3, LR, R3,LSL#2
42BB3C:  STRNE.W         R5, [R3,#-4]
42BB40:  CMP             R6, #0
42BB42:  MOV             R3, R6
42BB44:  BNE             loc_42BB02
42BB46:  POP.W           {R8}
42BB4A:  POP             {R4-R7,PC}
