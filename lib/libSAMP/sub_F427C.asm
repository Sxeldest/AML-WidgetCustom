; =========================================================
; Game Engine Function: sub_F427C
; Address            : 0xF427C - 0xF4292
; =========================================================

F427C:  SUBS            R0, #1
F427E:  UXTB            R1, R0
F4280:  CMP             R1, #0x22 ; '"'
F4282:  ITT HI
F4284:  MOVHI           R0, #0
F4286:  BXHI            LR
F4288:  LDR             R1, =(unk_9298E - 0xF4290)
F428A:  SXTB            R0, R0
F428C:  ADD             R1, PC; unk_9298E
F428E:  LDRB            R0, [R1,R0]
F4290:  BX              LR
