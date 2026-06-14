; =========================================================
; Game Engine Function: sub_E9DFC
; Address            : 0xE9DFC - 0xE9E14
; =========================================================

E9DFC:  LDRSB.W         R0, [R0]
E9E00:  CMP             R0, #9
E9E02:  BHI             loc_E9E0E
E9E04:  LDR             R1, =(off_22A8AC - 0xE9E0A); "null" ...
E9E06:  ADD             R1, PC; off_22A8AC
E9E08:  LDR.W           R0, [R1,R0,LSL#2]
E9E0C:  BX              LR
E9E0E:  LDR             R0, =(aNumber - 0xE9E14); "number" ...
E9E10:  ADD             R0, PC; "number"
E9E12:  BX              LR
