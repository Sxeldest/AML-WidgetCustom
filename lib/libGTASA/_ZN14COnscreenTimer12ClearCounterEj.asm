; =========================================================
; Game Engine Function: _ZN14COnscreenTimer12ClearCounterEj
; Address            : 0x315172 - 0x3151DC
; =========================================================

315172:  LDR             R2, [R0,#0x40]
315174:  CMP             R2, R1
315176:  BNE             loc_31518A
315178:  MOVS            R2, #0
31517A:  STRB.W          R2, [R0,#0x48]
31517E:  STRH.W          R2, [R0,#0x52]
315182:  STRB.W          R2, [R0,#0x7E]
315186:  STRD.W          R2, R2, [R0,#0x40]
31518A:  LDR.W           R2, [R0,#0x84]
31518E:  CMP             R2, R1
315190:  BNE             loc_3151A4
315192:  MOVS            R2, #0
315194:  STRB.W          R2, [R0,#0x8C]
315198:  STRH.W          R2, [R0,#0x96]
31519C:  STRB.W          R2, [R0,#0xC2]
3151A0:  STRD.W          R2, R2, [R0,#0x84]
3151A4:  LDR.W           R2, [R0,#0xC8]
3151A8:  CMP             R2, R1
3151AA:  BNE             loc_3151BE
3151AC:  MOVS            R2, #0
3151AE:  STRB.W          R2, [R0,#0xD0]
3151B2:  STRH.W          R2, [R0,#0xDA]
3151B6:  STRB.W          R2, [R0,#0x106]
3151BA:  STRD.W          R2, R2, [R0,#0xC8]
3151BE:  LDR.W           R2, [R0,#0x10C]
3151C2:  CMP             R2, R1
3151C4:  IT NE
3151C6:  BXNE            LR
3151C8:  MOVS            R1, #0
3151CA:  STRB.W          R1, [R0,#0x114]
3151CE:  STRH.W          R1, [R0,#0x11E]
3151D2:  STRB.W          R1, [R0,#0x14A]
3151D6:  STRD.W          R1, R1, [R0,#0x10C]
3151DA:  BX              LR
