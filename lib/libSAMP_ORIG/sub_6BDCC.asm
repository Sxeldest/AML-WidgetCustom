; =========================================================
; Game Engine Function: sub_6BDCC
; Address            : 0x6BDCC - 0x6BE36
; =========================================================

6BDCC:  PUSH            {R4,R6,R7,LR}
6BDCE:  ADD             R7, SP, #8
6BDD0:  LDR             R1, =(aSampOrig - 0x6BDDC); "SAMP_ORIG" ...
6BDD2:  MOV             R4, R0
6BDD4:  LDR             R2, =(aRegisterrpcsHo - 0x6BDDE); "RegisterRPCs_hook()" ...
6BDD6:  MOVS            R0, #4; prio
6BDD8:  ADD             R1, PC; "SAMP_ORIG"
6BDDA:  ADD             R2, PC; "RegisterRPCs_hook()"
6BDDC:  BLX             __android_log_print
6BDE0:  LDR             R0, =(off_1A4428 - 0x6BDE6)
6BDE2:  ADD             R0, PC; off_1A4428
6BDE4:  LDR             R1, [R0]
6BDE6:  MOV             R0, R4
6BDE8:  BLX             R1
6BDEA:  LDR             R0, =(off_114BE8 - 0x6BDF2)
6BDEC:  LDR             R1, [R4]
6BDEE:  ADD             R0, PC; off_114BE8
6BDF0:  LDR             R2, =(sub_6B978+1 - 0x6BDF8)
6BDF2:  LDR             R3, [R1,#0x5C]
6BDF4:  ADD             R2, PC; sub_6B978
6BDF6:  LDR             R1, [R0]; unk_116E44
6BDF8:  MOV             R0, R4
6BDFA:  BLX             R3
6BDFC:  LDR             R0, =(off_114BEC - 0x6BE04)
6BDFE:  LDR             R1, [R4]
6BE00:  ADD             R0, PC; off_114BEC
6BE02:  LDR             R2, =(sub_6BA00+1 - 0x6BE0A)
6BE04:  LDR             R3, [R1,#0x5C]
6BE06:  ADD             R2, PC; sub_6BA00
6BE08:  LDR             R1, [R0]; unk_116E34
6BE0A:  MOV             R0, R4
6BE0C:  BLX             R3
6BE0E:  LDR             R0, =(off_114BF0 - 0x6BE16)
6BE10:  LDR             R1, [R4]
6BE12:  ADD             R0, PC; off_114BF0
6BE14:  LDR             R2, =(sub_6BB0C+1 - 0x6BE1C)
6BE16:  LDR             R3, [R1,#0x5C]
6BE18:  ADD             R2, PC; sub_6BB0C
6BE1A:  LDR             R1, [R0]; unk_116E38
6BE1C:  MOV             R0, R4
6BE1E:  BLX             R3
6BE20:  LDR             R0, =(off_114BF4 - 0x6BE2A)
6BE22:  LDR             R3, [R4]
6BE24:  LDR             R2, =(sub_6BB40+1 - 0x6BE2E)
6BE26:  ADD             R0, PC; off_114BF4
6BE28:  LDR             R1, [R0]; unk_116E30
6BE2A:  ADD             R2, PC; sub_6BB40
6BE2C:  LDR             R3, [R3,#0x5C]
6BE2E:  MOV             R0, R4
6BE30:  POP.W           {R4,R6,R7,LR}
6BE34:  BX              R3
