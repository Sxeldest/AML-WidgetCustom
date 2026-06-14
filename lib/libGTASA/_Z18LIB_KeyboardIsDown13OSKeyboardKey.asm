; =========================================================
; Game Engine Function: _Z18LIB_KeyboardIsDown13OSKeyboardKey
; Address            : 0x270210 - 0x270228
; =========================================================

270210:  LDR             R1, =(keys_ptr - 0x270216)
270212:  ADD             R1, PC; keys_ptr
270214:  LDR             R1, [R1]; keys
270216:  LDR.W           R0, [R1,R0,LSL#2]
27021A:  ORR.W           R1, R0, #1
27021E:  MOVS            R0, #0
270220:  CMP             R1, #3
270222:  IT EQ
270224:  MOVEQ           R0, #1
270226:  BX              LR
