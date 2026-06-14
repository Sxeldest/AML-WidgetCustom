; =========================================================
; Game Engine Function: .datadiv_decode6702651923547208254
; Address            : 0xDC8B4 - 0xDC8CE
; =========================================================

DC8B4:  LDR             R1, =(unk_237508 - 0xDC8BC)
DC8B6:  MOVS            R0, #0
DC8B8:  ADD             R1, PC; unk_237508
DC8BA:  LDRB            R2, [R1,R0]
DC8BC:  CMP             R0, #0xD
DC8BE:  EOR.W           R2, R2, #0x56 ; 'V'
DC8C2:  STRB            R2, [R1,R0]
DC8C4:  ADD.W           R2, R0, #1
DC8C8:  MOV             R0, R2
DC8CA:  BCC             loc_DC8BA
DC8CC:  BX              LR
